package xyz.wztong;

import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.optimization.Optimizer;
import xyz.wztong.optimization.impl.exec.ConstantSwitchSeekBack;

import java.io.IOException;
import java.util.List;

@SuppressWarnings("all")
public class Main {

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 200;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 100 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000_000;

    public static void main(String[] args) throws IOException, VirtualMachineException {
        Utils.init();
        var vm = new VirtualMachineFactory().build("C:\\Tencent\\2536678149\\FileRecv\\App.apk.3df22fc1.dex");
        var graph = vm.execute("Lcom/example/application2/MainActivity;->onCreate(Landroid/os/Bundle;)V");
        Optimizer.optimize(List.of(new ConstantSwitchSeekBack()), graph);
        Utils.writeDex(vm, "C:\\Tencent\\2536678149\\FileRecv\\App.apk." + Integer.toHexString(graph.toSmali().hashCode()) + ".dex");
    }

}
