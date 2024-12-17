package xyz.wztong.utils;

import org.cf.smalivm.SideEffect;
import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.context.ExecutionGraph;
import org.cf.smalivm.exception.VirtualMachineException;
import org.cf.util.ClassNameUtils;
import xyz.wztong.optimization.Optimizer;

import java.io.File;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("unused")
public class Utils {
    public static final String BASE_EMULATE_PACKAGE = "xyz.wztong.emulate";
    public static final String BASE_TYPE_PACKAGE = "xyz.wztong.type";
    public static final SideEffect.Level MAX_SIDE_EFFECT_LEVEL = SideEffect.Level.NONE;

    public static String simplifyMethodWithDex(String path, String method) throws IOException, VirtualMachineException {
        var graph = simplifyMethod(path, method);
        var smali = graph.toSmali(true);
        VmUtils.writeDex(graph.getVM(), path + "." + Integer.toHexString(smali.hashCode()) + ".dex");
        return smali;
    }

    public static ExecutionGraph simplifyMethod(String path, String method) throws IOException, VirtualMachineException {
        var file = new File(path);
        if (!file.isFile()) {
            throw new IOException("Not a file");
        }
        var vm = new VirtualMachineFactory().build(file);
        return Optimizer.getOptimized(vm, method);
    }

    @SuppressWarnings("unused")
    public static final List<String> DEBUGGING_FUNCTIONS = List.of("Lcom/example/check/b;->c()I");

    public static String getCallingEmulateClassInternal() {
        return ClassNameUtils.sourceToInternal(getCallingEmulateClass());
    }

    public static String getCallingEmulateFunctionInternal() {
        return ClassNameUtils.sourceToInternal(getCallingEmulateFunction());
    }

    public static String getCallingEmulateClass() {
        var fullSignature = getCallingEmulateFunction();
        return fullSignature.substring(0, fullSignature.lastIndexOf('.'));
    }

    public static String getCallingEmulateFunction() {
        for (StackTraceElement stackTraceElement : new Exception().getStackTrace()) {
            var name = stackTraceElement.getClassName();
            if (name.startsWith(BASE_EMULATE_PACKAGE)) {
                return name.replace(BASE_EMULATE_PACKAGE + ".", "");
            }
        }
        throw new IllegalCallerException("Not calling in emulate class");
    }

    public static String getCallingClass(int depth) {
        return new Exception().getStackTrace()[depth].getClassName();
    }

    public static void printExecutingFunction(CharSequence... params) {
        var statement = new StringBuilder().append("Call(").append(getCallingClass(2).replace(BASE_EMULATE_PACKAGE + ".", "")).append("): ");
        if (params.length == 0) statement.append("*EMPTY*");
        else for (CharSequence param : params) {
            statement.append(param).append(" ");
        }
        System.err.println(statement);
    }

    public static void disassembleDex(String input, String output) {
        disassembleDex(new File(input), new File(output));
    }

    public static void disassembleDex(File input, File output) {
        org.jf.baksmali.Main.main(new String[]{"disassemble", "--use-locals", "--sequential-labels", "--code-offsets", input.getAbsolutePath(), "--output", output.toString()});
    }

}
