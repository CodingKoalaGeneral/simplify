package org.cf.smalivm.emulate;

import org.cf.smalivm.SideEffect;
import org.cf.smalivm.VirtualMachine;
import org.cf.smalivm.configuration.Configuration;
import org.cf.smalivm.context.ExecutionContext;
import org.cf.smalivm.opcode.Op;
import org.cf.util.ClassNameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class MethodEmulator {

    private static final Logger log = LoggerFactory.getLogger(MethodEmulator.class.getSimpleName());

    private static final Set<String> notDefinedMethods = new HashSet<>();

    private static final Map<String, Class<? extends EmulatedMethod>> cachedEmulatedMethods = new HashMap<>();

    // ConcurrentHashMap.containsKey use get method while HashMap use *private* getNode method
    private static final Map<String, Class<? extends EmulatedMethod>> emulatedMethods = new ConcurrentHashMap<>() {

        public static final String TARGET_CLASS_PREFIX = Configuration.SELF_DEFINED_EMULATE_METHODS_PACKAGE + '.';

        @Override
        public Class<? extends EmulatedMethod> get(Object key) {
            Class<? extends EmulatedMethod> superResult = super.get(key);
            if (superResult != null) {
                return superResult;
            }
            Class<? extends EmulatedMethod> cachedResult = cachedEmulatedMethods.get(key);
            if (cachedResult != null) {
                return cachedResult;
            }
            if (key instanceof String) {
                String methodSignature = (String) key;
                if (notDefinedMethods.contains(methodSignature)) {
                    return null;
                }
                int splitIndex = methodSignature.indexOf("->");
                String targetClass = methodSignature.substring(0, splitIndex);
                String targetClassName = ClassNameUtils.internalToSource(targetClass);
                String targetMethod = methodSignature.substring(splitIndex + 2, methodSignature.indexOf('(', splitIndex));
                String targetEmulate = TARGET_CLASS_PREFIX + targetClassName + "." + targetMethod;
                try {
                    Class<?> result = Class.forName(targetEmulate);
                    if (EmulatedMethod.class.isAssignableFrom(result)) {
                        @SuppressWarnings("unchecked")
                        Class<? extends EmulatedMethod> cEmulatedMethod = (Class<? extends EmulatedMethod>) result;
                        cachedEmulatedMethods.put(methodSignature, cEmulatedMethod);
                        return cEmulatedMethod;
                    } else {
                        if (log.isWarnEnabled()) {
                            log.warn("Class: {} is not a subclass of EmulatedMethod.class", targetEmulate);
                        }
                        notDefinedMethods.add(methodSignature);
                        return null;
                    }
                } catch (ClassNotFoundException e) {
                    notDefinedMethods.add(methodSignature);
                    return null;
                }
            } else {
                return null;
            }
        }

    };

    static {
        addMethod("Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z", android_text_TextUtils_isEmpty.class);
        addMethod("Lorg/cf/simplify/Utils;->breakpoint()V", org_cf_simplify_Utils_breakpoint.class);
        addMethod("Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;", java_lang_Class_forName.class);
        addMethod("Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;", java_lang_reflect_Field_get.class);
        addMethod("Ljava/lang/Object;->getClass()Ljava/lang/Class;", java_lang_Object_getClass.class);
    }

    private final VirtualMachine vm;
    private final ExecutionContext context;
    private final String methodDescriptor;
    private final EmulatedMethod method;

    public MethodEmulator(VirtualMachine vm, ExecutionContext context, String methodDescriptor) {
        this.vm = vm;
        this.context = context;
        this.methodDescriptor = methodDescriptor;
        method = getMethod(methodDescriptor);
    }

    public static void addMethod(String methodDescriptor, Class<? extends EmulatedMethod> methodClass) {
        emulatedMethods.put(methodDescriptor, methodClass);
    }

    public static boolean canEmulate(String methodDescriptor) {
        return emulatedMethods.containsKey(methodDescriptor);
    }

    public static boolean canHandleUnknownValues(String methodDescriptor) {
        Class<? extends EmulatedMethod> methodClass = emulatedMethods.get(methodDescriptor);

        return (methodClass != null) && (UnknownValuesMethod.class.isAssignableFrom(methodClass));
    }

    public static void clearMethods() {
        emulatedMethods.clear();
    }

    private static EmulatedMethod getMethod(String methodDescriptor) {
        Class<? extends EmulatedMethod> methodClass = emulatedMethods.get(methodDescriptor);
        EmulatedMethod em = null;
        try {
            em = methodClass.newInstance();
        } catch (InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }

        return em;
    }

    public void emulate(Op op) {
        try {
            if (method instanceof MethodStateMethod) {
                ((MethodStateMethod) method).execute(vm, op, context.getMethodState());
            } else {
                ((ExecutionContextMethod) method).execute(vm, op, context);
            }
        } catch (Exception e) {
            if (log.isWarnEnabled()) {
                log.warn("Unexpected JVM exception raised while emulating {}: ", methodDescriptor, e);
            }
        }
    }

    public SideEffect.Level getSideEffectLevel() {
        return method.getSideEffectLevel();
    }

    public Set<Throwable> getExceptions() {
        return method.getExceptions();
    }

}
