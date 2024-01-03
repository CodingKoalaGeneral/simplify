package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionGraph;
import xyz.wztong.Utils;
import xyz.wztong.optimization.impl.*;

import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("UnusedReturnValue")
public class Optimizer {

    private static final Set<Optimization> optimizations = new HashSet<>();
    private static final int MAX_OPTIMIZE_PASS = 5;
    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;

    static {
        addOptimization(new ConstantPredicate());
        addOptimization(new ConstantPropagation());
        addOptimization(new ConstantSwitchSeekBack(DEFAULT_SEEK_BACK_LIMIT));
        addOptimization(new DeadAssignment());
        addOptimization(new DeadFunctionResult());
        addOptimization(new NopInstruction());
        addOptimization(new Unreachable());
        addOptimization(new UselessBranch());
    }

    public static boolean addOptimization(Optimization e) {
        return optimizations.add(e);
    }

    public static int optimize(ExecutionGraph graph) {
        return optimize(optimizations, graph);
    }

    // Return: Re-execute needed count
    public static int optimize(Set<Optimization> optimizations, ExecutionGraph graph) {
        var vm = graph.getVM();
        var method = graph.getMethod();
        var manipulator = new ExecutionGraphManipulator(graph, method, vm, vm.getClassManager().getDexBuilder());
        var reOptimizeChange = 0;
        for (int i = 0; i < MAX_OPTIMIZE_PASS; i++) {
            var reOptimizeChangeRound = 0;
            for (var optimization : optimizations) {
                if (!(optimization instanceof Optimization.ReOptimize)) {
                    continue;
                }
                var newChange = optimization.perform(manipulator);
                if (newChange != 0) {
                    Utils.print("Optimization.ReOptimize: Simplifying (" + newChange + "): " + optimization.getClass().getSimpleName());
                    reOptimizeChangeRound += newChange;
                }
            }
            if (reOptimizeChangeRound == 0) {
                break;
            } else {
                reOptimizeChange += reOptimizeChangeRound;
            }
        }
        if (reOptimizeChange != 0) {
            vm.updateInstructionGraph(method);
            Utils.print("Optimizer.ReOptimize: Simplified(" + reOptimizeChange + "): " + method);
            return reOptimizeChange;
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
        return 0;
    }

}
