package xyz.wztong.emulate.android.widget.Toast;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.Utils;
import xyz.wztong.emulate.EmulateMethodStateMethod;
import xyz.wztong.type.android.widget.Toast;

public class makeText extends EmulateMethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var textHeap = mState.peekParameter(1);
        CharSequence text;
        HeapItem result;
        if (textHeap.isKnown() && (text = (CharSequence) textHeap.getValue()) != null) {
            Utils.printExecutingFunction(text);
            result = new HeapItem(new Toast(text), Utils.getCallingEmulateClassInternal());
        } else {
            result = HeapItem.newUnknown(Utils.getCallingEmulateClassInternal());
            Utils.printExecutingFunction("*UNKNOWN*");
        }
        mState.assignReturnRegister(result);
    }
}
