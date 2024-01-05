package xyz.wztong;

import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.dex.SmaliParser;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.optimization.Optimizer;
import xyz.wztong.optimization.impl.ConstantSwitchSeekBack;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("unused")
public class Main {

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 200;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 100 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000_000;

    public static void main(String[] args) throws IOException, VirtualMachineException {
        int i = 0;
        var set = new HashSet<String>();
        do {
            set.add(Utils.simplifyMethod("C:\\Tencent\\2536678149\\FileRecv\\App.apk", "Lcom/example/application2/MainActivity;->onCreate(Landroid/os/Bundle;)V"));
            i++;
        } while (i < 0x10);
        System.out.println(set);
        //        testObfuscatedApp(args);
    }

    private static void testSimplified(String[] args) throws IOException, VirtualMachineException {
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\simplified";
        var vm = new VirtualMachineFactory().build(disassembleAddress);
        var graph = vm.execute("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        Optimizer.optimize(Set.of(new ConstantSwitchSeekBack()), graph);
//        Optimizer.optimize(graph);
        Utils.writeDex(vm, "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\test.dex");
        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\test.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\test\\");
        System.out.println();
    }

    public static void testObfuscatedApp(String[] args) throws IOException, VirtualMachineException {
//        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\classes.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\disassemble");
//        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Original\\classes.dex"  ,"C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Original\\disassemble");
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\disassemble";
//        var vm = new VirtualMachineFactory().build(disassembleAddress);
        var vm = new VirtualMachineFactory().build(disassembleAddress, SmaliParser.DEX_API_LEVEL, DEFAULT_MAX_ADDRESS_VISITS, DEFAULT_MAX_CALL_DEPTH, DEFAULT_MAX_METHOD_VISITS, DEFAULT_MAX_EXECUTION_TIME);
        var method = vm.getClassManager().getMethod("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        var graph = vm.execute(method);
        while (true) {
            if (Optimizer.optimize(vm.execute(method)) == Optimizer.OPTIMIZER_OPTIMIZED) break;
        }

//        var debug = new Debugger(vm, "Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
//        ExecutionNode step;
//        while ((step = debug.step(true)) != null) {
//            System.out.println(step);
//            System.out.print("");
//            if (step.toString().contains("ExecutionNode{signature=Lnp/protect/e;->b(Ljava/lang/Object;)[Ljava/lang/reflect/Method;, op=move-result-object r0, @=30}")) {
//                break;
//            }
//        }

//        while ((step = debug.step(true)) != null) {
//            System.out.println(step);
//            System.out.print("");
//        }
//        System.out.println(graph.toSmali());
//        System.exit(0);
        Utils.writeDex(vm, "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\simplified.dex");
        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\simplified.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ReflectObf\\Obfuscated\\simplified\\");
    }

}
