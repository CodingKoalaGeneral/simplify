package xyz.wztong;

import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.context.ExecutionGraph;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.optimization.Optimizer;

import java.io.IOException;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@SuppressWarnings("unused")
public class Main {

    public static void main(String[] args) throws IOException, VirtualMachineException {
        testSimplified(args);
    }

    private static void testSimplified(String[] args) throws IOException, VirtualMachineException {
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified";
        var vm = new VirtualMachineFactory().build(disassembleAddress);
        var graph = vm.execute("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        System.out.println(IntStream.of(graph.getAddresses()).mapToObj(addr -> Integer.toHexString(addr) + " => " + graph.wasAddressReached(addr) + " => " + Objects.requireNonNull(graph.getOp(addr))).collect(Collectors.joining("\n")));
        Optimizer.optimize(graph);
        System.out.println();
    }

    public static void testObfuscatedApp(String[] args) throws IOException, VirtualMachineException {
//        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\classes.renamed.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\disassemble");
//        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\classes.dex"  ,"C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Original\\disassemble");
        var disassembleAddress = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\disassemble";
        var vm = new VirtualMachineFactory().build(disassembleAddress);

        int optimize = -1;
        var method = vm.getClassManager().getMethod("Lcom/example/check/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        ExecutionGraph graph;
        int optimizeCount = 0;
        while (optimize != 0) {
            graph = vm.execute(method);
            optimizeCount++;
            Utils.print("OptimizeCount: " + optimizeCount);
            optimize = Optimizer.optimize(graph);
        }
        Utils.writeDex(vm, "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified.dex");
        Utils.disassembleDex("C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified.dex", "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\ExampleToast\\Obfuscated\\simplified\\");
    }

}
