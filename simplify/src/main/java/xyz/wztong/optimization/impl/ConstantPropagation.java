package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.HeapItem;
import org.jf.dexlib2.builder.BuilderInstruction;
import org.jf.dexlib2.iface.instruction.OneRegisterInstruction;
import xyz.wztong.optimization.ConstantBuilder;
import xyz.wztong.optimization.Optimization;

import java.util.Collections;
import java.util.stream.IntStream;

public class ConstantPropagation implements Optimization {

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = IntStream.of(manipulator.getAddresses()).boxed().filter((address -> {
            if (!manipulator.wasAddressReached(address)) {
                return false;
            }
            var op = manipulator.getOp(address);
            if (op == null || !ConstantBuilder.canConstantizeOp(op)) {
                return false;
            }
            var instruction = (OneRegisterInstruction) manipulator.getInstruction(address);
            if (instruction == null) {
                return false;
            }
            HeapItem consensus = manipulator.getRegisterConsensus(address, instruction.getRegisterA());
            if (consensus == null || consensus.isUnknown()) {
                return false;
            }
            return ConstantBuilder.canConstantizeType(consensus.isPrimitive() ? consensus.getType() : consensus.getValueType());
        })).sorted(Collections.reverseOrder()).toList();
        for (int address : validAddresses) {
            BuilderInstruction original = manipulator.getInstruction(address);
            BuilderInstruction constInstruction = ConstantBuilder.buildConstant(address, manipulator);
            assert original != null;
            if (original.getOpcode().name().startsWith("RETURN")) {
                manipulator.addInstruction(address, constInstruction);
            } else {
                manipulator.replaceInstruction(address, constInstruction);
            }
        }
        return validAddresses.size();
    }
}
