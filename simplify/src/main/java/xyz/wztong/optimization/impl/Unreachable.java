package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.NopOp;
import org.cf.smalivm.opcode.SwitchPayloadOp;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.builder.BuilderTryBlock;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Unreachable implements Optimization.ReOptimize {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var handlerAddresses = new HashSet<>();
        int[] allAddresses = manipulator.getAddresses();
        Arrays.sort(allAddresses);
        int highestAddress = allAddresses[allAddresses.length - 1];
        for (BuilderTryBlock tryBlock : manipulator.getTryBlocks()) {
            var handlers = tryBlock.getExceptionHandlers();
            for (var handler : handlers) {
                int address = handler.getHandlerCodeAddress();
                var instruction = manipulator.getInstruction(address);
                if (instruction == null) {
                    throw new IllegalStateException("It's a valid address, but without instruction?");
                }
                while (address < highestAddress) {
                    // Add all instructions until return, goto, etc.
                    handlerAddresses.add(address);
                    address += instruction.getCodeUnits();
                    instruction = manipulator.getInstruction(address);
                    if (instruction == null) {
                        throw new IllegalStateException("It's a handler address, it should contains an instruction!");
                    }
                    if (!instruction.getOpcode().canContinue()) {
                        break;
                    }
                }
            }
        }
        var validAddresses = getValidAddresses(manipulator, address -> {
            if (manipulator.wasAddressReached(address)) {
                return false;
            }
            if (handlerAddresses.contains(address)) {
                // If virtual execution was perfect, unvisited exception handling code could safely be removed provided
                // you also removed the try/catch but that level of accuracy is difficult. Instead, compromise by not
                // removing unvisited code, but try and remove for other reasons such as dead assignment.
                return false;
            }
            var op = manipulator.getOp(address);
            if (op instanceof NopOp) {
                var instruction = op.getLocation().getInstruction();
                if (instruction == null) {
                    throw new IllegalStateException("Valid op's location without instruction?");
                }
                int nextAddress = address + instruction.getCodeUnits();
                var nextInstruction = manipulator.getLocation(nextAddress).getInstruction();
                if (nextInstruction == null) {
                    return false;
                }
                var nextOpcode = nextInstruction.getOpcode();
                // Necessary nop padding
                return !nextOpcode.equals(Opcode.ARRAY_PAYLOAD) && !nextOpcode.equals(Opcode.PACKED_SWITCH_PAYLOAD) && !nextOpcode.equals(Opcode.SPARSE_SWITCH_PAYLOAD);
            }
            return !(op instanceof SwitchPayloadOp);
        });
        validAddresses.forEach(address -> {
            Utils.print("Unreachable: " + manipulator.getOp(address));
            manipulator.removeInstruction(address);
        });
        return validAddresses.size();
    }
}
