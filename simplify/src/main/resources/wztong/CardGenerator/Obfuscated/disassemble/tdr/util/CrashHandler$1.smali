.class Ltdr/util/CrashHandler$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltdr/util/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Ltdr/util/CrashHandler;


# direct methods
.method constructor <init>(Ltdr/util/CrashHandler;)V
    .locals 0

    #@0
    iput-object p1, p0, Ltdr/util/CrashHandler$1;->this$0:Ltdr/util/CrashHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    const-string v0, "\u06e0\u06e6"

    #@2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

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
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@12
    move-result v0

    #@13
    if-gtz v0, :cond_0

    #@15
    const-string v0, "\u06e3\u06e2\u06df"

    #@17
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    const-string v0, "\u06df\u06df\u06e6"

    #@1e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    goto :goto_0

    #@23
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@26
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@29
    move-result v0

    #@2a
    if-ltz v0, :cond_1

    #@2c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2f
    const-string v0, "\u06df\u06df\u06e6"

    #@31
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    goto :goto_0

    #@36
    :cond_1
    const-string v0, "\u06e4\u06df\u06e8"

    #@38
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@3b
    move-result v0

    #@3c
    goto :goto_0

    #@3d
    :sswitch_2
    const-string v0, "\u06e0\u06e6"

    #@3f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@42
    move-result v0

    #@43
    goto :goto_0

    #@44
    :sswitch_3
    return-void

    #@45
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0xdc06 -> :sswitch_0
        0x1aa706 -> :sswitch_1
        0x1ab660 -> :sswitch_2
        0x1ab9cd -> :sswitch_3
    .end sparse-switch
.end method
