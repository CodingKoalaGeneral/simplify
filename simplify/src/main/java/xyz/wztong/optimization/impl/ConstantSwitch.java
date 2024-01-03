package xyz.wztong.optimization.impl;

import gnu.trove.map.TIntIntMap;
import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionNode;
import org.cf.smalivm.opcode.InvokeOp;
import org.cf.smalivm.opcode.MoveOp;
import org.cf.smalivm.opcode.SwitchOp;
import org.cf.smalivm.opcode.SwitchPayloadOp;
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
import java.util.Objects;
import java.util.stream.IntStream;

public class ConstantSwitch implements Optimization {

    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;
    private final int seekBackLimit;

    @SuppressWarnings("unused")
    public ConstantSwitch() {
        this.seekBackLimit = DEFAULT_SEEK_BACK_LIMIT;
    }

    public ConstantSwitch(int seekBackLimit) {
        this.seekBackLimit = seekBackLimit;
    }

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var jumpTable = new ArrayList<Map.Entry<Integer, Integer>>();
        IntStream.of(manipulator.getAddresses()).forEach(address -> {
            if (!manipulator.wasAddressReached(address)) {
                return;
            }
            var op = manipulator.getOp(address);
            SwitchOp switchOp;
            if (!(op instanceof SwitchOp fSwitchOp)) {
                return;
            } else {
                switchOp = fSwitchOp;
            }
            var switchPayloadAddr = switchOp.getChildren()[0].getCodeAddress();
            SwitchPayloadOp switchPayloadOp;
            op = manipulator.getOp(switchPayloadAddr);
            int switchAddress;
            if (!(op instanceof SwitchPayloadOp fSwitchPayloadOp)) {
                return;
            } else {
                switchPayloadOp = fSwitchPayloadOp;
                switchAddress = switchOp.getAddress();
            }
            var targetKeyToOffset = getTargetKeyToOffset(switchPayloadOp);
            var register = getRegister(switchOp);
            var nodePile = manipulator.getNodePile(address);
            var validNodesWithSwitchTargets = nodePile.stream().map(node -> {
                var switchHeap = node.getContext().getMethodState().peekRegister(register);
                if (switchHeap == null || switchHeap.isUnknown()) {
                    return null;
                }
                var switchValue = org.cf.util.Utils.getIntegerValue(switchHeap.getValue());
                if (!targetKeyToOffset.containsKey(switchValue)) {
                    return null;
                }
                // Node(switchValue -> offset)
                return Map.entry(node, Map.entry(switchValue, targetKeyToOffset.get(switchValue)));
            }).filter(Objects::nonNull).toList();
            for (var validNodesWithSwitchTarget : validNodesWithSwitchTargets) {
                var currentNode = validNodesWithSwitchTarget.getKey();
                ExecutionNode parentNode;
                var trackingRegister = register;
                var seekBackCount = 0;
                do {
                    var currentOp = currentNode.getOp();
                    parentNode = currentNode.getParent();
                    // Reach the start currentNode rather than currentNode gives value
                    if (parentNode == null) {
                        break;
                    }
                    seekBackCount++;
                    var parentOp = parentNode.getOp();
                    if (parentOp.getSideEffectLevel().getValue() > Utils.MAX_SIDE_EFFECT_LEVEL.getValue()) {
                        // The value source from a method/instruction has side effect, cannot optimize
                        break;
                    }
                    if (parentOp instanceof MoveOp moveOp) {
                        if (moveOp.getTargetRegister() == trackingRegister) {
                            var moveTypeString = getMoveTypeString(moveOp);
                            if (moveTypeString.equals("REGISTER")) {
                                trackingRegister = moveOp.getToRegister();
                                var beforeTrackHeap = currentNode.getContext().getMethodState().peekRegister(trackingRegister);
                                if (beforeTrackHeap == null || beforeTrackHeap.isUnknown()) {
                                    // This should not happen
                                    break;
                                }
                            } else if (moveTypeString.equals("EXCEPTION")) {
                                break;
                            }
                        }
                    } else if (parentOp instanceof InvokeOp invokeOp) {
                        // TODO: Handle multiple parameter invoke
                        var parameterRegisters = invokeOp.getParameterRegisters();
                        if (parameterRegisters.length > 1) {
                            break;
                        }

                        if (parameterRegisters.length == 1) {
                            if (currentOp instanceof MoveOp moveOp && getMoveTypeString(moveOp).equals("RESULT") && moveOp.getToRegister() == trackingRegister) {
                                trackingRegister = parameterRegisters[0];
                            }
                            var beforeTrackHeap = currentNode.getContext().getMethodState().peekRegister(trackingRegister);
                            if (beforeTrackHeap == null || beforeTrackHeap.isUnknown()) {
                                // This should not happen
                                break;
                            }
                        }
                    }
                    currentNode = parentNode;
                } while (seekBackCount <= this.seekBackLimit);
                if (seekBackCount > this.seekBackLimit) {
                    Utils.print("ConstantSwitch: Max seek back reached until => " + currentNode.getOp());
                }
                if (parentNode == null) {
                    continue;
                }
                var switchTargets = validNodesWithSwitchTarget.getValue();
                var from = currentNode.getAddress();
                var switchOffset = switchTargets.getValue();
                var to = switchAddress + switchOffset;
                var toLocation = manipulator.getLocation(to);
                if (toLocation == null) {
                    Utils.print("ConstantSwitch: " + currentNode.getOp() + "@" + currentNode.getAddress() + " goes to an invalid address (@" + Integer.toHexString(to) + "=@" + Integer.toHexString(switchAddress) + "+@" + Integer.toHexString(switchOffset) + ")");
                    continue;
                }
                var toOp = manipulator.getOp(to);
                if (toOp == null) {
                    Utils.print("ConstantSwitch: " + currentNode.getOp() + "@" + currentNode.getAddress() + " goes to an invalid address (@" + Integer.toHexString(to) + "=@" + Integer.toHexString(switchAddress) + "+@" + Integer.toHexString(switchOffset) + ")");
                    continue;
                }
                Utils.print("ConstantSwitch: " + currentNode.getOp() + "@" + currentNode.getAddress() + " => " + toOp + "@" + Integer.toHexString(to));
                jumpTable.add(Map.entry(from, to));
            }
        });
        jumpTable.sort(Map.Entry.comparingByKey(Collections.reverseOrder(Integer::compareTo)));
        var impl = manipulator.getMethod().getImplementation();
        jumpTable.forEach(table -> {
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
            manipulator.addInstruction(from, gotoInstruction);
        });
        return jumpTable.size();
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
