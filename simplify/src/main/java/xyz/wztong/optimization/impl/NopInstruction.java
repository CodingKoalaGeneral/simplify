package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.jf.dexlib2.Opcode;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

public class NopInstruction implements Optimization {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = getValidAddresses(manipulator, address -> {
            var instruction = manipulator.getInstruction(address);
            if (instruction == null) return false;
            var opcode = instruction.getOpcode();
            int nextAddress = address + instruction.getCodeUnits();
            var nextLocation = manipulator.getLocation(nextAddress);
            if (nextLocation != null) {
                var nextInstruction = nextLocation.getInstruction();
                if (nextInstruction != null && nextInstruction.getOpcode().equals(Opcode.ARRAY_PAYLOAD)) {
                    // Necessary nop padding
                    return false;
                }
            }
            return Opcode.NOP.equals(opcode);
        });
        validAddresses.forEach(address -> {
            Utils.print("NopInstruction: " + manipulator.getOp(address));
            manipulator.removeInstruction(address);
        });
        return validAddresses.size();
    }
}
