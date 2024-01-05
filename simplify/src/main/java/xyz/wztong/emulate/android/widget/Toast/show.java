package xyz.wztong.emulate.android.widget.Toast;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.Utils;
import xyz.wztong.emulate.EmulateMethodStateMethod;
import xyz.wztong.type.android.widget.Toast;

public class show extends EmulateMethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var toastHeap = mState.peekParameter(0);
        CharSequence toastText;
        if (toastHeap.getValue() instanceof Toast toast) {
            toastText = String.valueOf(toast.text);
        }else{
            toastText = "*UNKNOWN*";
        }
        Utils.printExecutingFunction(toastText);
    }
}
