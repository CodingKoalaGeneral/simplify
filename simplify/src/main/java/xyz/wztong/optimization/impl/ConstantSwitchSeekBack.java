package xyz.wztong.optimization.impl;

import gnu.trove.map.TIntIntMap;
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

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class ConstantSwitchSeekBack implements Optimization.ReExecute{

    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;
    private final int seekBackLimit;

    @SuppressWarnings("unused")
    public ConstantSwitchSeekBack() {
        this.seekBackLimit = DEFAULT_SEEK_BACK_LIMIT;
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
                    Utils.print("ConstantSwitch: " + switchOp + "@" + Integer.toHexString(switchAddress) + " goes to an invalid address (position=" + Integer.toHexString(targetAddress) + ", offset=" + Integer.toHexString(targetOffset) + ")");
                    continue;
                }
                validNodesWithSwitchAddress.add(Map.entry(node, targetAddress));
            }
            NextNode:
            for (var validNodeWithSwitchAddress : validNodesWithSwitchAddress) {
                var node = validNodeWithSwitchAddress.getKey();
                var targetAddress = validNodeWithSwitchAddress.getValue();
                var seekBack = 0;
                ExecutionNode currentNode;
                ExecutionNode tempTargetNode = node;
                var constRegister = new AtomicInteger(switchRegister);
                do {
                    seekBack++;
                    if (seekBack > this.seekBackLimit) {
                        continue NextNode;
                    }
                    currentNode = tempTargetNode;
                    tempTargetNode = findConstantParent(currentNode, constRegister);
                } while (currentNode != tempTargetNode && tempTargetNode != null);
                var targetNode = tempTargetNode == null ? currentNode : tempTargetNode;
                var from = targetNode.getAddress();
                if (jumpTable.stream().anyMatch(table -> table.getKey() == from && !targetAddress.equals(table.getValue()))) {
                    Utils.print("Serious! Various position jumps from same position. This is definately a bug, currently ignoring");
                    // Instead of throwing an Exception
                    return 0;
                }
                jumpTable.add(Map.entry(from, targetAddress));
            }
        }
        // Adding instructions from bottom
        jumpTable.sort(Map.Entry.comparingByKey(Collections.reverseOrder(Integer::compareTo)));
        var impl = manipulator.getMethod().getImplementation();
        for (int i = 0; i < jumpTable.size(); i++) {
            var table = jumpTable.get(i);
            var from = table.getKey();
            var to = table.getValue();
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
            Utils.print("ConstantSwitch: " + manipulator.getOp(from) + "@" + Integer.toHexString(from) + " => " + manipulator.getOp(to) + "@" + Integer.toHexString(to));
            manipulator.addInstruction(from, gotoInstruction);
            // After inserting an instruction, all offsets need to be re-caculated
            var insertLength = gotoInstruction.getCodeUnits();
            for (int j = 0; j < jumpTable.size(); j++) {
                var impactTable = jumpTable.get(j);
                // From is always smaller than modifing instruction's position
                var impactFrom = impactTable.getKey();
                var impactTo = impactTable.getValue();
                if (impactTo > from) {
                    var newTo = impactTo + insertLength;
                    jumpTable.set(j, Map.entry(impactFrom, newTo));
                }
            }
        }
        return jumpTable.size();
    }

    /**
     * Return:
     * "ExecutionNode": If const parent find
     * "nullptr"      : If no const parent find
     * "InputNode"    : If this is the const source
     */
    private static ExecutionNode findConstantParent(ExecutionNode node, AtomicInteger constRegister) {
        var parentNode = node.getParent();
        var currentOp = node.getOp();
        if (parentNode == null) {
            return null;
        }
        var parentOp = parentNode.getOp();
        if (parentOp.getSideEffectLevel().getValue() > Utils.MAX_SIDE_EFFECT_LEVEL.getValue()) {
            // The value source from a method/instruction has side effect, cannot optimize
            return null;
        }
        if (parentOp instanceof MoveOp moveOp) {
            if (moveOp.getToRegister() != constRegister.get()) {
                // Side effect may occur
                return null;
                // No need to check if source is constant
            }
            var moveType = getMoveTypeString(moveOp);
            if (moveType.equals("REGISTER")) {
                // move(-object) current <= source
                // Set the tracking const regster to the source
                constRegister.set(moveOp.getTargetRegister());
                return parentNode;
            } else if (moveType.equals("RESULT")) {
                // move-result(-object) will handle in InvokeOp, pass its parent
                return parentNode;
            } else {
                // MoveType(EXCEPTION) will have side effects
                return null;
            }
        } else if (parentOp instanceof ConstOp constOp) {
            // const(?) current <= constVal      ----  parent op
            // unknown-instruction               ----  current op
            if (constOp.getDestRegister() == constRegister.get()) {
                return parentNode;
            } else {
                return null;
            }
        } else if (currentOp instanceof ConstOp constOp) {
            // unknown-instruction               ----  parent op
            // const(?) current <= constVal      ----  current op
            if (constOp.getDestRegister() == constRegister.get()) {
                return node;
            } else {
                // const operation on other registers, side effect may occur
                return null;
            }
        } else if (parentOp instanceof InvokeOp invokeOp) {
            var parameterRegisters = invokeOp.getParameterRegisters();
            if (parameterRegisters.length > 1) {
                // TODO: How to track if a const result comes from
                return null;
            }
            // Check current function result assignment, expected:
            // invoke-(*) L*;->*(*)*           ---- parent op
            // move-result(-object) current    ---- current op
            if (currentOp instanceof MoveOp moveOp) {
                if (!getMoveTypeString(moveOp).equals("RESULT")) {
                    return null;
                }
                if (moveOp.getToRegister() != constRegister.get()) {
                    return null;
                }
            }
            if (parameterRegisters.length == 1) {
                // The constant result comes from constant parameter
                constRegister.set(parameterRegisters[0]);
            }
            return parentNode;
        } else if (parentOp instanceof GotoOp) {
            // Goto has no side effect, all resgisters keeps the same
            return parentNode;
        } else {
            return null;
        }
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
