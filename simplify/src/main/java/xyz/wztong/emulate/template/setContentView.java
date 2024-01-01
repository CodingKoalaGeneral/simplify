package xyz.wztong.emulate.template;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.emulate.MethodStateMethod;
import org.cf.smalivm.emulate.UnknownValuesMethod;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.Utils;
import xyz.wztong.type.android.app.Activity;

public class setContentView extends MethodStateMethod implements UnknownValuesMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var viewIdHeap = mState.peekParameter(1);
        if (viewIdHeap.isKnown()) {
            var viewId = (Integer) viewIdHeap.getValue();
            Utils.printExecutingFunction(String.valueOf(viewId));
            var activityValue = mState.peekParameter(0).getValue();
            if (activityValue instanceof Activity activity) {
                activity.contentView = viewId;
            }
        } else {
            Utils.printExecutingFunction("UNKNOWN");
        }

    }
}
