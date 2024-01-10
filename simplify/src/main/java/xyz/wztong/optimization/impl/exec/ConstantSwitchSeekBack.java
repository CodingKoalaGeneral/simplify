package xyz.wztong.optimization.impl.exec;

import gnu.trove.map.TIntIntMap;
import gnu.trove.set.TIntSet;
import gnu.trove.set.hash.TIntHashSet;
import org.cf.simplify.ExecutionGraphManipulator;
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
                var constRegisters = new TIntHashSet();
                constRegisters.add(switchRegister);
                var sideEffectNodes = new LinkedList<Map.Entry<ExecutionNode, TIntSet>>();
                var currentNode = node;
                var seekBackOrTerminate = false;
                NextSeekBack:
                for (int i = 0; i < seekBackLimit; i++) {
                    var updateResult = updateParent(currentNode, constRegisters, sideEffectRegisters, sideEffectNodes);
                    if (!constRegisters.forEach(register -> !sideEffectRegisters.contains(register))) {
                        throw new IllegalStateException("Oops, hidden bug triggered");
                    }
                    switch (updateResult) {
                        case TERMINATE -> {
                            if (seekBackOrTerminate) {
                                sideEffectNodes.addFirst(Map.entry(currentNode.getParent(), new TIntHashSet(sideEffectRegisters)));
                                break NextSeekBack;
                            } else {
                                continue NextSwitch;
                            }
                        }
                        case SEEK_BACK -> currentNode = currentNode.getParent();
                        case SEEK_BACK_OR_TERMINATE -> {
                            seekBackOrTerminate = true;
                            currentNode = currentNode.getParent();
                        }
                        case UNKNOWN -> throw new IllegalStateException("Unknown structure for parent finding");
                    }
                }
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
            manipulator.addInstruction(from, gotoInstruction);
            while (!sideEffectNodes.isEmpty()) {
                var sideEffectNode = sideEffectNodes.removeLast();
                var sideEffectOp = sideEffectNode.getOp();
                var sideEffectInstruction = sideEffectOp.getInstruction();
                // NOTE: Necessary to clone an instance of BuilderInstruction
                var newSideEffectInstruction = cloneBuilderInstruction(sideEffectInstruction);
                manipulator.addInstruction(from, newSideEffectInstruction);
                insertLength += sideEffectInstruction.getCodeUnits();
            }
            // After inserting an instruction, all offsets need to be re-caculated
            int finalInsertLength = insertLength;
            positions.stream().filter(impactNode -> impactNode.to > from).forEach(impactNode -> impactNode.to += finalInsertLength);
        }
        return jumpTable.size();
    }

    private BuilderInstruction cloneBuilderInstruction(BuilderInstruction instruction) {
        try {
            BuilderInstruction newInstruction = Utils.deepClone(instruction);
            var fLocation = BuilderInstruction.class.getDeclaredField("location");
            fLocation.setAccessible(true);
            fLocation.set(newInstruction, null);
            return newInstruction;
        } catch (Exception e) {
            throw new IllegalStateException("Unable to clone builderInstruction", e);
        }
    }

    private enum ConstantParentStatus {
        TERMINATE, SEEK_BACK, UNKNOWN, SEEK_BACK_OR_TERMINATE
    }

    private static ConstantParentStatus updateParent(ExecutionNode currentNode, TIntSet constRegisters, TIntSet sideEffectRegisters, Deque<Map.Entry<ExecutionNode, TIntSet>> sideEffectNodes) {
        var parentNode = currentNode.getParent();
        var currentOp = currentNode.getOp();
        if (parentNode == null) {
            // Reaches the top
            return ConstantParentStatus.UNKNOWN;
        }
        var parentOp = parentNode.getOp();
        if (parentOp.getSideEffectLevel().getValue() > Utils.MAX_SIDE_EFFECT_LEVEL.getValue()) {
            return ConstantParentStatus.TERMINATE;
        }
        if (constRegisters.size() != 1) {
            return ConstantParentStatus.UNKNOWN;
        }

        if (parentOp instanceof GotoOp) {
            return ConstantParentStatus.SEEK_BACK;
        }
        if (parentOp instanceof ConstOp constOp) {
            var destRegister = constOp.getDestRegister();
            if (constRegisters.contains(destRegister)) {
                constRegisters.remove(destRegister);
                if (constRegisters.isEmpty()) {
                    return ConstantParentStatus.TERMINATE;
                } else {
                    // TODO
                    // sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                    return ConstantParentStatus.UNKNOWN;
                }
            } else {
                sideEffectRegisters.add(destRegister);
                sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                return ConstantParentStatus.SEEK_BACK_OR_TERMINATE;
            }
        }

        if (parentOp instanceof MoveOp moveOp) {
            var fromRegister = moveOp.getTargetRegister();
            int toRegister = moveOp.getToRegister();
            var moveType = getMoveTypeString(moveOp);
            switch (moveType) {
                case "REGISTER" -> {
                    if (constRegisters.contains(toRegister)) {
                        constRegisters.remove(toRegister);
                        constRegisters.add(fromRegister);
                        if (constRegisters.size() == 1) {
                            return ConstantParentStatus.SEEK_BACK;
                        } else {
                            return ConstantParentStatus.UNKNOWN;
                        }
                    } else {
                        sideEffectRegisters.remove(toRegister);
                        sideEffectRegisters.add(fromRegister);
                        sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                        return ConstantParentStatus.SEEK_BACK_OR_TERMINATE;
                    }
                }
                case "RESULT" -> {
                    var possibleInvokeOp = parentNode.getParent().getOp();
                    if (possibleInvokeOp instanceof InvokeOp) {
                        return ConstantParentStatus.SEEK_BACK;
                    } else {
                        return ConstantParentStatus.UNKNOWN;
                    }
                }
                case "EXCEPTION" -> {
                    // MoveType(EXCEPTION) will have side effects
                    return ConstantParentStatus.TERMINATE;
                }
                default -> throw new IllegalStateException("Unkown move type: " + moveType);
            }
        }

        // TODO
        if (parentOp instanceof InvokeOp invokeOp) {
            var parameterRegisters = invokeOp.getParameterRegisters();
            var invokeMethodState = parentNode.getContext().getMethodState();
            if (currentOp instanceof MoveOp moveOp && getMoveTypeString(moveOp).equals("RESULT")) {
                var toRegister = moveOp.getToRegister();
                var knownParameterRegisters = Arrays.stream(parameterRegisters).filter(register -> {
                    var registerHeap = invokeMethodState.peekRegister(register);
                    return registerHeap != null && registerHeap.isKnown() && registerHeap.isImmutable();
                }).toArray();
                if (constRegisters.contains(toRegister)) {
                    // invoke(*) L*;->*(*)*
                    // move-result(*) CONST
                    constRegisters.remove(toRegister);
                    if (knownParameterRegisters.length != 1) {
                        return ConstantParentStatus.UNKNOWN;
                    } else {
                        constRegisters.addAll(knownParameterRegisters);
                        return ConstantParentStatus.SEEK_BACK;
                    }
                } else {
                    // invoke(*) L*;->*(*)*
                    // move-result(*) SIDE_EFFECT
                    if (sideEffectRegisters.contains(toRegister)) {
                        sideEffectRegisters.remove(toRegister);
                    }
                    var toRegisterHeap = parentNode.getContext().getMethodState().peekRegister(toRegister);
                    if (toRegisterHeap != null && toRegisterHeap.isKnown() && toRegisterHeap.isImmutable()) {
                        sideEffectRegisters.add(toRegister);
                        return ConstantParentStatus.SEEK_BACK_OR_TERMINATE;
                    } else {
                        return ConstantParentStatus.TERMINATE;
                    }
                }
            } else {

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
