package xyz.wztong.emulate.template;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.Utils;
import xyz.wztong.emulate.EmulateMethodStateMethod;
import xyz.wztong.type.android.app.Activity;

public class onCreate extends EmulateMethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        Utils.printExecutingFunction();
        var activityValue = mState.peekParameter(0).getValue();
        if (activityValue instanceof Activity activity) {
            if (activity.superOnCreateCalled) {
                mState.assignThrowRegister(Utils.makeHeapItem(new RuntimeException()));
            } else {
                activity.superOnCreateCalled = true;
            }
        }
    }
}