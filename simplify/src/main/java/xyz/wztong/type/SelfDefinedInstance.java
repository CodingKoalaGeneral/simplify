package xyz.wztong.type;

import org.cf.smalivm.type.UnknownValue;
import org.cf.util.ClassNameUtils;
import xyz.wztong.utils.Utils;

public class SelfDefinedInstance extends UnknownValue implements org.cf.smalivm.type.SelfDefinedInstance {
    @Override
    public String getInternalType() {
        return ClassNameUtils.sourceToInternal(this.getClass().getName().replace(Utils.BASE_TYPE_PACKAGE + ".", ""));
    }

    @Override
    public String toString() {
        return getInternalType();
    }
}
