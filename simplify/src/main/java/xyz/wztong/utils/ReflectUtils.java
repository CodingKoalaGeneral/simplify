package xyz.wztong.utils;

public class ReflectUtils {
    private static Object cloner;

    public static <T> T deepClone(Object object) {
        if (cloner == null) {
            initCloner();
        }
        try {
            var cCloner = Class.forName("com.rits.cloning.Cloner");
            var mDeepClone = cCloner.getDeclaredMethod("deepClone", Object.class);
            mDeepClone.setAccessible(true);
            return CommonUtils.cast(mDeepClone.invoke(cloner, object));
        } catch (Exception e) {
            throw new RuntimeException("Unable to deep clone", e);
        }
    }

    public static <T> T shallowClone(Object object) {
        if (cloner == null) {
            initCloner();
        }
        try {
            var cCloner = Class.forName("com.rits.cloning.Cloner");
            var mDeepClone = cCloner.getDeclaredMethod("shallowClone", Object.class);
            mDeepClone.setAccessible(true);
            return CommonUtils.cast(mDeepClone.invoke(cloner, object));
        } catch (Exception e) {
            throw new RuntimeException("Unable to shallow clone", e);
        }
    }

    private static void initCloner() {
        try {
            var cCloner = Class.forName("com.rits.cloning.Cloner");
            var ccCloner = cCloner.getDeclaredConstructor();
            ccCloner.setAccessible(true);
            cloner = ccCloner.newInstance();
        } catch (Exception e) {
            throw new RuntimeException("Unable to init cloner", e);
        }
    }
}
