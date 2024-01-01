package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.GotoOp;
import org.jf.dexlib2.iface.instruction.OffsetInstruction;
import xyz.wztong.optimization.Optimization;

import java.util.Comparator;
import java.util.stream.IntStream;

public class UselessBranch implements Optimization {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = IntStream.of(manipulator.getAddresses()).boxed().filter(address -> {
            var op = manipulator.getOp(address);
            if (!(op instanceof GotoOp)) {
                return false;
            }
            // Branch is useless if it branches to the next instruction.
            var instruction = (OffsetInstruction) manipulator.getInstruction(address);
            if (instruction == null) {
                return false;
            }
            return instruction.getCodeOffset() == instruction.getCodeUnits();
        }).sorted(Comparator.reverseOrder()).toList();
        validAddresses.forEach(manipulator::removeInstruction);
        return validAddresses.size();
    }
}
