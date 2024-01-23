package xyz.wztong.emulate.java.lang.reflect.AccessibleObject;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.emulate.EmulateMethodStateMethod;

import java.lang.reflect.Method;

public class setAccessible extends EmulateMethodStateMethod {

    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var methodHeapValue = mState.peekParameter(0).getValue();
        var accessible = mState.peekParameter(1);
        if (methodHeapValue instanceof Method method && accessible.isKnown()) {
            var accessibleValue = (Boolean) accessible.getValue();
            if (accessibleValue != null) {
                method.setAccessible(accessibleValue);
            } else {
                throw new IllegalStateException("Known boolean with null value");
            }
        } else {
            assumeMaximumUnknown(op, mState);
        }
    }

}
