package xyz.wztong.utils;

public class CommonUtils {
    public static void print(String str) {
        System.err.println("=> " + str);
        System.err.flush();
        threadSleep(0);
    }

    public static void threadSleep(long millis) {
        try {
            if (millis != 0) {
                Thread.sleep(millis);
            } else {
                Thread.yield();
            }
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @SuppressWarnings("unchecked")
    public static <T> T cast(Object obj) {
        return (T) obj;
    }
}
