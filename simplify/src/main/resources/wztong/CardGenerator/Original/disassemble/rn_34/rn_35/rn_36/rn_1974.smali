.class public Lrn_34/rn_35/rn_36/rn_1974;
.super Ljava/lang/Object;
.source "rn_1974.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static rn_1976(Landroid/view/MotionEvent;)I
    .locals 0

    #@0
    .line 7
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result p0

    #@4
    return p0
.end method
