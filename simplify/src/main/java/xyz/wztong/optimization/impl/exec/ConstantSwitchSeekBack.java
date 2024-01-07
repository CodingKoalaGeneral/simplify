package xyz.wztong.optimization.impl.exec;

import gnu.trove.map.TIntIntMap;
import gnu.trove.set.TIntSet;
import gnu.trove.set.hash.TIntHashSet;
import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionContext;
import org.cf.smalivm.context.ExecutionGraph;
import org.cf.smalivm.context.ExecutionNode;
import org.cf.smalivm.opcode.*;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.builder.BuilderInstruction;
import org.jf.dexlib2.builder.instruction.BuilderInstruction10t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction20t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction30t;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

public class ConstantSwitchSeekBack implements Optimization.ReExecute{

    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;
    private final int seekBackLimit;

    @SuppressWarnings("unused")
    public ConstantSwitchSeekBack() {
        this(DEFAULT_SEEK_BACK_LIMIT);
    }

    public ConstantSwitchSeekBack(int seekBackLimit) {
        this.seekBackLimit = seekBackLimit;
    }

    private static final class JumpNode {
        private final int from;
        private int to;
        private final Deque<ExecutionNode> sideEffectNodes;

        private JumpNode(int from, int to, Deque<ExecutionNode> sideEffectNodes) {
            this.from = from;
            this.to = to;
            this.sideEffectNodes = sideEffectNodes;
        }
    }

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var jumpTable = new HashMap<Integer, JumpNode>();
        for (int address : manipulator.getAddresses()) {
            if (!manipulator.wasAddressReached(address)) {
                continue;
            }
            var op = manipulator.getOp(address);
            SwitchOp switchOp;
            if (!(op instanceof SwitchOp fSwitchOp)) {
                continue;
            } else {
                switchOp = fSwitchOp;
            }
            var switchPayloadAddr = switchOp.getChildren()[0].getCodeAddress();
            SwitchPayloadOp switchPayloadOp;
            op = manipulator.getOp(switchPayloadAddr);
            int switchAddress;
            if (!(op instanceof SwitchPayloadOp fSwitchPayloadOp)) {
                continue;
            } else {
                switchPayloadOp = fSwitchPayloadOp;
                switchAddress = switchOp.getAddress();
            }
            var targetKeyToOffset = getTargetKeyToOffset(switchPayloadOp);
            var switchRegister = getRegister(switchOp);
            var nodePile = manipulator.getNodePile(address);
            var validNodesWithSwitchAddress = new ArrayList<Map.Entry<ExecutionNode, Integer>>();
            for (var node : nodePile) {
                var switchHeap = node.getContext().getMethodState().peekRegister(switchRegister);
                if (switchHeap == null || switchHeap.isUnknown()) {
                    continue;
                }
                var switchValue = org.cf.util.Utils.getIntegerValue(switchHeap.getValue());
                if (!targetKeyToOffset.containsKey(switchValue)) {
                    continue;
                }
                var targetOffset = targetKeyToOffset.get(switchValue);
                var targetAddress = switchAddress + targetOffset;
                var targetLocation = manipulator.getLocation(targetAddress);
                if (targetLocation == null) {
                    print(switchOp + "@" + Integer.toHexString(switchAddress) + " goes to an invalid address (position=" + Integer.toHexString(targetAddress) + ", offset=" + Integer.toHexString(targetOffset) + ")");
                    continue;
                }
                validNodesWithSwitchAddress.add(Map.entry(node, targetAddress));
            }
            NextSwitch:
            for (var validNodeWithSwitchAddress : validNodesWithSwitchAddress) {
                var node = validNodeWithSwitchAddress.getKey();
                var targetAddress = validNodeWithSwitchAddress.getValue();
                var sideEffectRegisters = new TIntHashSet();
                var constRegister = new AtomicInteger(switchRegister);
                var sideEffectNodes = new LinkedList<Map.Entry<ExecutionNode, TIntSet>>();
                sideEffectNodes.addLast(Map.entry(node, new TIntHashSet(new int[]{switchRegister})));
                var currentNode = node;
                NextSeekBack:
                for (int i = 0; i < seekBackLimit; i++) {
                    var updateResult = updateParent(currentNode, constRegister, sideEffectRegisters, sideEffectNodes);
                    if (sideEffectRegisters.contains(constRegister.get())) {
                        throw new IllegalStateException("Oops, hidden bug triggered");
                    }
                    switch (updateResult) {
                        case NOT_FOUND -> {
                            continue NextSwitch;
                        }
                        case UNKNOWN -> throw new IllegalStateException("Unknown structure for parent finding");
                        case TERMINATE -> {
                            sideEffectNodes.addFirst(Map.entry(currentNode.getParent(), new TIntHashSet(sideEffectRegisters)));
                            break NextSeekBack;
                        }
                        case SEEK_BACK -> currentNode = currentNode.getParent();
                    }
                }
                sideEffectNodes.removeLast();
                if (sideEffectNodes.isEmpty()) {
                    continue;
                }
                var remainingNodes = new LinkedList<ExecutionNode>();
                do {
                    var testNode = sideEffectNodes.removeFirst();
                    var testNodeAddress = testNode.getKey().getAddress();
                    var useThisNode = testNode.getValue().forEach(register -> {
                        var consensus = manipulator.getRegisterConsensus(testNodeAddress, register);
                        return consensus != null && consensus.isKnown();
                    });
                    remainingNodes.addLast(testNode.getKey());
                    if (useThisNode) {
                        var newNode = new JumpNode(testNodeAddress + testNode.getKey().getOp().getInstruction().getCodeUnits(), targetAddress, remainingNodes);
                        var oldNode = jumpTable.put(testNodeAddress, newNode);
                        if (oldNode != null && oldNode.to != targetAddress) {
                            throw new IllegalStateException("Serious! Various position jumps from same position. This is definately a bug!");
                        }
                        break;
                    }
                } while (!sideEffectNodes.isEmpty());
            }
        }
        var positions = new ArrayList<>(jumpTable.values());
        // Adding instructions from bottom, reverse order
        positions.sort((o1, o2) -> Integer.compare(o2.from, o1.from));
        @UnsafeManipulator
        var impl = manipulator.getMethod().getImplementation();
        for (var node : positions) {
            var from = node.from;
            var to = node.to;
            var sideEffectNodes = node.sideEffectNodes;
            var toLabel = impl.newLabelForAddress(to);
            BuilderInstruction gotoInstruction;
            var offsetAbs = Math.abs(to - from);
            if (offsetAbs < 0x7f) {
                gotoInstruction = new BuilderInstruction10t(Opcode.GOTO, toLabel);
            } else if (offsetAbs < 0x7fff) {
                gotoInstruction = new BuilderInstruction20t(Opcode.GOTO_16, toLabel);
            } else {
                gotoInstruction = new BuilderInstruction30t(Opcode.GOTO_32, toLabel);
            }
            print(manipulator.getOp(from) + "@" + Integer.toHexString(from) + " => " + manipulator.getOp(to) + "@" + Integer.toHexString(to));
            var insertLength = 0;
            while (!sideEffectNodes.isEmpty()) {
                var sideEffectNode = sideEffectNodes.removeFirst();
                var sideEffectOp = sideEffectNode.getOp();
                var sideEffectInstruction = sideEffectOp.getInstruction();
                // NOTE: Necessary to clone an instance of BuilderInstruction
                var newSideEffectInstruction = cloneBuilderInstruction(manipulator, sideEffectInstruction);
                manipulator.addInstruction(from + insertLength, newSideEffectInstruction);
                insertLength += sideEffectInstruction.getCodeUnits();
            }
            manipulator.addInstruction(from + insertLength, gotoInstruction);
            // After inserting an instruction, all offsets need to be re-caculated
            int finalInsertLength = insertLength;
            positions.stream().filter(impactNode -> impactNode.to > from).forEach(impactNode -> impactNode.to += finalInsertLength);
        }
        return jumpTable.size();
    }

    private BuilderInstruction cloneBuilderInstruction(ExecutionGraph graph, BuilderInstruction instruction) {
        try {
            var node = graph.getNodePile(graph.getAddresses()[0]).get(0);
            var fHeap = ExecutionContext.class.getDeclaredField("heap");
            fHeap.setAccessible(true);
            var heap = fHeap.get(Objects.requireNonNull(node).getContext());
            var cHeap = Class.forName("org.cf.smalivm.context.Heap");
            var fCloner = cHeap.getDeclaredField("cloner");
            fCloner.setAccessible(true);
            var cloner = fCloner.get(heap);
            var cCloner = Class.forName("com.rits.cloning.Cloner");
            var mDeepClone = cCloner.getDeclaredMethod("deepClone", Object.class);
            var newInstruction = (BuilderInstruction) mDeepClone.invoke(cloner, instruction);
            var fLocation = BuilderInstruction.class.getDeclaredField("location");
            fLocation.setAccessible(true);
            fLocation.set(newInstruction, null);
            return newInstruction;
        } catch (Exception e) {
            throw new IllegalStateException("Unable to clone builderInstruction", e);
        }
    }

    private enum ConstantParentStatus {
        TERMINATE, SEEK_BACK, NOT_FOUND, UNKNOWN
    }

    private static ConstantParentStatus updateParent(ExecutionNode currentNode, AtomicInteger constRegister, TIntSet sideEffectRegisters, Deque<Map.Entry<ExecutionNode, TIntSet>> sideEffectNodes) {
        var parentNode = currentNode.getParent();
        var currentOp = currentNode.getOp();
        if (parentNode == null) {
            // Reaches the top
            return ConstantParentStatus.UNKNOWN;
        }
        var parentOp = parentNode.getOp();
        if (parentOp.getSideEffectLevel().getValue() > Utils.MAX_SIDE_EFFECT_LEVEL.getValue()) {
            return ConstantParentStatus.NOT_FOUND;
        }
        if (parentOp instanceof GotoOp) {
            return ConstantParentStatus.SEEK_BACK;
        }
        if (parentOp instanceof ConstOp constOp) {
            var destRegister = constOp.getDestRegister();
            if (constRegister.get() == destRegister) {
                return ConstantParentStatus.TERMINATE;
            } else if (sideEffectRegisters.contains(destRegister)) {
                sideEffectRegisters.remove(destRegister);
                return ConstantParentStatus.SEEK_BACK;
            } else {
                sideEffectRegisters.add(destRegister);
                sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                return ConstantParentStatus.SEEK_BACK;
            }
        }

        // TODO
        if (parentOp instanceof InvokeOp invokeOp) {
            // If there is a move-result(-object) call, the invoke result is ensured to be constant, but sideEffectRegisters should be updated
            if (currentOp instanceof MoveOp moveOp && getMoveTypeString(moveOp).equals("RESULT")) {
                sideEffectRegisters.remove(moveOp.getToRegister());
            }
            // If there is not a move-result(-object) call, the invoke is ensured have side effect low enough
            var parameterRegisters = invokeOp.getParameterRegisters();
            var mState = parentNode.getContext().getMethodState();
            var parameterHeaps = Arrays.stream(parameterRegisters).mapToObj(mState::peekRegister).filter(Objects::nonNull).filter(heap -> heap.isKnown() && heap.isImmutable()).toList();
            if (parameterHeaps.size() != parameterRegisters.length) {
                // Stop here without update reference
                return ConstantParentStatus.TERMINATE;
            }
            return ConstantParentStatus.SEEK_BACK;
        }
        // TODO
        if (parentOp instanceof MoveOp moveOp) {
            var fromRegister = moveOp.getTargetRegister();
            int toRegister = moveOp.getToRegister();
            var moveType = getMoveTypeString(moveOp);
            switch (moveType) {
                case "EXCEPTION" -> {
                    // MoveType(EXCEPTION) will have side effects
                    return ConstantParentStatus.NOT_FOUND;
                }
                case "REGISTER" -> {
                    if (sideEffectRegisters.contains(toRegister)) {
                        // move(-object) const-to, from
                        // Set the tracking const regster to the source
                        // NOTE: No need to check if source is constant
                        sideEffectRegisters.add(moveOp.getTargetRegister());
                        sideEffectRegisters.remove(toRegister);
                        return ConstantParentStatus.SEEK_BACK;
                    } else {
                        // move(-object) to, from
                        var parentTo = parentNode.getContext().getMethodState().peekRegister(toRegister);
                        if (parentTo == null) {
                            return ConstantParentStatus.UNKNOWN;
                        }
                        // We passed a register sign which can cause side effects
                        if (parentTo.isKnown()) {
                            sideEffectRegisters.add(fromRegister);
                            return ConstantParentStatus.SEEK_BACK;
                        } else {
                            // Should stop here
                            sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                            return ConstantParentStatus.TERMINATE;
                        }
                    }
                }
                case "RESULT" -> {
                    var possibleInvokeOp = parentNode.getParent().getOp();
                    if (!(possibleInvokeOp instanceof InvokeOp)) {
                        return ConstantParentStatus.UNKNOWN;
                    }
                    if (constRegister.get() == toRegister) {
                        return ConstantParentStatus.SEEK_BACK;
                    }
                    if (sideEffectRegisters.contains(toRegister)) {
                        // move-result(-object) will handle in InvokeOp, check and pass to its parent
                        return ConstantParentStatus.SEEK_BACK;
                    } else {
                        return ConstantParentStatus.TERMINATE;
                    }
                }
            }
        }
        // else if (parentOp instanceof IfOp) {} // Note: If with constant switch should have been optimized
        return ConstantParentStatus.UNKNOWN; // Unhandled op type
    }

    private static int getRegister(SwitchOp switchOp) {
        try {
            var fRegister = SwitchOp.class.getDeclaredField("register");
            fRegister.setAccessible(true);
            return (int) fRegister.get(switchOp);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("SwichOp without register field?", e);
        }
    }

    private static TIntIntMap getTargetKeyToOffset(SwitchPayloadOp switchPayloadOp) {
        try {
            var fTargetKeyToOffset = SwitchPayloadOp.class.getDeclaredField("targetKeyToOffset");
            fTargetKeyToOffset.setAccessible(true);
            return (TIntIntMap) fTargetKeyToOffset.get(switchPayloadOp);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("SwitchPayloadOp without targetKeyToOffset field?", e);
        }
    }

    private static String getMoveTypeString(MoveOp moveOp) {
        try {
            var fMoveType = MoveOp.class.getDeclaredField("moveType");
            fMoveType.setAccessible(true);
            return ((Enum<?>) fMoveType.get(moveOp)).name();
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("MoveOp without moveType field?", e);
        }
    }
}
