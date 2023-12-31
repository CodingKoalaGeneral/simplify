package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.jf.dexlib2.Opcode;
import xyz.wztong.optimization.Optimization;

import java.util.Comparator;
import java.util.stream.IntStream;

public class NopInstruction implements Optimization {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = IntStream.of(manipulator.getAddresses()).boxed().filter(address -> {
            var instruction = manipulator.getInstruction(address);
            if (instruction == null) return false;
            var opcode = instruction.getOpcode();
            return Opcode.NOP.equals(opcode);
        }).sorted(Comparator.reverseOrder()).toList();
        validAddresses.forEach(manipulator::removeInstruction);
        return validAddresses.size();
    }
}
