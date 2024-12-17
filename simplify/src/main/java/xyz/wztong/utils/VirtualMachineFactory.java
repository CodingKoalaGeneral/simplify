package xyz.wztong.utils;

import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.dex.SmaliParser;
import org.cf.smalivm.type.ClassManager;
import org.cf.smalivm.type.ClassManagerFactory;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

public class VirtualMachineFactory {

    private int maxAddressVisits = 500;
    private int maxCallDepth = 20;
    private int maxExecutionTime = 5 * 60;
    private int maxMethodVisits = 1_000_000;
    private int outputApiLevel = SmaliParser.DEX_API_LEVEL;
    private ClassManager classManager;

    public VirtualMachineFactory setMaxAddressVisits(int maxAddressVisits) {
        this.maxAddressVisits = maxAddressVisits;
        return this;
    }

    public VirtualMachineFactory setInputPath(String inputPath) {
        try {
            this.classManager = new ClassManagerFactory().build(inputPath, outputApiLevel);
        } catch (IOException e) {
            throw new IllegalStateException("Unable to set input path", e);
        }
        return this;
    }

    public VirtualMachineFactory setOutputApiLevel(int outputApiLevel) {
        this.outputApiLevel = outputApiLevel;
        return this;
    }

    public VirtualMachineFactory setMaxCallDepth(int maxCallDepth) {
        this.maxCallDepth = maxCallDepth;
        return this;
    }

    public VirtualMachineFactory setMaxExecutionTime(int maxExecutionTime) {
        this.maxExecutionTime = maxExecutionTime;
        return this;
    }

    public VirtualMachineFactory setMaxMethodVisits(int maxMethodVisits) {
        this.maxMethodVisits = maxMethodVisits;
        return this;
    }

    public VirtualMachine build() {
        try {
            var ccVirtualMachine = VirtualMachine.class.getDeclaredConstructor(ClassManager.class, int.class, int.class, int.class, int.class);
            ccVirtualMachine.setAccessible(true);
            return ccVirtualMachine.newInstance(classManager, maxAddressVisits, maxCallDepth, maxMethodVisits, maxExecutionTime);
        } catch (NoSuchMethodException | InstantiationException | IllegalAccessException |
                 InvocationTargetException e) {
            throw new IllegalStateException("Why I cannot build virtual machine?", e);
        }
    }

    public VirtualMachineFactory setClassManager(ClassManager classManager) {
        this.classManager = classManager;
        return this;
    }
}
