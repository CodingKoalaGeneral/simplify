package xyz.wztong.utils;


import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Base64;

@SuppressWarnings({"unused", "SameParameterValue"})
public class MyApkUtils {
    private static final Cipher cipher;
    private static final MessageDigest digest;

    private static final byte[] CACHED_KEY = {(byte) 0xe2, (byte) 0x48, (byte) 0x25, (byte) 0xe7, (byte) 0x80, (byte) 0x46, (byte) 0xe3, (byte) 0x3c, (byte) 0x3c, (byte) 0x1e, (byte) 0x25, (byte) 0x1d, (byte) 0x4e, (byte) 0x05, (byte) 0x55, (byte) 0xe1, (byte) 0x69, (byte) 0xa8, (byte) 0x18, (byte) 0xca};
    private static final byte[] NATIVE_KEY = {(byte) 0xe2, (byte) 0x5f, (byte) 0x48, (byte) 0x73, (byte) 0x25, (byte) 0xc6, (byte) 0xe7, (byte) 0x11, (byte) 0x80, (byte) 0x7c, (byte) 0x46, (byte) 0xc3, (byte) 0xe3, (byte) 0x1d, (byte) 0x3c, (byte) 0x97, (byte) 0x3c, (byte) 0x77, (byte) 0x1e, (byte) 0x01};
    private static final Charset CHARSET = Charset.forName("gbk");
    private static final String DEFAULT_SIGNATURE = "MIIDVTCCAj2gAwIBAgIENDX1xDANBgkqhkiG9w0BAQsFADBaMQswCQYDVQQGEwJjbjELMAkGA1UECBMCYmoxCzAJBgNVBAcTAmJqMQ8wDQYDVQQKEwZpcHVzZXIxDzANBgNVBAsTBmlwdXNlcjEPMA0GA1UEAxMGaXB1c2VyMCAXDTE2MDcwMjExNDMyNloYDzIwOTgwODIxMTE0MzI2WjBaMQswCQYDVQQGEwJjbjELMAkGA1UECBMCYmoxCzAJBgNVBAcTAmJqMQ8wDQYDVQQKEwZpcHVzZXIxDzANBgNVBAsTBmlwdXNlcjEPMA0GA1UEAxMGaXB1c2VyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq2L7hQ4BgcKKKSQJNKXjGhQ2d0VLw30Mr6q7gKPO/7UTbWD8Vgllloo0KkjrRMLRqmC5nUadigdaxk6F+BNFXRBLmkM00UrSLQw1mHtoRrKkyGwIqjtqW/6W1HXg9TJw1f/afGgUJmskKilhNKpYRevjKhk+ScSGpv772rKKS+MTC3cQRZgONAFItgQcMm0xAlSij6tONuckktZ+6IYhH6qnydLHlRVMiXNUp1Ip7ehbKOjJWiJkJwRJD0XYwdTsGGYE4zBh7LUwQShf9WXeCl1HXQs9kpmckfaZ9hO0TnhgA5gm3QfG6VZlzmY9RJHn7nGXzB/2XJmr7U+SbxVOawIDAQABoyEwHzAdBgNVHQ4EFgQUN/ajnR3pvUTNwCUoIUjnBgZmma0wDQYJKoZIhvcNAQELBQADggEBAAmCoVuw1mr80uvpUNAMATKq5VVLn2gM7iJqnpezBk92Vx3PS2Es21jh9dp302PIQvqXQOqTH3EFqxHxcwaTQRFwxxp/m6mnYhDRJw06H664jtHtsnDHSnIWbVJRfJAWFtYF+h9lriW64FwT9h5oP87a3iysapGiyIp7sK+YBwLWIzs9okXih8luyt/95QQITiWsdBXoW6bQxJC3wsDz4wNh01jY3kpp+hwupSo3vCCyEX00uS/7USntCr/yu9nm+V/a6HXWe/f06ElBcfaMlPxCXxhZbt2r6/31fMhxJl/Okw5yL40D3koKCBYnWY2RCxQm0yR+JwAKTUYkl+Iu9gk=";

    static {
        try {
            cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            digest = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) throws IOException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
        var signature = Base64.getDecoder().decode(DEFAULT_SIGNATURE);
        var apkInfo = new MyApkUtils("C:\\Tencent\\2536678149\\FileRecv\\lib.so", "ERG工具箱", "tcggf.jfdh", "1.0", "100001", "2437775", "6B63638245QQQQQQQQQQWWWWWWWWWWEE", null, signature);
        var mian = apkInfo.resolveFile("mian.iyu");
        var pack = apkInfo.getPackInfo();
        System.out.println();
    }

    private int searchIndex(byte[] pattern, int start) {
        int index1 = start, index2 = 0, length = cache.length;
        while (index1 < length) {
            int dsite = 0;
            while (cache[index1 + dsite] == pattern[index2 + dsite]) {
                if (index2 + dsite + 1 >= pattern.length) return index1;
                dsite++;
                if (index1 + dsite >= length || index2 + dsite >= pattern.length) break;
            }
            index1++;
        }
        return index1;
    }

    private String getPackInfo() {
        return resolveFile(packageName + ".project");
    }

