package xyz.wztong.type.android.widget;

import xyz.wztong.type.SelfDefinedInstance;

public class Toast implements SelfDefinedInstance {
    public CharSequence text = "";

    public Toast() {
    }

    public Toast(CharSequence text) {
        this.text = text;
    }
}
