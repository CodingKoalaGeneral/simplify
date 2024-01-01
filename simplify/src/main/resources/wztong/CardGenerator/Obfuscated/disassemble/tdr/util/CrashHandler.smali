.class public Ltdr/util/CrashHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final INSTANCE:Ltdr/util/CrashHandler;

.field private static final TAG:Ljava/lang/String; = "CrashHandler"


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    new-instance v0, Ltdr/util/CrashHandler;

    #@2
    invoke-direct {v0}, Ltdr/util/CrashHandler;-><init>()V

    #@5
    sput-object v0, Ltdr/util/CrashHandler;->INSTANCE:Ltdr/util/CrashHandler;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Ltdr/util/CrashHandler;
    .locals 1

    #@0
    sget-object v0, Ltdr/util/CrashHandler;->INSTANCE:Ltdr/util/CrashHandler;

    #@2
    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 1

    #@0
    const-string v0, "\u06e7\u06e3\u06e8"

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
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06df\u06e3"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :cond_0
    const-string v0, "\u06e7\u06e3\u06e8"

    #@19
    goto :goto_1

    #@1a
    :sswitch_1
    const/4 v0, 0x0

    #@1b
    :goto_2
    return v0

    #@1c
    :sswitch_2
    new-instance v0, Ltdr/util/CrashHandler$1;

    #@1e
    invoke-direct {v0, p0}, Ltdr/util/CrashHandler$1;-><init>(Ltdr/util/CrashHandler;)V

    #@21
    invoke-virtual {v0}, Ltdr/util/CrashHandler$1;->start()V

    #@24
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@27
    move-result v0

    #@28
    if-ltz v0, :cond_1

    #@2a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2d
    const-string v0, "\u06e0\u06e6\u06e6"

    #@2f
    :goto_3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    :cond_1
    const-string v0, "\u06e8\u06e5\u06e4"

    #@36
    goto :goto_3

    #@37
    :sswitch_3
    invoke-static {p1}, Ltdr/util/TDRSender;->sendCrash(Ljava/lang/Throwable;)V

    #@3a
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@3d
    move-result v0

    #@3e
    if-gtz v0, :cond_2

    #@40
    const-string v0, "\u06e1\u06e3"

    #@42
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    goto :goto_0

    #@47
    :cond_2
    const-string v0, "\u06e0\u06e6\u06e6"

    #@49
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@4c
    move-result v0

    #@4d
    goto :goto_0

    #@4e
    :sswitch_4
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@50
    if-nez p1, :cond_3

    #@52
    const-string v0, "\u06e7\u06e3\u06e3"

    #@54
    goto :goto_1

    #@55
    :sswitch_5
    const/4 v0, 0x1

    #@56
    goto :goto_2

    #@57
    :cond_3
    :sswitch_6
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@5a
    move-result v0

    #@5b
    if-ltz v0, :cond_4

    #@5d
    const-string v0, "\u06e5\u06e0\u06e7"

    #@5f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@62
    move-result v0

    #@63
    goto :goto_0

    #@64
    :cond_4
    const-string v0, "\u06e3\u06e0\u06e8"

    #@66
    goto :goto_1

    #@67
    nop

    #@68
    :sswitch_data_0
    .sparse-switch
        0xdc22 -> :sswitch_0
        0x1aaba0 -> :sswitch_5
        0x1ab62b -> :sswitch_2
        0x1ac184 -> :sswitch_6
        0x1ac587 -> :sswitch_1
        0x1ac58c -> :sswitch_4
        0x1ac987 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public init()V
    .locals 1

    #@0
    const-string v0, "\u06e5\u06df\u06e1"

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
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_0

    #@10
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@13
    const-string v0, "\u06e0\u06e1\u06e5"

    #@15
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :cond_0
    const-string v0, "\u06e5\u06df\u06e1"

    #@1c
    goto :goto_1

    #@1d
    :sswitch_1
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@1f
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Ltdr/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@25
    const-string v0, "\u06e4\u06e7\u06e5"

    #@27
    goto :goto_1

    #@28
    :sswitch_2
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@2b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@2e
    move-result v0

    #@2f
    if-gtz v0, :cond_1

    #@31
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@34
    const-string v0, "\u06e4\u06e7\u06e5"

    #@36
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@39
    move-result v0

    #@3a
    goto :goto_0

    #@3b
    :cond_1
    const-string v0, "\u06e5\u06e1"

    #@3d
    goto :goto_1

    #@3e
    :sswitch_3
    return-void

    #@3f
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0xdc61 -> :sswitch_0
        0xdc9c -> :sswitch_3
        0x1abac2 -> :sswitch_2
        0x1abd87 -> :sswitch_1
    .end sparse-switch
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06df\u06e4\u06df"

    #@3
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@6
    move-result v2

    #@7
    move-object v1, v0

    #@8
    :goto_0
    sparse-switch v2, :sswitch_data_0

    #@b
    goto :goto_0

    #@c
    :cond_0
    :sswitch_0
    const-string v0, "\u06e7\u06e3\u06e8"

    #@e
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    move v2, v0

    #@13
    goto :goto_0

    #@14
    :sswitch_1
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@17
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1a
    move-result v0

    #@1b
    if-ltz v0, :cond_1

    #@1d
    const-string v0, "\u06df\u06e6"

    #@1f
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    move v2, v0

    #@24
    goto :goto_0

    #@25
    :cond_1
    const-string v0, "\u06e7\u06e3\u06e8"

    #@27
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    move v2, v0

    #@2c
    goto :goto_0

    #@2d
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@2f
    invoke-direct {p0, p2}, Ltdr/util/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_0

    #@35
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@38
    move-result v0

    #@39
    if-gtz v0, :cond_2

    #@3b
    const-string v0, "\u06e6\u06e2\u06e5"

    #@3d
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@40
    move-result v0

    #@41
    move v2, v0

    #@42
    goto :goto_0

    #@43
    :cond_2
    const-string v0, "\u06e6\u06e4\u06e4"

    #@45
    goto :goto_2

    #@46
    :sswitch_3
    const-string v0, "\u06df\u06e4\u06df"

    #@48
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@4b
    move-result v0

    #@4c
    move v2, v0

    #@4d
    goto :goto_0

    #@4e
    :sswitch_4
    if-eqz v1, :cond_0

    #@50
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@53
    move-result v0

    #@54
    if-gtz v0, :cond_3

    #@56
    const-string v0, "\u06df\u06e4\u06df"

    #@58
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5b
    move-result v0

    #@5c
    move v2, v0

    #@5d
    goto :goto_0

    #@5e
    :cond_3
    const-string v0, "\u06e6\u06e2\u06e5"

    #@60
    goto :goto_1

    #@61
    :sswitch_5
    iget-object v1, p0, Ltdr/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@63
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@66
    move-result v0

    #@67
    if-ltz v0, :cond_4

    #@69
    const-string v0, "\u06e4\u06e8\u06e6"

    #@6b
    :goto_3
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@6e
    move-result v0

    #@6f
    move v2, v0

    #@70
    goto :goto_0

    #@71
    :cond_4
    const-string v0, "\u06e4\u06e8\u06e6"

    #@73
    goto :goto_3

    #@74
    :sswitch_6
    return-void

    #@75
    nop

    #@76
    :sswitch_data_0
    .sparse-switch
        0xdbe7 -> :sswitch_0
        0x1aa79a -> :sswitch_2
        0x1aa819 -> :sswitch_3
        0x1abae2 -> :sswitch_4
        0x1ac1a9 -> :sswitch_1
        0x1ac1e6 -> :sswitch_5
        0x1ac58c -> :sswitch_6
    .end sparse-switch
.end method
