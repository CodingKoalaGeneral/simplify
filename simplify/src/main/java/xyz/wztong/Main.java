package xyz.wztong;

import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.exception.VirtualMachineException;
import org.jf.dexlib2.writer.io.FileDataStore;
import xyz.wztong.optimization.Optimizer;
import xyz.wztong.type.android.app.Activity;

import java.io.File;
import java.io.IOException;

@SuppressWarnings("unused")
public class Main {

    public static void main(String[] args) throws IOException, VirtualMachineException {
        testObfuscatedApp(args);
    }

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 1;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 5 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000;

    public static void testObfuscatedApp(String[] args) throws IOException, VirtualMachineException {
//        Utils.disassembleDex(new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\classes.dex"), new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\disassemble"));
//        Utils.disassembleDex(new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\classes.dex"), new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\disassemble"));
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\disassemble";
        var vm = new VirtualMachineFactory().build(disassembleAddress);
        var ctx = vm.spawnRootContext("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        var mState = ctx.getMethodState();
        Utils.setParameter(mState, new Activity(), "Lcom/example/check/MainActivity;", "Bundle", "Landroid/os/Bundle;");
        var graph = vm.execute(ctx);
        Optimizer.optimize(graph);
    }

    public static void testLocalSmali(String[] args) throws IOException, VirtualMachineException {
        var vm = new VirtualMachineFactory().build("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong");
        Optimizer.optimize(vm.execute("LTest;->helloWorld()V"));
        Optimizer.optimize(vm.execute("LTest;->invokeIntegerMethods()I"));
        Optimizer.optimize(vm.execute("LTest;->getIntegerMethod()I"));
        vm.getClassManager().getDexBuilder().writeTo(new FileDataStore(new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\out\\out.dex")));
        Utils.disassembleDex(new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\out\\" + "out.dex"), new File("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\out\\"));
    }

}
