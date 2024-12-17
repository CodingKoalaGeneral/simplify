package xyz.wztong.emulate.template;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import org.cf.smalivm.type.UnknownValue;
import xyz.wztong.utils.Utils;
import xyz.wztong.emulate.EmulateMethodStateMethod;
import xyz.wztong.type.android.app.Activity;
import xyz.wztong.utils.VmUtils;

public class onCreate extends EmulateMethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var self = mState.peekParameter(0);
        var activityType = self.getType();
        var activityValue = self.getValue();
        if (activityValue instanceof Activity activity) {
            Utils.printExecutingFunction(activity.toString());
            if (activity.superOnCreateCalled) {
                mState.assignThrowRegister(VmUtils.makeHeapItem(new RuntimeException()));
            } else {
                activity.superOnCreateCalled = true;
            }
        } else if (activityValue.getClass() == UnknownValue.class) {
            var activity = new HeapItem(new Activity() {
                @Override
                public String getInternalType() {
                    return activityType;
                }
            }, activityType);
            Utils.printExecutingFunction("Assign => " + activity);
            mState.assignParameter(0, activity);
        }
    }
}