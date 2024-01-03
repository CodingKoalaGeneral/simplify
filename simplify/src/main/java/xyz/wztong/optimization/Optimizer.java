package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionGraph;
import xyz.wztong.Utils;
import xyz.wztong.optimization.impl.*;

import java.util.*;

@SuppressWarnings("UnusedReturnValue")
public class Optimizer {

    private static final Set<Optimization> optimizations = new HashSet<>();
    private static final int DEFAULT_PASS = 5;
    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;

    static {
        addOptimization(new ConstantPredicate());
        addOptimization(new ConstantPropagation());
//        addOptimization(new ConstantSwitchSeekBack(DEFAULT_SEEK_BACK_LIMIT));
        addOptimization(new DeadAssignment());
        addOptimization(new DeadFunctionResult());
        addOptimization(new NopInstruction());
        addOptimization(new Unreachable());
        addOptimization(new UselessBranch());
    }

    public static boolean addOptimization(Optimization e) {
        return optimizations.add(e);
    }

    public static int optimize(Set<Optimization> optimizations, ExecutionGraph graph) {
        return optimize(optimizations, graph, DEFAULT_PASS);
    }

    public static int optimize(ExecutionGraph graph, int maxPass) {
        return optimize(optimizations, graph, maxPass);
    }

    public static int optimize(ExecutionGraph graph) {
        return optimize(optimizations, graph, DEFAULT_PASS);
    }

    // Return: Re-execute needed count
    public static int optimize(Set<Optimization> optimizations, ExecutionGraph graph, int maxPass) {
        var vm = graph.getVM();
        var classManager = vm.getClassManager();
        var dexBuilder = classManager.getDexBuilder();
        var method = graph.getMethod();
        var manipulator = new ExecutionGraphManipulator(graph, method, vm, dexBuilder);
        int pass = 0;
        int totalChanges = 0;
        int changes;
        do {
            changes = 0;
            for (Optimization optimization : optimizations) {
                var newChange = optimization.perform(manipulator);
                if (newChange != 0) {
                    Utils.print("Optimizer: Simplifying (" + newChange + "): " + optimization.getClass().getSimpleName());
                }
                changes += newChange;
            }
            pass++;
            totalChanges += changes;
        } while (changes != 0 && pass < maxPass);
        if (totalChanges != 0) {
            vm.updateInstructionGraph(method);
        }
        Utils.print("Optimizer: Simplified(" + totalChanges + "): " + method);
        // TODO: Unreflect
        return totalChanges;
    }

}
