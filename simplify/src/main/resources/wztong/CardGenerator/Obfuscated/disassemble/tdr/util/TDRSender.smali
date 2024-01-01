.class public final Ltdr/util/TDRSender;
.super Ljava/lang/Object;


# static fields
.field private static final ACTION_CRASH:Ljava/lang/String; = "com.tiecode.CRASH"

.field private static final ACTION_LOG:Ljava/lang/String; = "com.tiecode.LOGCAT"

.field private static final ACTION_MEMORY:Ljava/lang/String; = "com.tiecode.MEMORY"

.field private static final CRASH:Ljava/lang/String; = "crash"

.field private static final LOG_LINE:Ljava/lang/String; = "log_line"

.field private static final MEMORY_FREE:Ljava/lang/String; = "memory_free"

.field private static final MEMORY_HEAP:Ljava/lang/String; = "memory_heap"

.field private static final MEMORY_RSS:Ljava/lang/String; = "memory_rss"

.field private static context:Landroid/content/Context;

.field private static debuggerPkg:Ljava/lang/String;


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
    const-string v0, "\u06e5\u06e0\u06e6"

    #@2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

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
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@d
    sput-object p0, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@12
    move-result v0

    #@13
    if-ltz v0, :cond_0

    #@15
    const-string v0, "\u06e5\u06e0\u06e6"

    #@17
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    const-string v0, "\u06e1\u06e1\u06e4"

    #@1e
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    goto :goto_0

    #@23
    :sswitch_2
    sput-object p1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@25
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@28
    move-result v0

    #@29
    if-gtz v0, :cond_1

    #@2b
    const-string v0, "\u06e1\u06e1\u06e4"

    #@2d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    goto :goto_0

    #@32
    :cond_1
    const-string v0, "\u06e0\u06e3\u06e1"

    #@34
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :sswitch_3
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@3c
    move-result v0

    #@3d
    if-gtz v0, :cond_2

    #@3f
    const-string v0, "\u06e8\u06e2\u06e0"

    #@41
    goto :goto_1

    #@42
    :cond_2
    const-string v0, "\u06e5\u06e0\u06e6"

    #@44
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@47
    move-result v0

    #@48
    goto :goto_0

    #@49
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        0x1aab3e -> :sswitch_0
        0x1aaec4 -> :sswitch_2
        0x1abdab -> :sswitch_1
        0x1ac262 -> :sswitch_3
    .end sparse-switch
.end method

.method public static sendCrash(Ljava/lang/Throwable;)V
    .locals 2

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e1\u06e2\u06e3"

    #@3
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    :goto_0
    sparse-switch v1, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    return-void

    #@c
    :sswitch_1
    sget-object v1, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@e
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@11
    const-string v1, "\u06df\u06e6\u06e6"

    #@13
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    goto :goto_0

    #@18
    :sswitch_2
    const-string v1, "crash"

    #@1a
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@1d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@20
    move-result v1

    #@21
    if-ltz v1, :cond_0

    #@23
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@26
    :cond_0
    const-string v1, "\u06e7\u06e3\u06e4"

    #@28
    :goto_1
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2b
    move-result v1

    #@2c
    goto :goto_0

    #@2d
    :sswitch_3
    const-string v1, "com.tiecode.CRASH"

    #@2f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@32
    const-string v1, "\u06e8\u06e0\u06e7"

    #@34
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@37
    move-result v1

    #@38
    goto :goto_0

    #@39
    :sswitch_4
    sget-object v1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@3b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@3e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@41
    move-result v1

    #@42
    if-ltz v1, :cond_1

    #@44
    const-string v1, "\u06e1\u06e2\u06e3"

    #@46
    :goto_2
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@49
    move-result v1

    #@4a
    goto :goto_0

    #@4b
    :cond_1
    const-string v1, "\u06e1\u06e4\u06e8"

    #@4d
    goto :goto_2

    #@4e
    :sswitch_5
    const-string v1, "\u06e1\u06e2\u06e3"

    #@50
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@53
    move-result v1

    #@54
    goto :goto_0

    #@55
    :sswitch_6
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@57
    new-instance v0, Landroid/content/Intent;

    #@59
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5c
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@5f
    move-result v1

    #@60
    if-gtz v1, :cond_2

    #@62
    const-string v1, "\u06e1\u06e4\u06e8"

    #@64
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@67
    move-result v1

    #@68
    goto :goto_0

    #@69
    :cond_2
    const-string v1, "\u06e5\u06e3\u06df"

    #@6b
    goto :goto_1

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x1aa7df -> :sswitch_0
        0x1aaee2 -> :sswitch_6
        0x1aaf25 -> :sswitch_3
        0x1ab6a6 -> :sswitch_5
        0x1abe01 -> :sswitch_4
        0x1ac588 -> :sswitch_1
        0x1ac8ef -> :sswitch_2
    .end sparse-switch
