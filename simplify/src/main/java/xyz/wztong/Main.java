package xyz.wztong;

import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.optimization.Optimizer;
import xyz.wztong.utils.VirtualMachineFactory;
import xyz.wztong.utils.VmUtils;

import java.io.IOException;

@SuppressWarnings("all")
public class Main {

    static {
        VmUtils.init();
    }

    private static final int DEFAULT_MAX_ADDRESS_VISITS = Integer.MAX_VALUE;
    private static final int DEFAULT_MAX_CALL_DEPTH = 200;
    private static final int DEFAULT_MAX_EXECUTION_TIME = 100 * 60;
    private static final int DEFAULT_MAX_METHOD_VISITS = 1_000_000_000;

    public static void main(String[] args) throws IOException, VirtualMachineException {
        var dexPath = "C:\\Users\\WZTong\\Downloads\\IdeaProjectOffline\\DalvikDeObf\\simplify\\src\\main\\resources\\wztong\\QQPure\\App.apk";
        var methodSignature = "Lcom/example/application2/MainActivity;->onCreate(Landroid/os/Bundle;)V";
        var vm = new VirtualMachineFactory().setInputPath(dexPath).build();
//        Optimizer.optimize(new ConstantSwitchSeekBack(), vm.execute(methodSignature));
        var hashCode = Optimizer.getOptimized(vm, methodSignature).toSmali(true).hashCode();
        VmUtils.writeDex(vm, dexPath + "." + Integer.toHexString(hashCode) + ".dex");
    }

}
