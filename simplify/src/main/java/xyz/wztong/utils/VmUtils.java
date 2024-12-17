package xyz.wztong.utils;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.context.HeapItem;
import org.cf.smalivm.context.MethodState;
import org.cf.smalivm.emulate.EmulatedMethod;
import org.cf.smalivm.emulate.MethodEmulator;
import org.cf.smalivm.type.SelfDefinedInstance;
import org.cf.smalivm.type.UnknownValue;
import org.cf.util.ClassNameUtils;
import org.jf.dexlib2.builder.BuilderTryBlock;
import org.jf.dexlib2.writer.io.FileDataStore;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;

public class VmUtils {

    public static void setParameter(MethodState mState, Object object1, String type1, Object object2, String type2) {
        setParameter(mState, new HeapItem(object1, type1), new HeapItem(object2, type2));
    }

    public static String getInternalType(Object obj) {
        if (obj instanceof SelfDefinedInstance selfDefinedInstance) {
            return selfDefinedInstance.getInternalType();
        } else {
            return ClassNameUtils.toInternal(obj.getClass());
        }
    }

    public static void setParameter(MethodState mState, Object object, String type) {
        setParameter(mState, new HeapItem(object, type));
    }

    public static void setParameter(MethodState mState, HeapItem... items) {
        for (int i = 0; i < items.length; i++) {
            mState.assignParameter(mState.getParameterStart() + i, items[i]);
        }
    }

    public static HeapItem makeHeapItem(Object obj) {
        return new HeapItem(obj, ClassNameUtils.toInternal(obj.getClass()));
    }

    public static void writeDex(VirtualMachine vm, String path) {
        try {
            vm.getClassManager().getDexBuilder().writeTo(new FileDataStore(new File(path)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static HashSet<Object> getTryHandlerAddresses(ExecutionGraphManipulator manipulator) {
        var handlerAddresses = new HashSet<>();
        int[] allAddresses = manipulator.getAddresses();
        Arrays.sort(allAddresses);
        int highestAddress = allAddresses[allAddresses.length - 1];
        for (BuilderTryBlock tryBlock : manipulator.getTryBlocks()) {
            var handlers = tryBlock.getExceptionHandlers();
            for (var handler : handlers) {
                int address = handler.getHandlerCodeAddress();
                var instruction = manipulator.getInstruction(address);
                if (instruction == null) {
                    throw new IllegalStateException("It's a valid address, but without instruction?");
                }
                while (address < highestAddress) {
                    // Add all instructions until return, goto, etc.
                    handlerAddresses.add(address);
                    address += instruction.getCodeUnits();
                    instruction = manipulator.getInstruction(address);
                    if (instruction == null) {
                        throw new IllegalStateException("It's a handler address, it should contains an instruction!");
                    }
                    if (!instruction.getOpcode().canContinue()) {
                        break;
                    }
                }
            }
        }
        return handlerAddresses;
    }

    static void addMethod(String signature) {
        MethodEmulator.addMethod(signature, getMethod(signature));
    }

    private static Class<? extends EmulatedMethod> getMethod(String signature) {
        var parts = signature.split("->");
        var className = parts[0];
        var functionName = parts[1].substring(0, parts[1].indexOf('('));
        try {
            return CommonUtils.cast(Class.forName(Utils.BASE_EMULATE_PACKAGE + "." + ClassNameUtils.toFormat(className, ClassNameUtils.TypeFormat.SOURCE) + "." + functionName));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean isUnknownValue(HeapItem heapItem) {
        if (heapItem == null) {
            return true;
        }
        var heapItemValue = heapItem.getValue();
        if (heapItemValue == null) {
            return false;
        }
        return heapItemValue.getClass() == UnknownValue.class;
    }

    public static String getVirtualMethodDescriptor(Method method) {
        var sb = new StringBuilder(method.getName());
        sb.append("(");
        var params = method.getParameterTypes();
        for (var param : params) {
            sb.append(ClassNameUtils.toInternal(param));
        }
        sb.append(")");
        sb.append(ClassNameUtils.toInternal(method.getReturnType()));
        return sb.toString();
    }
}
