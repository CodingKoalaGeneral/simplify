package xyz.wztong.optimization.impl.exec;

import gnu.trove.map.TIntIntMap;
import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.GotoOp;
import org.cf.smalivm.opcode.SwitchOp;
import org.cf.smalivm.opcode.SwitchPayloadOp;
import org.jf.dexlib2.builder.SwitchLabelElement;
import org.jf.dexlib2.builder.instruction.BuilderSparseSwitchPayload;
import xyz.wztong.optimization.Optimization;

import java.util.ArrayList;
import java.util.HashMap;

@SuppressWarnings("DuplicatedCode")
public class SwitchThenGoto implements Optimization.ReExecute {

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var switchOpAddresses = getValidAddresses(manipulator, address -> {
            if (!manipulator.wasAddressReached(address)) {
                return false;
            }
            return manipulator.getOp(address) instanceof SwitchOp;
        });
        int result = 0;
        NextSwitchOpAddress:
        for (int switchOpAddress : switchOpAddresses) {
            var switchOp = (SwitchOp) manipulator.getOp(switchOpAddress);
            if (switchOp == null) {
                continue;
            }
            var switchRegister = getRegister(switchOp);
            var switchRegisterHeaps = manipulator.getRegisterItems(switchOpAddress, switchRegister);
            var switchRegisterValues = new ArrayList<Integer>(switchRegisterHeaps.size());
            for (var switchRegisterHeap : switchRegisterHeaps) {
                if (switchRegisterHeap.isUnknown()) {
                    continue NextSwitchOpAddress;
                } else {
                    switchRegisterValues.add(org.cf.util.Utils.getIntegerValue(switchRegisterHeap.getValue()));
                }
            }
            var switchPayloadAddr = switchOp.getChildren()[0].getCodeAddress();
            SwitchPayloadOp switchPayloadOp;
            var op = manipulator.getOp(switchPayloadAddr);
            if (!(op instanceof SwitchPayloadOp fSwitchPayloadOp)) {
                continue;
            } else {
                switchPayloadOp = fSwitchPayloadOp;
            }
            var targetKeyToAddress = getTargetKeyToOffset(switchPayloadOp);
            targetKeyToAddress.transformValues(offset -> switchOpAddress + offset);
            var replace = new HashMap<Integer, Integer>();
            targetKeyToAddress.forEachEntry((key, address) -> {
                if (switchRegisterValues.contains(key)) {
                    var targetOp = manipulator.getOp(address);
                    if (targetOp instanceof GotoOp gotoOp) {
                        // Multiple goto should be properly handled before, using MergeMultipleGoto
                        var gotoAddress = gotoOp.getChildren()[0].getCodeAddress();
                        replace.put(address, gotoAddress);
                    }
                }
                return true;
            });
            if (replace.isEmpty()) {
                continue;
            }
            var switchPayloadElement = ((BuilderSparseSwitchPayload) switchPayloadOp.getInstruction()).getSwitchElements();
            var newSwitchPayloadElement = new ArrayList<SwitchLabelElement>();
            var impl = manipulator.getMethod().getImplementation();
            switchPayloadElement.forEach(element -> {
                var targetAddress = element.getTarget().getCodeAddress();
                var key = element.getKey();
                if (replace.containsKey(targetAddress)) {
                    var replacedTargetAddress = replace.get(targetAddress);
                    print("@" + Integer.toHexString(switchPayloadOp.getAddress()) + " " + targetAddress + " => " + replacedTargetAddress);
                    newSwitchPayloadElement.add(new SwitchLabelElement(key, impl.newLabelForAddress(replacedTargetAddress)));
                } else {
                    newSwitchPayloadElement.add(new SwitchLabelElement(key, element.getTarget()));
                }
            });
            var newSwitchPayloadInstruction = new BuilderSparseSwitchPayload(newSwitchPayloadElement);
            result += replace.size();
            impl.replaceInstruction(switchPayloadOp.getIndex(), newSwitchPayloadInstruction);
        }
        return result;
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
}
