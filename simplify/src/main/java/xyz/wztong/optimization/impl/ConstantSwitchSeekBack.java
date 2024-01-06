package xyz.wztong.optimization.impl;

import gnu.trove.map.TIntIntMap;
import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionNode;
import org.cf.smalivm.opcode.*;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

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

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var jumpTable = new ArrayList<Map.Entry<Integer, Integer>>();
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
            // Node(switchValue -> offset)
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
            NextNode:
            for (var validNodeWithSwitchAddress : validNodesWithSwitchAddress) {
                var node = validNodeWithSwitchAddress.getKey();
                var targetAddress = validNodeWithSwitchAddress.getValue();
                var aNode = new AtomicReference<>(node);
                var constRegister = new AtomicInteger(switchRegister);
                var affectedRegisters = new ArrayList<Integer>();
                ExecutionNode parentNode = null;
                NextSeekBack:
                for (int i = 0; i < seekBackLimit; i++) {
                    var updateResult = updateParent(aNode, constRegister, affectedRegisters);
                    switch (updateResult) {
                        case NOT_FOUND -> {
                            continue NextNode;
                        }
                        case SEEK_BACK -> {
                            // continue NextSeekBack;
                        }
                        case SIDE_EFFECT -> {
                            throw new RuntimeException("AAA");
                        }
                        case CONST_SOURCE -> {
                            parentNode = aNode.get();
                            break NextSeekBack;
                        }
                    }
                }
                if (parentNode == null) {
                    continue;
                }
                var from = parentNode.getAddress();
                if (jumpTable.stream().anyMatch(table -> table.getKey() == from && !targetAddress.equals(table.getValue()))) {
                    throw new IllegalStateException("Serious! Various position jumps from same position. This is definately a bug!");
                }
                jumpTable.add(Map.entry(from, targetAddress));
            }
        }
        // Adding instructions from bottom
        Utils.addGotos(this, manipulator, jumpTable);
        return jumpTable.size();
    }

    private enum ConstantParentStatus {
        CONST_SOURCE, SEEK_BACK, SIDE_EFFECT, NOT_FOUND
    }

    /**
     * Return:
     * "ExecutionNode": If const parent find
     * "nullptr"      : If no const parent find
     * "InputNode"    : If this is the const source
     */
    private static ConstantParentStatus updateParent(AtomicReference<ExecutionNode> node, AtomicInteger constRegister, List<Integer> affectedRegisters) {
        var currentNode = node.get();
        var parentNode = currentNode.getParent();
        var currentOp = currentNode.getOp();
        if (parentNode == null) {
            return ConstantParentStatus.NOT_FOUND;
        }
        var parentOp = parentNode.getOp();
        if (parentOp.getSideEffectLevel().getValue() > Utils.MAX_SIDE_EFFECT_LEVEL.getValue()) {
            // The value source from a method/instruction has side effect, cannot optimize
            return ConstantParentStatus.NOT_FOUND;
        }
        if (parentOp instanceof ConstOp constOp) {
            // const(?) current <= constVal      ----  parent op
            // unknown-instruction               ----  current op
            if (constOp.getDestRegister() == constRegister.get()) {
                // Prevent searching deeper
                node.set(parentNode);
                return ConstantParentStatus.CONST_SOURCE;
            } else {
                // TODO: Side effect may occur when seek back deeper, but it's safe here?
                return ConstantParentStatus.NOT_FOUND;
            }
        } else if (parentOp instanceof MoveOp moveOp) {
            if (moveOp.getToRegister() != constRegister.get()) {
                // Side effect may occur
                return ConstantParentStatus.NOT_FOUND;
                // No need to check if source is constant
            }
            var moveType = getMoveTypeString(moveOp);
            if (moveType.equals("REGISTER")) {
                // move(-object) current <= source
                // Set the tracking const regster to the source
                constRegister.set(moveOp.getTargetRegister());
                node.set(parentNode);
                return ConstantParentStatus.SEEK_BACK;
            } else if (moveType.equals("RESULT")) {
                // move-result(-object) will handle in InvokeOp, check and pass to its parent
                var possibleInvokeOp = parentNode.getParent().getOp();
                if (possibleInvokeOp instanceof InvokeOp) {
                    node.set(parentNode);
                    return ConstantParentStatus.SEEK_BACK;
                }
            } else {
                // MoveType(EXCEPTION) will have side effects
                return ConstantParentStatus.NOT_FOUND;
            }
        } else if (parentOp instanceof InvokeOp invokeOp) {
            var parameterRegisters = invokeOp.getParameterRegisters();
            if (parameterRegisters.length > 1) {
                // TODO: How to track if a const result comes from multiple source?
                // Current: We may stop here?
                Utils.print("Unresolved case!!");
                Utils.print("Unresolved case!!");
                Utils.print("Unresolved case!!");
                Utils.threadSleep(10000);
                node.set(currentNode);
                return ConstantParentStatus.CONST_SOURCE;
            }
            // Check current function result assignment, expected:
            // invoke-(*) L*;->*(*)*           ---- parent op
            // move-result(-object) current    ---- current op
            if (currentOp instanceof MoveOp moveOp) {
                if (!getMoveTypeString(moveOp).equals("RESULT")) {
                    return ConstantParentStatus.NOT_FOUND;
                }
                if (moveOp.getToRegister() != constRegister.get()) {
                    return ConstantParentStatus.NOT_FOUND;
                }
            }
            if (parameterRegisters.length == 1) {
                // The constant result comes from constant parameter
                constRegister.set(parameterRegisters[0]);
            }
            node.set(parentNode);
            return ConstantParentStatus.SEEK_BACK;
        } else if (parentOp instanceof GotoOp) {
            // Goto has no side effect, all resgisters keeps the same
            node.set(parentNode);
            return ConstantParentStatus.SEEK_BACK;
        }
        // else if (parentOp instanceof IfOp)
        // Note: If with constant switch should have been optimized
        return ConstantParentStatus.NOT_FOUND;
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
