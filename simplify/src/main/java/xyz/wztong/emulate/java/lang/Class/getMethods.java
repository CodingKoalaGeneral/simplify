package xyz.wztong.emulate.java.lang.Class;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.emulate.EmulateMethodStateMethod;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;

// Sort methods by ancestors to reduce smali searching/matching (possible) time
public class getMethods extends EmulateMethodStateMethod {

    public static final String RETURN_TYPE = "[Ljava/lang/reflect/Method;";

    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var parameterValue = mState.peekParameter(0).getValue();
        if (parameterValue instanceof Class<?> cClass) {
            var methods = cClass.getMethods();
            var sortedMethods = Arrays.stream(methods).sorted(((Comparator<Method>) (method1, method2) -> {
                var class1 = method1.getDeclaringClass();
                var class2 = method2.getDeclaringClass();
                if (class1.equals(class2)) {
                    return 0;
                } else if (class1.isAssignableFrom(class2)) {
                    return -1;
                } else if (class2.isAssignableFrom(class1)) {
                    return 1;
                }
                throw new IllegalArgumentException("Methods not connected.");
            }).reversed()).toArray(Method[]::new);
            mState.assignReturnRegister(new HeapItem(sortedMethods, RETURN_TYPE));
        } else {
            mState.assignReturnRegister(HeapItem.newUnknown(RETURN_TYPE));
        }
    }
}
