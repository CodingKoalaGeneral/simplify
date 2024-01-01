.class public Lwode/muxue/TiecodeDebugApplication;
.super Lrn_34/rn_35/rn_36/rn_4577;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Lrn_34/rn_35/rn_36/rn_4577;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 1

    #@0
    const-string v0, "\u06e8\u06e4\u06e6"

    #@2
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    return-void

    #@b
    :sswitch_1
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@e
    move-result v0

    #@f
    if-gtz v0, :cond_0

    #@11
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@14
    const-string v0, "\u06e1\u06e0\u06e8"

    #@16
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    const-string v0, "\u06e8\u06e4\u06e6"

    #@1d
    goto :goto_1

    #@1e
    :sswitch_2
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@20
    invoke-static {}, Ltdr/util/CrashHandler;->getInstance()Ltdr/util/CrashHandler;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ltdr/util/CrashHandler;->init()V

    #@27
    const-string v0, "\u06e3\u06e6\u06e0"

    #@29
    goto :goto_1

    #@2a
    :sswitch_3
    const-string v0, "com.tiecode.develop"

    #@2c
    invoke-static {p0, v0}, Ltdr/util/TDRLogcatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    #@2f
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@32
    move-result v0

    #@33
    if-ltz v0, :cond_1

    #@35
    const-string v0, "\u06e4\u06e6\u06e0"

    #@37
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@3a
    move-result v0

    #@3b
    goto :goto_0

    #@3c
    :cond_1
    const-string v0, "\u06e0\u06e8\u06e8"

    #@3e
    goto :goto_1

    #@3f
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0x1aabe0 -> :sswitch_0
        0x1ab6dd -> :sswitch_3
        0x1aba9e -> :sswitch_1
        0x1ac96a -> :sswitch_2
    .end sparse-switch
.end method
