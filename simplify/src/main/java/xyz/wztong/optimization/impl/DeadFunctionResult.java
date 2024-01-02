package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.SideEffect;
import org.cf.smalivm.context.ExecutionNode;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.APutOp;
import org.cf.smalivm.opcode.InvokeOp;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DeadFunctionResult implements Optimization {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddresses = getValidAddresses(manipulator, address -> {
            if (!manipulator.wasAddressReached(address)) {
                return false;
            }
            InvokeOp op;
            if (!(manipulator.getOp(address) instanceof InvokeOp invokeOp)) {
                return false;
            } else {
                op = invokeOp;
            }
            var instruction = manipulator.getInstruction(address);
            if (instruction == null) {
                return false;
            }
            String returnType = op.getReturnType();
            if ("V".equals(returnType)) {
                return false;
            }
            var nextInstruction = manipulator.getInstruction(address + instruction.getCodeUnits());
            if (nextInstruction == null) {
                return false;
            }
            if (nextInstruction.getOpcode().name.startsWith("move-result")) {
                return false;
            }
            // If a function has no side effect and the result is ignored, we can delete it (for safety, add static limit)
            if (op.getSideEffectLevel().getValue() == SideEffect.Level.NONE.getValue() && op.getMethod().isStatic()) {
                return true;
            }
            if (op.getSideEffectLevel().getValue() > Utils.MAX_SIDE_EFFECT_LEVEL.getValue()) {
                return false;
            }
            var mState = manipulator.getNodePile(address).get(0).getContext().getMethodState();
            var assigned = getNormalRegistersAssigned(mState);
            // Result may not be used, but assignments *are* used
            return assigned.isEmpty() || !isAnyRegisterUsed(address, assigned, manipulator);
        });
        validAddresses.forEach(address -> {
            Utils.print("DeadFunctionResult: " + manipulator.getOp(address));
            manipulator.removeInstruction(address);
        });
        return validAddresses.size();
    }

    @SuppressWarnings("DuplicatedCode")
    private static boolean isAnyRegisterUsed(int address, Set<Integer> registers, ExecutionGraphManipulator graph) {
        List<ExecutionNode> children = graph.getChildren(address);
        for (ExecutionNode child : children) {
            Set<Integer> newRegisters = new HashSet<>(registers);
            if (isAnyRegisterUsed(newRegisters, graph, child)) {
                return true;
            }
        }
        return false;
    }

    @SuppressWarnings("DuplicatedCode")
    private static boolean isAnyRegisterUsed(Set<Integer> usedRegisters, ExecutionGraphManipulator graph, ExecutionNode node) {
        var current = node;
        var reassignedRegisters = new HashSet<Integer>();
        while (true) {
            MethodState mState = current.getContext().getMethodState();
            for (int register : usedRegisters) {
                // Need to check if read before checking if assigned because some ops may read & assign to the same register, e.g. add-int/2addr v0, v0
                if (mState.wasRegisterRead(register)) {
                    return true;
                }
                // aput mutates an object. Assignment isn't "reassignment" like it is with other ops
                if (mState.wasRegisterAssigned(register)) {
                    if (current.getOp() instanceof APutOp) {
                        // aput* ops mutate the value at the target register, they don't reassign to a new object, so don't count it as reassignment
                        continue;
                    }
                    // This register has been reassigned so the original value isn't accessible from this register anymore.
                    reassignedRegisters.add(register);
                }
            }
            usedRegisters.removeAll(reassignedRegisters);
            if (usedRegisters.isEmpty()) {
                return false;
            }
            List<ExecutionNode> children = current.getChildren();
            if (children.size() == 1) {
                current = children.get(0);
            } else {
                for (ExecutionNode child : children) {
                    Set<Integer> newRegisters = new HashSet<>(usedRegisters);
                    if (isAnyRegisterUsed(newRegisters, graph, child)) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    @SuppressWarnings("DuplicatedCode")
    private static Set<Integer> getNormalRegistersAssigned(MethodState mState) {
        var assigned = new HashSet<Integer>();
        Arrays.stream(mState.getRegistersAssigned()).filter(register -> register >= 0).forEach(assigned::add);
        for (int i = 0; i < mState.getParameterCount(); i++) {
            int parameterRegister = mState.getParameterStart() + i;
            assigned.remove(parameterRegister);
        }
        return assigned;
    }
}
