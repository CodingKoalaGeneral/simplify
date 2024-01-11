package xyz.wztong.emulate.template;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.utils.Utils;
import xyz.wztong.emulate.EmulateMethodStateMethod;
import xyz.wztong.type.android.app.Activity;

public class setContentView extends EmulateMethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var viewIdHeap = mState.peekParameter(1);
        if (viewIdHeap.getValue() instanceof Integer viewId) {
            Utils.printExecutingFunction(Integer.toHexString(viewId));
            var activityValue = mState.peekParameter(0).getValue();
            if (activityValue instanceof Activity activity) {
                activity.contentView = viewId;
            }
        } else {
            Utils.printExecutingFunction("*UNKNOWN*");
        }

    }
}
