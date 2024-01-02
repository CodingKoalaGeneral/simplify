package xyz.wztong.optimization;

import org.cf.simplify.ExecutionGraphManipulator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.IntStream;

public interface Optimization {

    int perform(ExecutionGraphManipulator manipulator);

    default List<Integer> getValidAddresses(ExecutionGraphManipulator manipulator, Predicate<? super Integer> filter) {
        var addresses = manipulator.getAddresses();
        // Maybe failed to execute
        if (addresses.length == 0) {
            return new ArrayList<>();
        }
        return IntStream.of(addresses).boxed().filter(filter).sorted(Collections.reverseOrder()).toList();
    }

}
