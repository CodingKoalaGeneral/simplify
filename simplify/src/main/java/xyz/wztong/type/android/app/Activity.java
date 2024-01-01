package xyz.wztong.type.android.app;


import xyz.wztong.type.SelfDefinedInstance;

public class Activity extends SelfDefinedInstance {

    public boolean superOnCreateCalled = false;
    public Integer contentView = null;
    public Application application = Application.INSTANCE;

}
