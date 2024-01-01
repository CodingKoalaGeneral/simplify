.class Lrn_34/rn_35/rn_36/rn_4206$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrn_34/rn_35/rn_36/rn_4206;->rn_418(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lrn_34/rn_35/rn_36/rn_4206;


# direct methods
.method constructor <init>(Lrn_34/rn_35/rn_36/rn_4206;)V
    .locals 0

    #@0
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206$3;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    #@0
    const-string v0, "\u06e0\u06e1\u06e3"

    #@2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@c
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206$3;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@e
    # getter for: Lrn_34/rn_35/rn_36/rn_4206;->detector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lrn_34/rn_35/rn_36/rn_4206;->access$000(Lrn_34/rn_35/rn_36/rn_4206;)Landroid/view/GestureDetector;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@15
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@18
    move-result v0

    #@19
    if-gtz v0, :cond_0

    #@1b
    const-string v0, "\u06e7\u06e2\u06e6"

    #@1d
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :sswitch_1
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206$3;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@24
    invoke-virtual {v0, p2}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4297(Landroid/view/MotionEvent;)Z

    #@27
    move-result v0

    #@28
    return v0

    #@29
    :cond_0
    const-string v0, "\u06e5\u06e6\u06e1"

    #@2b
    goto :goto_1

    #@2c
    :sswitch_2
    const-string v0, "\u06e0\u06e1\u06e3"

    #@2e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x1aab02 -> :sswitch_0
        0x1abe60 -> :sswitch_1
        0x1ac56b -> :sswitch_2
    .end sparse-switch
.end method
