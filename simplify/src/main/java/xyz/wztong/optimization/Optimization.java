package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;
import xyz.wztong.Utils;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.IntStream;

public interface Optimization {

    interface ReExecute extends Optimization {
    }

    interface ReOptimize extends Optimization {
    }

    interface Refactor extends Optimization {
    }

    int perform(ExecutionGraphManipulator manipulator);

    default List<Integer> getValidAddresses(ExecutionGraphManipulator manipulator, Predicate<Integer> filter) {
        var addresses = manipulator.getAddresses();
        // Maybe failed to execute
        if (addresses.length == 0) {
            return new ArrayList<>();
        }
        return IntStream.of(addresses).boxed().filter(filter).sorted(Collections.reverseOrder()).toList();
    }

    default void print(String msg) {
        Utils.print(this.getClass().getSimpleName() + ": " + msg);
    }

    default void print(Object obj) {
        print(String.valueOf(obj));
    }

    default <T> void processValidAddresses(ExecutionGraphManipulator manipulator, Predicate<Integer> filter, Function<Integer, T> mapper, Consumer<T> consumer) {
        var addresses = manipulator.getAddresses();
        // Maybe failed to execute
        if (addresses.length == 0) {
            return;
        }
        IntStream.of(addresses).boxed().filter(filter).map(mapper).sorted(Collections.reverseOrder()).forEach(consumer);
    }

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