    private String resolveFile(String fileName) {
        if (fileName.isBlank()) return null;
        var file = fileName.toLowerCase();
        byte[] k3 = slky(file, this.soKey + this.dexKey), k4 = slky(file, this.dexKey + this.soKey);
        var fss = searchIndex(k3, 0);
        var fs = fss + 0x10;
        if (fss == -1) return null;
        var fe = searchIndex(k4, 0);
        if (fe == -1) return null;
        var fl = fe - fs;
        if (fl <= 0) return null;
        var f = new byte[fl];
        var fk = slky(file + this.soKey + this.dexKey, file);
        for (int i = 0; i < fk.length; i++) {
            fk[i] = (byte) (fk[i] ^ CACHED_KEY[i % CACHED_KEY.length]);
        }
        System.arraycopy(cache, fs, f, 0, fl);
        byte[] fr;
        try {
            cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(fk, "AES"), new IvParameterSpec(fk));
            fr = cipher.doFinal(f);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return new String(djyj(fr, fk), StandardCharsets.UTF_8);
    }

    private static byte[] djyj(byte[] d1, byte[] k2) {
        int index2 = 0, d1Len = d1.length;
        byte[] result = d1.clone();
        for (int index1 = 0; index1 < d1Len; index1++) {
            byte xor1 = k2[index2];
            index2++;
            byte xor2 = result[index1];
            if (index2 == k2.length) index2 = 0;
            result[index1] = (byte) (xor1 ^ xor2);
        }
        return result;
    }

    private byte[] idbfj() {
        var k1 = this.soKey + this.versionName + this.packageName + this.label + this.versionCode + this.dexKey + this.userEncryption;
        var k1b = k1.getBytes(StandardCharsets.UTF_8);
        int t = k1b.length;
        for (int i = 0, index = t; i < index; i++) t += k1b[i];
        byte[] k2;
        switch ((t + k1b[0] * k1b[k1b.length - 1]) % 6) {
            case 0 -> k2 = slky(k1, this.versionName);
            case 1 -> k2 = slky(k1, this.packageName);
            case 2 -> k2 = slky(k1, this.label);
            case 3 -> k2 = slky(k1, this.versionCode);
            case 4 -> k2 = slky(k1, this.soKey);
            case 5 -> k2 = slky(k1, this.dexKey);
            default -> throw new IllegalStateException("What happened?");
        }
        return k2;
    }

    private static byte[] slky(byte[] key1, byte[] key2) {
        int t = key1.length, len1 = key1.length, len2 = key2.length;
        for (int i = 0, index = t; i < index; i++) t += key1[i];
        var d = String.valueOf((t + key1[0] * key1[len1 - 1]) / len1);
        int k = t / len1, m = t % len1 + len2, dl = d.length();
        byte[] bytes = new byte[len1 + len2 + dl];
        System.arraycopy(key1, 0, bytes, 0, len1);
        System.arraycopy(d.getBytes(), 0, bytes, len1, dl);
        System.arraycopy(key2, 0, bytes, len1 + dl, len2);
        for (int i = 0; i < bytes.length; i++) bytes[i] = (byte) (bytes[i] ^ k);
        byte[] tr;
        digest.update(bytes);
        tr = digest.digest();
        int tl = tr.length, xg = tl >> 1, xk = xg + m;
        for (int i = 0; i < tl; i++) {
            byte c = tr[i];
            int cabs = Math.abs(c), level = cabs % tl;
            if (level > xg) {
                c = (byte) (c ^ xk);
                tr[i] = c;
            }
            byte swap = tr[level];
            tr[level] = tr[i];
            tr[i] = (byte) (swap ^ (NATIVE_KEY[i % NATIVE_KEY.length]));
        }
        return tr;
    }

    private static byte[] slky(String key1, String key2) {
        return slky(key1.getBytes(StandardCharsets.UTF_8), key2.getBytes(StandardCharsets.UTF_8));
    }

    private final String label;
    private final String packageName;
    private final String versionName;
    private final String versionCode;
    private final String soKey;
    private final String userEncryption;
    private final String dexKey;
    private final byte[] cache;

    public MyApkUtils(String path, String label, String packageName, String versionName, String versionCode, String dexKey, String soKey, String userEncryption, byte[] signature) throws IOException {
        this(Files.readAllBytes(Path.of(path)), label, packageName, versionName, versionCode, dexKey, soKey, userEncryption, signature);
    }

    public MyApkUtils(byte[] src, String label, String packageName, String versionName, String versionCode, String dexKey, String soKey, String userEncryption, byte[] signature) {
        this.label = label;
        this.packageName = packageName;
        this.versionName = versionName;
        this.versionCode = versionCode;
        this.soKey = soKey.endsWith("QQQQQQQQQQWWWWWWWWWWEE") ? soKey : (soKey.length() == 10 ? (soKey + "QQQQQQQQQQWWWWWWWWWWEE") : soKey);
        this.userEncryption = userEncryption == null ? "" : userEncryption;
        this.dexKey = dexKey;
        byte[] k1, uk = idbfj();
        k1 = slky(signature == null ? uk : signature, uk);
        byte[] cacheKey = slky(uk, k1);
        for (int i = 0; i < cacheKey.length; i++) {
            cacheKey[i] = (byte) (cacheKey[i] ^ CACHED_KEY[i % CACHED_KEY.length]);
        }
        byte[] cache;
        try {
            cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(cacheKey, "AES"), new IvParameterSpec(cacheKey));
            cache = cipher.doFinal(src);
        } catch (InvalidKeyException | InvalidAlgorithmParameterException | IllegalBlockSizeException |
                 BadPaddingException e) {
            throw new IllegalArgumentException("ApkInfo not match", e);
        }
        for (int i = 0; i < cache.length; i++) {
            cache[i] = (byte) (cache[i] ^ cacheKey[i % cacheKey.length]);
        }
        this.cache = cache;
    }

}