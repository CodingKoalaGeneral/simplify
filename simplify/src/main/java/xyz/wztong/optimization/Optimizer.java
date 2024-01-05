package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionGraph;
import xyz.wztong.Utils;
import xyz.wztong.optimization.impl.*;

import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("UnusedReturnValue")
public class Optimizer {

    private static final Set<Optimization> DEFAULT_OPTIMIZATIONS = new HashSet<>();
    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;
    public static final int OPTIMIZER_OPTIMIZED = -1;
    private static int maxOptimizePass = 0x10;

    public static void setMaxOptimizePass(int optimizePass) {
        maxOptimizePass = optimizePass;
    }

    static {
        addOptimization(new ConstantPredicate());
        addOptimization(new ConstantPropagation());
        addOptimization(new ConstantSwitchSeekBack(DEFAULT_SEEK_BACK_LIMIT));
        addOptimization(new DeadAssignment());
        addOptimization(new DeadFunctionResult());
        addOptimization(new MergeMultipleGoto());
        addOptimization(new NopInstruction());
        addOptimization(new UnreachableInstruction());
        addOptimization(new UnreachableSwitchBranch());
        addOptimization(new UselessBranch());
    }

    public static boolean addOptimization(Optimization e) {
        return DEFAULT_OPTIMIZATIONS.add(e);
    }

    public static int optimize(ExecutionGraph graph) {
        return optimize(DEFAULT_OPTIMIZATIONS, graph);
    }

    public static int optimize(Set<Optimization> optimizations, ExecutionGraph graph) {
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

}
