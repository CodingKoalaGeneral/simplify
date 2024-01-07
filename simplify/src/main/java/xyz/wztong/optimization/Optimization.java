package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import xyz.wztong.Utils;

import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.IntStream;

@SuppressWarnings("unused")
public interface Optimization {

    interface ReExecute extends Optimization {
        default void manipulatorRebuildGraph(ExecutionGraphManipulator manipulator) {
            throw new IllegalStateException("ReExecute don't need it");
        }
    }

    @interface Original {
    }

    interface ReOptimize extends Optimization {
        default void manipulatorRebuildGraph(ExecutionGraphManipulator manipulator) {
            try {
                var mRebuildGraph = ExecutionGraphManipulator.class.getDeclaredMethod("rebuildGraph");
                mRebuildGraph.setAccessible(true);
                mRebuildGraph.invoke(manipulator);
            } catch (NoSuchMethodException | InvocationTargetException | IllegalAccessException e) {
                throw new IllegalStateException("Why I cannot rebuild graph?", e);
            }
        }
    }

    interface Refactor extends Optimization {
        default void manipulatorRebuildGraph(ExecutionGraphManipulator manipulator) {
            throw new IllegalStateException("Refactor don't need it");
        }
    }

    int perform(ExecutionGraphManipulator manipulator);

    void manipulatorRebuildGraph(ExecutionGraphManipulator manipulator);

    default List<Integer> getValidAddresses(ExecutionGraphManipulator manipulator, Predicate<Integer> filter) {
        return IntStream.of(manipulator.getAddresses()).boxed().filter(filter).sorted(Collections.reverseOrder()).toList();
    }

    default void print(Object obj) {
        Utils.print(this.getClass().getSimpleName() + ": " + obj);
    }

}
