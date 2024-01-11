package xyz.wztong;

import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.optimization.Optimizer;

import java.io.IOException;

@SuppressWarnings("all")
public class Main {

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 200;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 100 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000_000;

    public static void main(String[] args) throws IOException, VirtualMachineException {
        Utils.init();
        var dexPath = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\QQPure\\App.apk";
        var methodSignature = "Lcom/example/application2/MainActivity;->onCreate(Landroid/os/Bundle;)V";
        var vm = new VirtualMachineFactory().build(dexPath);
//        Optimizer.optimize(new ConstantSwitchSeekBack(), vm.execute(methodSignature));
        Utils.writeDex(vm, dexPath + ".%x.dex".formatted(Optimizer.getOptimized(vm, methodSignature).toSmali(true).hashCode()));
    }

}
