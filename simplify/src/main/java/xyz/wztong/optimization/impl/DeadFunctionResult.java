package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.InvokeOp;
import xyz.wztong.optimization.Optimization;

import java.util.stream.IntStream;

// TODO
public class DeadFunctionResult implements Optimization {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = IntStream.of(manipulator.getAddresses()).boxed().filter(address -> {
            if (!manipulator.wasAddressReached(address)) return false;
            InvokeOp op;
            if (!(manipulator.getOp(address) instanceof InvokeOp invokeOp)) return false;
            else op = invokeOp;
            var instruction = manipulator.getInstruction(address);
            if (instruction == null) return false;
            var vm = manipulator.getVM();

            String returnType = op.getReturnType();
            if ("V".equals(returnType)) return false;

            return false;
        });
        return 0;
    }
}
