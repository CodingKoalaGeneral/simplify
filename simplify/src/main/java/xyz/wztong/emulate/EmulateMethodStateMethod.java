package xyz.wztong.emulate;

import org.cf.smalivm.SideEffect;
import org.cf.smalivm.context.ExecutionContext;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.emulate.MethodStateMethod;
import org.cf.smalivm.emulate.UnknownValuesMethod;
import org.cf.smalivm.opcode.InvokeOp;
import org.cf.smalivm.opcode.Op;
import org.cf.util.Utils;
import xyz.wztong.utils.VmUtils;

import java.lang.reflect.InvocationTargetException;

public abstract class EmulateMethodStateMethod extends MethodStateMethod implements UnknownValuesMethod {
    @Override
    public SideEffect.Level getSideEffectLevel() {
        return SideEffect.Level.STRONG;
    }

    public static void assumeMaximumUnknown(Op op, MethodState mState) {
        var context = getContext(mState);
        var callerMethodState = context.getCallerContext().getMethodState();
        try {
            var mAssumeMaximumUnknown = InvokeOp.class.getDeclaredMethod("assumeMaximumUnknown", MethodState.class);
            mAssumeMaximumUnknown.setAccessible(true);
            mAssumeMaximumUnknown.invoke(op, callerMethodState);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Unable to get assumeMaximumUnknown method", e);
        } catch (InvocationTargetException | IllegalAccessException e) {
            throw new IllegalStateException("Unable to invoke assumeMaximumUnknown method", e);
        }
    }

    public static ExecutionContext getContext(MethodState mState) {
        try {
            var mGetContext = MethodState.class.getSuperclass().getDeclaredMethod("getContext");
            mGetContext.setAccessible(true);
            return (ExecutionContext) mGetContext.invoke(mState);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Unable to get getContext method", e);
        } catch (InvocationTargetException | IllegalAccessException e) {
            throw new IllegalStateException("Unable to invoke getContext method", e);
        }
    }

    public static boolean allArgumentsKnown(MethodState mState) {
        for (int parameterRegister = mState.getParameterStart(); parameterRegister < mState.getRegisterCount(); ) {
            HeapItem item = mState.peekParameter(parameterRegister);
            if (VmUtils.isUnknownValue(item)) {
                return false;
            }
            String type = item.getType();
            parameterRegister += Utils.getRegisterSize(type);
        }
        return true;
    }

}