.end method

.method public static sendLogcatLine(Ljava/lang/String;)V
    .locals 2

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e2\u06e6"

    #@3
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    :goto_0
    sparse-switch v1, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@d
    new-instance v0, Landroid/content/Intent;

    #@f
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@12
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@15
    move-result v1

    #@16
    if-gtz v1, :cond_4

    #@18
    const-string v1, "\u06e2\u06e7\u06e8"

    #@1a
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1d
    move-result v1

    #@1e
    goto :goto_0

    #@1f
    :sswitch_1
    const-string v1, "com.tiecode.LOGCAT"

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@24
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@27
    move-result v1

    #@28
    if-ltz v1, :cond_0

    #@2a
    const-string v1, "\u06e4\u06df\u06e5"

    #@2c
    :goto_1
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2f
    move-result v1

    #@30
    goto :goto_0

    #@31
    :cond_0
    const-string v1, "\u06e6\u06e5\u06e5"

    #@33
    goto :goto_1

    #@34
    :sswitch_2
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@37
    move-result v1

    #@38
    if-gtz v1, :cond_1

    #@3a
    const-string v1, "\u06e7\u06e7\u06e1"

    #@3c
    :goto_2
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@3f
    move-result v1

    #@40
    goto :goto_0

    #@41
    :cond_1
    const-string v1, "\u06e2\u06e6"

    #@43
    goto :goto_2

    #@44
    :sswitch_3
    const-string v1, "log_line"

    #@46
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@49
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@4c
    move-result v1

    #@4d
    if-gtz v1, :cond_2

    #@4f
    const-string v1, "\u06e2\u06e1\u06e4"

    #@51
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@54
    move-result v1

    #@55
    goto :goto_0

    #@56
    :cond_2
    const-string v1, "\u06e2\u06e7\u06e8"

    #@58
    goto :goto_2

    #@59
    :sswitch_4
    sget-object v1, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@5b
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@5e
    const-string v1, "\u06e4\u06e5\u06e1"

    #@60
    goto :goto_2

    #@61
    :sswitch_5
    sget-object v1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@66
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@69
    move-result v1

    #@6a
    if-gtz v1, :cond_3

    #@6c
    const-string v1, "\u06e6\u06e5\u06e5"

    #@6e
    :goto_3
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@71
    move-result v1

    #@72
    goto :goto_0

    #@73
    :cond_3
    const-string v1, "\u06e2\u06e1\u06e4"

    #@75
    goto :goto_3

    #@76
    :cond_4
    const-string v1, "\u06e1\u06e5\u06e1"

    #@78
    goto :goto_1

    #@79
    :sswitch_6
    return-void

    #@7a
    :sswitch_data_0
    .sparse-switch
        0xdc44 -> :sswitch_0
        0x1aaf3d -> :sswitch_5
        0x1ab285 -> :sswitch_1
        0x1ab343 -> :sswitch_4
        0x1ab9ca -> :sswitch_2
        0x1aba80 -> :sswitch_6
        0x1ac206 -> :sswitch_3
    .end sparse-switch
