package xyz.wztong;

import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.optimization.Optimizer;
import xyz.wztong.optimization.impl.ConstantSwitchSeekBack;

import java.io.IOException;
import java.util.Set;

@SuppressWarnings("unused")
public class Main {

    public static void main(String[] args) throws IOException, VirtualMachineException {
        testObfuscatedApp(args);
    }

    private static void testSimplified(String[] args) throws IOException, VirtualMachineException {
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified";
        var vm = new VirtualMachineFactory().build(disassembleAddress);
        var graph = vm.execute("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        Optimizer.optimize(Set.of(new ConstantSwitchSeekBack()), graph);
//        Optimizer.optimize(graph);
        Utils.writeDex(vm, "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\test.dex");
        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\test.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\test\\");
        System.out.println();
    }

    public static void testObfuscatedApp(String[] args) throws IOException, VirtualMachineException {
//        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\classes.renamed.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\disassemble");
//        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\classes.dex"  ,"C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\disassemble");
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\disassemble";
        var vm = new VirtualMachineFactory().build(disassembleAddress);
        var method = vm.getClassManager().getMethod("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        while (true) {
            if (Optimizer.optimize(vm.execute(method)) == 0) break;
        }
//        Optimizer.optimize(Set.of(new ConstantSwitchSeekBack()), vm.execute(method));
        Utils.writeDex(vm, "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified.dex");
        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified\\");
    }

}
