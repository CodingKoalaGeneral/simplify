package xyz.wztong.type.android.widget;

import xyz.wztong.type.SelfDefinedInstance;

public class Toast extends SelfDefinedInstance {
    public CharSequence text = "";

    public Toast() {
    }

    public Toast(CharSequence text) {
        this.text = text;
    }
}
