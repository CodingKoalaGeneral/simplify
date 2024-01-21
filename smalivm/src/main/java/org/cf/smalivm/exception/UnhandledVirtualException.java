package org.cf.smalivm.exception;

import org.cf.smalivm.context.ExecutionNode;

public class UnhandledVirtualException extends VirtualMachineException {

    private static final long serialVersionUID = 7055493085764845808L;

    private final Throwable exception;
    private final ExecutionNode node;

    public Throwable getException() {
        return exception;
    }

    public ExecutionNode getNode() {
        return node;
    }

    public UnhandledVirtualException(ExecutionNode node, Throwable exception) {
        super(exception.getMessage());
        this.exception = exception;
        this.node = node;
    }

    @Override
    public String toString() {
        return "Unhandled virtual exception: " + exception;
    }

}
