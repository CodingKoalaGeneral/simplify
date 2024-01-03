package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.context.ExecutionGraph;
import xyz.wztong.optimization.impl.*;

import java.util.LinkedList;
import java.util.List;

@SuppressWarnings("UnusedReturnValue")
public class Optimizer {

    private static final List<Optimization> optimizations = new LinkedList<>();
    private static final int DEFAULT_PASS = 5;
    private static final int DEFAULT_SEEK_BACK_LIMIT = 0x10;

    static {
        optimizations.add(new ConstantPredicate());
        optimizations.add(new ConstantPropagation());
        optimizations.add(new ConstantSwitch(DEFAULT_SEEK_BACK_LIMIT));
        optimizations.add(new DeadAssignment());
        optimizations.add(new DeadFunctionResult());
        optimizations.add(new NopInstruction());
        optimizations.add(new Unreachable());
        optimizations.add(new UselessBranch());
    }

    public static int optimize(ExecutionGraph graph) {
        return optimize(graph, DEFAULT_PASS);
    }

    // Return: Re-execute needed count
    public static int optimize(ExecutionGraph graph, int maxPass) {
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
                changes += newChange;
            }
            pass++;
            totalChanges += changes;
        } while (changes != 0 && pass < maxPass);
        if (totalChanges != 0) {
            vm.updateInstructionGraph(method);
        }
        System.out.println("Simplifying(" + totalChanges + "): " + method);
        // TODO: Unreflect
        return totalChanges;
    }

}