.end method

.method public static sendMemoryInfo(JJJ)V
    .locals 2

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e0\u06e7\u06e0"

    #@3
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    :goto_0
    sparse-switch v1, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    sget-object v1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@13
    move-result v1

    #@14
    if-gtz v1, :cond_0

    #@16
    const-string v1, "\u06e2\u06e6\u06df"

    #@18
    :goto_1
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1b
    move-result v1

    #@1c
    goto :goto_0

    #@1d
    :cond_0
    const-string v1, "\u06e2\u06e5\u06e7"

    #@1f
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@22
    move-result v1

    #@23
    goto :goto_0

    #@24
    :sswitch_1
    const-string v1, "memory_heap"

    #@26
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@29
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2c
    move-result v1

    #@2d
    if-gtz v1, :cond_2

    #@2f
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@32
    const-string v1, "\u06e0\u06e7\u06e0"

    #@34
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@37
    move-result v1

    #@38
    goto :goto_0

    #@39
    :sswitch_2
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3c
    move-result v1

    #@3d
    if-ltz v1, :cond_1

    #@3f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@42
    const-string v1, "\u06e6\u06e1\u06e1"

    #@44
    :goto_2
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@47
    move-result v1

    #@48
    goto :goto_0

    #@49
    :cond_1
    const-string v1, "\u06e0\u06e7\u06e0"

    #@4b
    goto :goto_2

    #@4c
    :sswitch_3
    sget-object v1, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@4e
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@51
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@54
    move-result v1

    #@55
    if-gtz v1, :cond_3

    #@57
    :cond_2
    const-string v1, "\u06e1\u06e0\u06df"

    #@59
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@5c
    move-result v1

    #@5d
    goto :goto_0

    #@5e
    :cond_3
    const-string v1, "\u06e1\u06e1\u06e5"

    #@60
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@63
    move-result v1

    #@64
    goto :goto_0

    #@65
    :sswitch_4
    const-string v1, "memory_rss"

    #@67
    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@6a
    const-string v1, "\u06e7\u06e6\u06e6"

    #@6c
    :goto_3
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@6f
    move-result v1

    #@70
    goto :goto_0

    #@71
    :sswitch_5
    const-string v1, "memory_free"

    #@73
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@76
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@79
    move-result v1

    #@7a
    if-ltz v1, :cond_4

    #@7c
    const-string v1, "\u06e0\u06e7\u06df"

    #@7e
    goto :goto_3

    #@7f
    :cond_4
    const-string v1, "\u06e4\u06e8\u06e2"

    #@81
    goto :goto_3

    #@82
    :sswitch_6
    const-string v1, "com.tiecode.MEMORY"

    #@84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@87
    const-string v1, "\u06e2\u06e6\u06df"

    #@89
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@8c
    move-result v1

    #@8d
    goto/16 :goto_0

    #@8f
    :sswitch_7
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@91
    new-instance v0, Landroid/content/Intent;

    #@93
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@96
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@99
    move-result v1

    #@9a
    if-ltz v1, :cond_5

    #@9c
    const-string v1, "\u06e1\u06e1\u06e5"

    #@9e
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@a1
    move-result v1

    #@a2
    goto/16 :goto_0

    #@a4
    :cond_5
    const-string v1, "\u06e0\u06e7\u06df"

    #@a6
    goto/16 :goto_1

    #@a8
    :sswitch_8
    return-void

    #@a9
    nop

    #@aa
    :sswitch_data_0
    .sparse-switch
        0x1aabb8 -> :sswitch_0
        0x1aabb9 -> :sswitch_7
        0x1aaea0 -> :sswitch_5
        0x1aaec5 -> :sswitch_8
        0x1ab304 -> :sswitch_6
        0x1ab31b -> :sswitch_1
        0x1abade -> :sswitch_4
        0x1ac5e7 -> :sswitch_3
        0x1ac908 -> :sswitch_2
    .end sparse-switch
.end method
