package xyz.wztong.optimization.impl.exec;

import gnu.trove.map.TIntIntMap;
import gnu.trove.set.TIntSet;
import gnu.trove.set.hash.TIntHashSet;
import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionNode;
import org.cf.smalivm.opcode.*;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.builder.BuilderInstruction;
import org.jf.dexlib2.builder.BuilderOffsetInstruction;
import org.jf.dexlib2.builder.MutableMethodImplementation;
import org.jf.dexlib2.builder.instruction.BuilderInstruction10t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction20t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction30t;
import xyz.wztong.utils.Utils;
import xyz.wztong.optimization.Optimization;
import xyz.wztong.utils.ReflectUtils;

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
        private final LinkedList<ExecutionNode> sideEffectNodes;
        private final BuilderOffsetInstruction to;

        private JumpNode(MutableMethodImplementation impl, int from, int to, LinkedList<ExecutionNode> sideEffectNodes) {
            this.from = from;
            BuilderOffsetInstruction gotoInstruction;
            var toLabel = impl.newLabelForAddress(to);
            var offsetAbs = Math.abs(to - from);
            if (offsetAbs < 0x7f) {
                gotoInstruction = new BuilderInstruction10t(Opcode.GOTO, toLabel);
            } else if (offsetAbs < 0x7fff) {
                gotoInstruction = new BuilderInstruction20t(Opcode.GOTO_16, toLabel);
            } else {
                gotoInstruction = new BuilderInstruction30t(Opcode.GOTO_32, toLabel);
            }
            this.to = gotoInstruction;
            this.sideEffectNodes = sideEffectNodes;
        }
    }

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var jumpTable = new HashMap<Integer, JumpNode>();
        var impl = manipulator.getMethod().getImplementation();
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
            for (var validNodeWithSwitchAddress : validNodesWithSwitchAddress) {
                var node = validNodeWithSwitchAddress.getKey();
                var targetAddress = validNodeWithSwitchAddress.getValue();
                var sideEffectRegisters = new TIntHashSet();
                var constRegisters = new TIntHashSet();
                constRegisters.add(switchRegister);
                var sideEffectNodes = new LinkedList<Map.Entry<ExecutionNode, TIntSet>>();
                var currentNode = node;
                NextSeekBack:
                for (int i = 0; i < seekBackLimit; i++) {
                    var updateResult = updateParent(currentNode, constRegisters, sideEffectRegisters, sideEffectNodes);
                    if (sideEffectRegisters.removeAll(constRegisters)) {
                        print("Overlapped register: " + constRegisters + " <=> " + sideEffectRegisters + " @" + currentNode.getOp());
                    }
                    switch (updateResult) {
                        case TERMINATE -> {
                            sideEffectNodes.addFirst(Map.entry(currentNode.getParent(), new TIntHashSet(sideEffectRegisters)));
                            break NextSeekBack;
                        }
                        case SEEK_BACK -> currentNode = currentNode.getParent();
                        default -> throw new IllegalStateException(updateResult.name() + " in parent finding");
                    }
                }
                // System.out.println(sideEffectNodes.stream().map(pair -> pair.getKey().getOp().toString()).collect(Collectors.joining("\n")).concat("\n"));
                for (var testNode : sideEffectNodes) {
                    var testNodeAddress = testNode.getKey().getAddress();
                    var useThisNode = testNode.getValue().forEach(register -> {
                        var consensus = manipulator.getRegisterConsensus(testNodeAddress, register);
                        return consensus != null && !Optimization.isUnknownValue(consensus);
                    });
                    if (useThisNode) {
                        var sideEffectNodesMapped = new LinkedList<ExecutionNode>();
                        sideEffectNodes.forEach(sideEffectNode -> sideEffectNodesMapped.addLast(sideEffectNode.getKey()));
                        var newNode = new JumpNode(impl, testNodeAddress + testNode.getKey().getOp().getInstruction().getCodeUnits(), targetAddress, sideEffectNodesMapped);
                        var oldNode = jumpTable.put(testNodeAddress, newNode);
                        if (oldNode != null) {
                            throw new IllegalStateException("Serious! Various position jumps from same position. This is definately a bug!");
                        }
                        break; // break nextSideEffectNodes;
                    }
                }
                // continue NextSwitch;
            }
        }
        var positions = new ArrayList<>(jumpTable.values());
        // Adding instructions from bottom, reverse order
        positions.sort((o1, o2) -> Integer.compare(o2.from, o1.from));
        for (var node : positions) {
            var from = node.from;
            manipulator.addInstruction(from, node.to);
            node.sideEffectNodes.descendingIterator().forEachRemaining(sideEffectNode -> manipulator.addInstruction(from, cloneBuilderInstruction(sideEffectNode.getOp().getInstruction())));
        }
        return jumpTable.size();
    }

    private BuilderInstruction cloneBuilderInstruction(BuilderInstruction instruction) {
        try {
            BuilderInstruction newInstruction = ReflectUtils.shallowClone(instruction);
            var fLocation = BuilderInstruction.class.getDeclaredField("location");
            fLocation.setAccessible(true);
            fLocation.set(newInstruction, null);
            return newInstruction;
        } catch (Exception e) {
            throw new IllegalStateException("Unable to clone builderInstruction", e);
        }
    }

    private enum ConstantParentStatus {
        TERMINATE, SEEK_BACK, UNKNOWN, NOT_IMPLEMENTED
    }

    private static ConstantParentStatus updateParent(ExecutionNode currentNode, TIntSet constRegisters, TIntSet sideEffectRegisters, Deque<Map.Entry<ExecutionNode, TIntSet>> sideEffectNodes) {
        var parentNode = currentNode.getParent();
        var currentOp = currentNode.getOp();
        if (parentNode == null) {
            return ConstantParentStatus.TERMINATE;
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
                    return ConstantParentStatus.NOT_IMPLEMENTED;
                }
            } else {
                sideEffectRegisters.add(destRegister);
                sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                return ConstantParentStatus.SEEK_BACK;
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
                            return ConstantParentStatus.NOT_IMPLEMENTED;
                        }
                    } else {
                        sideEffectRegisters.remove(toRegister);
                        sideEffectRegisters.add(fromRegister);
                        sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                        return ConstantParentStatus.SEEK_BACK;
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

        if (parentOp instanceof InvokeOp invokeOp) {
            if (!invokeOp.getMethod().isStatic()) {
                return ConstantParentStatus.NOT_IMPLEMENTED;
            }
            var parameterRegisters = invokeOp.getParameterRegisters();
            var beforeInvokeMethodState = parentNode.getParent().getContext().getMethodState();
            var knownParameterRegisters = Arrays.stream(parameterRegisters).filter(register -> {
                var registerHeap = beforeInvokeMethodState.peekRegister(register);
                return registerHeap != null && registerHeap.isKnown() && registerHeap.isImmutable();
            }).toArray();
            if (currentOp instanceof MoveOp moveOp && getMoveTypeString(moveOp).equals("RESULT")) {
                var toRegister = moveOp.getToRegister();
                if (constRegisters.contains(toRegister)) {
                    // invoke(*) L*;->*(*)*
                    // move-result(*) CONST
                    constRegisters.remove(toRegister);
                    constRegisters.addAll(knownParameterRegisters);
                    if (knownParameterRegisters.length != 1) {
                        return ConstantParentStatus.NOT_IMPLEMENTED;
                    } else {
                        return ConstantParentStatus.SEEK_BACK;
                    }
                } else {
                    // invoke(*) L*;->*(*)*
                    // move-result(*) SIDE_EFFECT
                    sideEffectRegisters.remove(toRegister);
                    var toRegisterHeap = beforeInvokeMethodState.peekRegister(toRegister);
                    if (Optimization.isUnknownValue(toRegisterHeap) || !toRegisterHeap.isImmutable()) {
                        return ConstantParentStatus.TERMINATE;
                    }
                    sideEffectRegisters.addAll(knownParameterRegisters);
                    if (knownParameterRegisters.length != 1) {
                        return ConstantParentStatus.NOT_IMPLEMENTED;
                    } else {
                        sideEffectRegisters.add(toRegister);
                        sideEffectNodes.addFirst(Map.entry(parentNode, new TIntHashSet(sideEffectRegisters)));
                        return ConstantParentStatus.SEEK_BACK;
                    }
                }
            } else {
                // invoke(*) L*;->*(*)*
                // [X] move-result(*) [X]
                return ConstantParentStatus.NOT_IMPLEMENTED;
            }
        }
        // else if (parentOp instanceof IfOp) {} // Note: If with constant switch should have been optimized
        return ConstantParentStatus.NOT_IMPLEMENTED;
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
