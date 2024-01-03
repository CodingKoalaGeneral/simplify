package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.opcode.IfOp;
import org.cf.util.Utils;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.builder.BuilderOffsetInstruction;
import org.jf.dexlib2.builder.instruction.BuilderInstruction10x;
import org.jf.dexlib2.builder.instruction.BuilderInstruction30t;
import xyz.wztong.optimization.Optimization;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicInteger;

public class ConstantPredicate implements Optimization.ReOptimize {

    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var possibleAddresses = getValidAddresses(manipulator, address -> {
            if (!manipulator.wasAddressReached(address)) {
                return false;
            }
            return manipulator.getOp(address) instanceof IfOp;
        });
        var result = new AtomicInteger(0);
        possibleAddresses.forEach(address -> {
            var ifOp = (IfOp) manipulator.getOp(address);
            var lhsItem = manipulator.getRegisterConsensus(address, getRegister1(ifOp));
            if (lhsItem.isUnknown()) {
                return;
            }
            var compareToZero = isCompareToZero(ifOp);
            var rhsItem = compareToZero ? new HeapItem(0, "I") : manipulator.getRegisterConsensus(address, getRegister2(ifOp));
            if (rhsItem.isUnknown()) {
                return;
            }
            result.incrementAndGet();
            var lhs = lhsItem.getValue();
            var rhs = rhsItem.getValue();

            int cmp;
            if (compareToZero) {
                if (lhs == null) {
                    // if-*z ops are used to check for null refs
                    cmp = 0;
                } else if ((lhs instanceof Number || lhs instanceof Boolean || lhs instanceof Character) &&
                        (rhs instanceof Number || rhs instanceof Boolean || rhs instanceof Character)) {
                    var aIntValue = Utils.getIntegerValue(lhs);
                    cmp = aIntValue.compareTo(0);
                } else {
                    cmp = lhs == rhs ? 0 : 1;
                }
            } else if ((lhs instanceof Number || lhs instanceof Boolean || lhs instanceof Character) &&
                    (rhs instanceof Number || rhs instanceof Boolean || rhs instanceof Character)) {
                var aIntValue = Utils.getIntegerValue(lhs);
                var bIntValue = Utils.getIntegerValue(rhs);
                cmp = aIntValue.compareTo(bIntValue);
            } else {
                cmp = lhs == rhs ? 0 : 1;
            }
            var isTrue = isTrue(ifOp, cmp);
            xyz.wztong.Utils.print("ConstantPredicate: " + isTrue + "(" + lhs + "," + rhs + ") <= " + ifOp);
            if (isTrue) {
                var targetInstruction = (BuilderOffsetInstruction) manipulator.getInstruction(address);
                if (targetInstruction == null) {
                    throw new IllegalStateException("What? A IfOp contains no instruction?");
                }
                var target = targetInstruction.getTarget();
                manipulator.replaceInstruction(address, new BuilderInstruction30t(Opcode.GOTO_32, target));
            } else {
                manipulator.replaceInstruction(address, new BuilderInstruction10x(Opcode.NOP));
            }
        });
        return result.get();
    }

    private static int getRegister1(IfOp ifOp) {
        try {
            var fRegister1 = IfOp.class.getDeclaredField("register1");
            fRegister1.setAccessible(true);
            return (int) fRegister1.get(ifOp);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("Let me get register1!", e);
        }
    }

    private static int getRegister2(IfOp ifOp) {
        try {
            var fRegister2 = IfOp.class.getDeclaredField("register2");
            fRegister2.setAccessible(true);
            return (int) fRegister2.get(ifOp);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("Let me get register2!", e);
        }
    }

    private static boolean isCompareToZero(IfOp ifOp) {
        try {
            var fCompareToZero = IfOp.class.getDeclaredField("compareToZero");
            fCompareToZero.setAccessible(true);
            return (boolean) fCompareToZero.get(ifOp);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new IllegalStateException("Let me get compare state!", e);
        }
    }

    private static boolean isTrue(IfOp ifOp, int cmp) {
        try {
            var cIfType = Class.forName("org.cf.smalivm.opcode.IfOp$IfType");
            var fIfType = IfOp.class.getDeclaredField("ifType");
            fIfType.setAccessible(true);
            var ifType = fIfType.get(ifOp);
            var mIsTrue = IfOp.class.getDeclaredMethod("isTrue", cIfType, int.class);
            mIsTrue.setAccessible(true);
            return (boolean) mIsTrue.invoke(ifOp, ifType, cmp);
        } catch (NoSuchFieldException | IllegalAccessException | ClassNotFoundException | NoSuchMethodException |
                 InvocationTargetException e) {
            throw new IllegalStateException("Let me know if it's true!", e);
        }
    }
}
