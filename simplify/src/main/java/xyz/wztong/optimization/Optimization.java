package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;

import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.IntStream;

public interface Optimization {

    int perform(ExecutionGraphManipulator manipulator);

    default List<Integer> getValidAddresses(ExecutionGraphManipulator manipulator, Predicate<? super Integer> filter) {
        return IntStream.of(manipulator.getAddresses()).boxed().filter(filter).sorted(Collections.reverseOrder()).toList();
    }

}
