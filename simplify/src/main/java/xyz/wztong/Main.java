package xyz.wztong;

import org.cf.smalivm.debug.Debugger;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.utils.VirtualMachineFactory;

import java.io.IOException;

@SuppressWarnings("all")
public class Main {

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 200;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 100 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000_000;

    public static void main(String[] args) throws IOException, VirtualMachineException {
        var dexPath = "simplify/src/main/resources/wztong/ReflectObf/Obfuscated/classes.dex";
        var methodSignature = "Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V";
        var vm = new VirtualMachineFactory().setInputPath(dexPath).build();
        var debugger = new Debugger(vm, methodSignature);

        // debugger.addBreakpoint("Lnp/protect/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;", 0);
        // debugger.addBreakpoint("Lnp/protect/g;->b(Ljava/lang/Object;)Ljava/lang/Class;", 0);

        // GetMethods
        debugger.addBreakpoint("Lnp/protect/e;->e(Ljava/lang/Object;)[Ljava/lang/reflect/Method;", 0);
        // GetDeclaredMethods
        debugger.addBreakpoint("Lnp/protect/e;->b(Ljava/lang/Object;)[Ljava/lang/reflect/Method;", 0);

        // v8(p0): type=Ljava/lang/String;, value=com.example.check.MainActivity
        // v9(p1): type=[Ljava/lang/reflect/Method;, value=[protected void com.example.check.MainActivity.onCreate(android.os.Bundle)]
        // v10(p2): type=Ljava/lang/String;, value=setContentView
        // v11(p3): type=Ljava/lang/String;, value=void
        // v12(p4): type=[Ljava/lang/String;, value=[int]
        // debugger.addBreakpoint("Lnp/protect/a;->o(Ljava/lang/String;[Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;", 0);

        // debugger.addBreakpoint("Lnp/protect/e;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/reflect/Method;", 0);

        // ReflectMethod, Object, Value
        // debugger.addBreakpoint("Lnp/protect/a;->g(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", 0);

        //   Executor:
        // debugger.addBreakpoint("Lnp/protect/e;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0x1d);

        debugger.run();
        System.out.println();
    }

}
