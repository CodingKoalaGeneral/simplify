package xyz.wztong.type;

import org.cf.util.ClassNameUtils;
import xyz.wztong.Utils;

public interface SelfDefinedInstance extends org.cf.smalivm.type.SelfDefinedInstance {
    @Override
    default String getInternalType() {
        return ClassNameUtils.sourceToInternal(this.getClass().getName().replace(Utils.BASE_TYPE_PACKAGE + ".", ""));
    }
}
