package xyz.wztong.optimization.impl.opt;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.GotoOp;
import org.jf.dexlib2.iface.instruction.OffsetInstruction;
import xyz.wztong.optimization.Optimization;

@Optimization.Original
public class UselessBranch implements Optimization.ReOptimize {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = getValidAddresses(manipulator, address -> {
            var op = manipulator.getOp(address);
            GotoOp gotoOp;
            if (!(op instanceof GotoOp fGotoOp)) {
                return false;
            } else {
                gotoOp = fGotoOp;
            }
            // Branch is useless if it branches to the next instruction.
            var instruction = (OffsetInstruction) gotoOp.getInstruction();
            return instruction.getCodeOffset() == instruction.getCodeUnits();
        });
        validAddresses.forEach(address -> {
            print(manipulator.getOp(address));
            manipulator.removeInstruction(address);
        });
        return validAddresses.size();
    }
}
