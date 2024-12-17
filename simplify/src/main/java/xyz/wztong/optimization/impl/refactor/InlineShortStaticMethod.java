package xyz.wztong.optimization.impl.refactor;

import org.cf.simplify.ExecutionGraphManipulator;
import xyz.wztong.optimization.Optimization;

public class InlineShortStaticMethod implements Optimization.Refactor {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        return 0;
    }
}
