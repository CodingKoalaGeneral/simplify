package xyz.wztong.optimization.impl.opt;

import gnu.trove.map.TIntIntMap;
import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.SwitchOp;
import org.cf.smalivm.opcode.SwitchPayloadOp;
import org.jf.dexlib2.builder.SwitchLabelElement;
import org.jf.dexlib2.builder.instruction.BuilderSparseSwitchPayload;
import xyz.wztong.optimization.Optimization;

import java.util.ArrayList;

@SuppressWarnings("DuplicatedCode")
public class UnreachableSwitchBranch implements Optimization.ReOptimize {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var switchOpAddresses = getValidAddresses(manipulator, address -> {
            if (!manipulator.wasAddressReached(address)) {
                return false;
            }
            return manipulator.getOp(address) instanceof SwitchOp;

        });
        int replaced = 0;
        @UnsafeManipulator
        var impl = manipulator.getMethod().getImplementation();
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
            var targetKeyToOffset = getTargetKeyToOffset(switchPayloadOp);
            var keyToRemove = new ArrayList<Integer>(targetKeyToOffset.size());
            targetKeyToOffset.forEachKey(key -> {
                if (!switchRegisterValues.contains(key)) {
                    keyToRemove.add(key);
                }
                return true;
            });
            if (keyToRemove.isEmpty()) {
                continue;
            }
            var switchPayloadElement = ((BuilderSparseSwitchPayload) switchPayloadOp.getInstruction()).getSwitchElements();
            var newSwitchPayloadElement = new ArrayList<SwitchLabelElement>();
            switchPayloadElement.forEach(element -> {
                if (!keyToRemove.contains(element.getKey())) {
                    newSwitchPayloadElement.add(new SwitchLabelElement(element.getKey(), element.getTarget()));
                }
            });
            var newSwitchPayloadInstruction = new BuilderSparseSwitchPayload(newSwitchPayloadElement);
            replaced += keyToRemove.size();
            print("@" + Integer.toHexString(switchPayloadOp.getAddress()) + " <=X= " + keyToRemove);
            // Instead of using "manipulator.replaceInstruction()"
            impl.replaceInstruction(switchPayloadOp.getIndex(), newSwitchPayloadInstruction);
            manipulatorRebuildGraph(manipulator);
        }
        return replaced;
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
