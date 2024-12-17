package xyz.wztong;

import org.cf.smalivm.opcode.InvokeOp;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.utils.VirtualMachineFactory;

import java.lang.reflect.Method;

@SuppressWarnings("all")
public class Main {

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 200;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 100 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000_000;

    public static void main(String[] args) throws Exception {
        var dexPath = "simplify/src/main/resources/wztong/ReflectObf/Obfuscated/disassemble";
        var methodSignature = "Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V";
        var vm = new VirtualMachineFactory()
                .setInputPath(dexPath)
                .setMaxAddressVisits(Integer.MAX_VALUE)
                .setMaxMethodVisits(Integer.MAX_VALUE)
                .build();
        vm.execute(methodSignature);
        System.out.println("Finished");
    }

    public static boolean stop(Op op) {
        if (op instanceof InvokeOp invokeOp) {
            var strInvokeOp = invokeOp.toString();
            if (strInvokeOp.contains("Ljava/lang/Object;->hashCode()I")) return false;
            if (strInvokeOp.startsWith("invoke-static") && strInvokeOp.endsWith(")I")) return false;
            return true;
        } else {
            return false;
        }
    }

}
