package xyz.wztong.emulate.java.lang.String;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.emulate.MethodStateMethod;
import org.cf.smalivm.opcode.Op;

// For hooking
public class equals extends MethodStateMethod {
    @Override
    protected void execute(VirtualMachine vm, Op op, MethodState mState) {
        var thiz = mState.peekParameter(0);
        var other = mState.peekParameter(1);
        if (thiz.getValue() instanceof String thisString && !other.isUnknown()) {
            mState.assignReturnRegister(new HeapItem(thisString.equals(other.getValue()), "Z"));
        } else {
            mState.assignReturnRegister(HeapItem.newUnknown("Z"));
        }

    }
}
