package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import xyz.wztong.optimization.Optimization;

public class SwitchThenGoto implements Optimization.ReExecute {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        return 0;
    }
}
