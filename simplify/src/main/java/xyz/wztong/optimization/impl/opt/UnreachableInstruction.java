package xyz.wztong.optimization.impl.opt;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.NopOp;
import org.cf.smalivm.opcode.SwitchOp;
import org.cf.smalivm.opcode.SwitchPayloadOp;
import org.jf.dexlib2.Opcode;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

@Optimization.Original
public class UnreachableInstruction implements Optimization.ReOptimize {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var handlerAddresses = Utils.getTryHandlerAddresses(manipulator);
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
            return true;
        });
        @UnsafeManipulator
        var impl = manipulator.getMethod().getImplementation();
        validAddresses.forEach(address -> {
            var op = manipulator.getOp(address);
            print(op);
            if (op instanceof SwitchOp switchOp) {
                var payloadAddress = switchOp.getChildren()[0].getCodeAddress();
                impl.removeInstruction(manipulator.getLocation(Math.max(address, payloadAddress)).getIndex());
                impl.removeInstruction(manipulator.getLocation(Math.min(address, payloadAddress)).getIndex());
                manipulatorRebuildGraph(manipulator);
            } else if (!(op instanceof SwitchPayloadOp)) {
                manipulator.removeInstruction(address);
            }
            // Do nothing with standalone SwitchPayloadOp
        });
        manipulatorRebuildGraph(manipulator);
        return validAddresses.size();
    }

}
