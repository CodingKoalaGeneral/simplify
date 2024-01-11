package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.ExecutionGraph;
import org.cf.smalivm.exception.VirtualMachineException;
import xyz.wztong.Utils;
import xyz.wztong.optimization.impl.exec.ConstantSwitchSeekBack;
import xyz.wztong.optimization.impl.exec.MergeMultipleGoto;
import xyz.wztong.optimization.impl.exec.SwitchThenGoto;
import xyz.wztong.optimization.impl.exec.UnreachableSwitchBranch;
import xyz.wztong.optimization.impl.opt.*;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

@SuppressWarnings("UnusedReturnValue")
public class Optimizer {

    private static final Set<Class<? extends Optimization>> DEFAULT_OPTIMIZATIONS_SET = new HashSet<>();
    private static final List<Optimization> DEFAULT_OPTIMIZATIONS = new LinkedList<>();
    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;
    public static final int OPTIMIZER_OPTIMIZED = -1;
    private static int maxOptimizePass = 0x10;

    public static void setMaxOptimizePass(int optimizePass) {
        maxOptimizePass = optimizePass;
    }

    static {
        // ReOptimize
        addOptimization(new ConstantPredicate());
        addOptimization(new ConstantPropagation());
        addOptimization(new DeadAssignment());
        addOptimization(new DeadFunctionResult());
        addOptimization(new NopInstruction());
        addOptimization(new UnreachableInstruction());
        addOptimization(new UselessBranch());

        // Re-Execute: Order required
        addOptimization(new MergeMultipleGoto());
        addOptimization(new ConstantSwitchSeekBack(DEFAULT_SEEK_BACK_LIMIT));
        addOptimization(new UnreachableSwitchBranch());
        addOptimization(new SwitchThenGoto());
    }

    public static boolean addOptimization(Optimization e) {
        if(!DEFAULT_OPTIMIZATIONS_SET.add(e.getClass())){
            return false;
        }
        return DEFAULT_OPTIMIZATIONS.add(e);
    }

    public static int optimize(ExecutionGraph graph) {
        return optimize(DEFAULT_OPTIMIZATIONS, graph);
    }

    public static int optimize(Optimization optimization, ExecutionGraph graph) {
        return optimize(List.of(optimization), graph);
    }

    public static int optimize(List<Optimization> optimizations, ExecutionGraph graph) {
        var vm = graph.getVM();
        var method = graph.getMethod();
        var manipulator = new ExecutionGraphManipulator(graph, method, vm, vm.getClassManager().getDexBuilder());
        var reOptimizeCount = 0;
        for (int i = 0; i < maxOptimizePass; i++) {
            var passChanges = 0;
            for (var optimization : optimizations) {
                if (!(optimization instanceof Optimization.ReOptimize)) {
                    continue;
                }
                var newChange = optimization.perform(manipulator);
                if (newChange != 0) {
                    Utils.print("Optimization.ReOptimize: Simplifying (" + newChange + "): " + optimization.getClass().getSimpleName());
                    vm.updateInstructionGraph(method);
                    passChanges += newChange;
                }
            }
            if (passChanges == 0) {
                break;
            } else {
                reOptimizeCount += passChanges;
            }
        }
        if (reOptimizeCount != 0) {
            return reOptimizeCount;
        } else {
            Utils.print("Optimization.ReOptimize: No further to optimize, doing Optimization.ReExecute");
        }
        // Re-Execute should just run once, then re-execute
        for (var optimization : optimizations) {
            if (!(optimization instanceof Optimization.ReExecute)) {
                continue;
            }
            var newChange = optimization.perform(manipulator);
            if (newChange != 0) {
                Utils.print("Optimizer.ReExecute: Simplified(" + newChange + "): " + optimization.getClass().getSimpleName() + " @" + method);
                vm.updateInstructionGraph(method);
                return newChange;
            }
        }
        Utils.print("Optimization: No further to optimize, finished");
        return OPTIMIZER_OPTIMIZED;
    }

    public static ExecutionGraph getOptimized(VirtualMachine vm, String method) throws VirtualMachineException {
        ExecutionGraph graph;
        do {
            graph = vm.execute(method);
        } while (optimize(graph) != OPTIMIZER_OPTIMIZED);
        return graph;
    }
}
