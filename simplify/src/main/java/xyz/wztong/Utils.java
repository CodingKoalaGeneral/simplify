package xyz.wztong;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.SideEffect;
import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.VirtualMachineFactory;
import org.cf.smalivm.context.ExecutionGraph;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.emulate.EmulatedMethod;
import org.cf.smalivm.emulate.MethodEmulator;
import org.cf.smalivm.exception.VirtualMachineException;
import org.cf.util.ClassNameUtils;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.builder.BuilderInstruction;
import org.jf.dexlib2.builder.instruction.BuilderInstruction10t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction20t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction30t;
import org.jf.dexlib2.writer.io.FileDataStore;
import xyz.wztong.optimization.Optimization;
import xyz.wztong.optimization.Optimizer;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class Utils {
    public static final String BASE_EMULATE_PACKAGE = "xyz.wztong.emulate";
    public static final String BASE_TYPE_PACKAGE = "xyz.wztong.type";
    public static final SideEffect.Level MAX_SIDE_EFFECT_LEVEL = SideEffect.Level.NONE;

    public static String simplifyMethod(String path, String method) throws IOException, VirtualMachineException {
        var file = new File(path);
        if (!file.isFile()) {
            throw new IOException("Not a file");
        }
        var vm = new VirtualMachineFactory().build(file);
        ExecutionGraph graph;
        do {
            graph = vm.execute(method);
            System.out.println();
        } while (Optimizer.optimize(graph) != Optimizer.OPTIMIZER_OPTIMIZED);
        var smali = graph.toSmali(true);
        writeDex(vm, path + "." + Integer.toHexString(smali.hashCode()) + ".dex");
        return smali;
    }

    @SuppressWarnings("unused")
    public static final List<String> DEBUGGING_FUNCTIONS = List.of("Lcom/example/check/b;->c()I");

    static {
        addMethod("Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V");
        addMethod("Landroid/app/Activity;->setContentView(I)V");
        addMethod("Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V");
        addMethod("Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;");
        addMethod("Landroid/widget/Toast;->show()V");
        addMethod("Landroid/app/Activity;->getApplication()Landroid/app/Application;");
    }

    public static void print(String str) {
        System.err.println("=> " + str);
        System.err.flush();
        threadSleep(0);
    }

    public static void threadSleep(long millis) {
        try {
            if (millis != 0) {
                Thread.sleep(millis);
            } else {
                Thread.yield();
            }
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

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

    @SuppressWarnings("unchecked")
    public static <T> T cast(Object obj) {
        return (T) obj;
    }

    private static void addMethod(String signature) {
        MethodEmulator.addMethod(signature, getMethod(signature));
    }

    private static Class<? extends EmulatedMethod> getMethod(String signature) {
        var parts = signature.split("->");
        var className = parts[0];
        var functionName = parts[1].substring(0, parts[1].indexOf('('));
        try {
            return cast(Class.forName(BASE_EMULATE_PACKAGE + "." + ClassNameUtils.toFormat(className, ClassNameUtils.TypeFormat.SOURCE) + "." + functionName));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static void setParameter(MethodState mState, Object object1, String type1, Object object2, String type2) {
        setParameter(mState, new HeapItem(object1, type1), new HeapItem(object2, type2));
    }

    public static void setParameter(MethodState mState, Object object, String type) {
        setParameter(mState, new HeapItem(object, type));
    }

    public static void setParameter(MethodState mState, HeapItem... items) {
        for (int i = 0; i < items.length; i++) {
            mState.assignParameter(mState.getParameterStart() + i, items[i]);
        }
    }

    public static HeapItem makeHeapItem(Object obj) {
        return new HeapItem(obj, ClassNameUtils.toInternal(obj.getClass()));
    }

    public static void writeDex(VirtualMachine vm, String path) {
        try {
            vm.getClassManager().getDexBuilder().writeTo(new FileDataStore(new File(path)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addGotos(Optimization optimization, ExecutionGraphManipulator manipulator, List<Map.Entry<Integer, Integer>> jumpTable) {
        jumpTable.sort(Map.Entry.comparingByKey(Collections.reverseOrder(Integer::compareTo)));
        var impl = manipulator.getMethod().getImplementation();
        for (int i = 0; i < jumpTable.size(); i++) {
            var table = jumpTable.get(i);
            var from = table.getKey();
            var to = table.getValue();
            var toLabel = impl.newLabelForAddress(to);
            BuilderInstruction gotoInstruction;
            var offsetAbs = Math.abs(to - from);
            if (offsetAbs < 0x7f) {
                gotoInstruction = new BuilderInstruction10t(Opcode.GOTO, toLabel);
            } else if (offsetAbs < 0x7fff) {
                gotoInstruction = new BuilderInstruction20t(Opcode.GOTO_16, toLabel);
            } else {
                gotoInstruction = new BuilderInstruction30t(Opcode.GOTO_32, toLabel);
            }
            optimization.print(manipulator.getOp(from) + "@" + Integer.toHexString(from) + " => " + manipulator.getOp(to) + "@" + Integer.toHexString(to));
            manipulator.addInstruction(from, gotoInstruction);
            // After inserting an instruction, all offsets need to be re-caculated
            var insertLength = gotoInstruction.getCodeUnits();
            for (int j = 0; j < jumpTable.size(); j++) {
                var impactTable = jumpTable.get(j);
                // From is always smaller than modifing instruction's position
                var impactFrom = impactTable.getKey();
                var impactTo = impactTable.getValue();
                if (impactTo > from) {
                    var newTo = impactTo + insertLength;
                    jumpTable.set(j, Map.entry(impactFrom, newTo));
                }
            }
        }
    }
}
