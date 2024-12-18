package xyz.wztong.emulate.android.app.Activity;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.utils.Utils;
import xyz.wztong.emulate.EmulateMethodStateMethod;
import xyz.wztong.type.android.app.Application;

public class getApplication extends EmulateMethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        Utils.printExecutingFunction("Application.INSTANCE");
        mState.assignReturnRegister(Application.INSTANCE, "Landroid/app/Application;");
    }
}
