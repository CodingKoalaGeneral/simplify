.class Ltdr/util/MemoryAnalyzer$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltdr/util/MemoryAnalyzer;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    const-string v0, "\u06df\u06e2"

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
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    #@13
    move-result-wide v0

    #@14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@1b
    move-result-wide v2

    #@1c
    # invokes: Ltdr/util/MemoryAnalyzer;->getProcessRealMemory()J
    invoke-static {}, Ltdr/util/MemoryAnalyzer;->access$000()J

    #@1f
    move-result-wide v4

    #@20
    invoke-static/range {v0 .. v5}, Ltdr/util/TDRSender;->sendMemoryInfo(JJJ)V

    #@23
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@26
    move-result v0

    #@27
    if-ltz v0, :cond_1

    #@29
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2c
    const-string v0, "\u06df\u06e2"

    #@2e
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :sswitch_1
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@36
    move-result v0

    #@37
    if-ltz v0, :cond_0

    #@39
    const-string v0, "\u06df\u06e8\u06e2"

    #@3b
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@3e
    move-result v0

    #@3f
    goto :goto_0

    #@40
    :cond_0
    const-string v0, "\u06df\u06e2"

    #@42
    goto :goto_1

    #@43
    :cond_1
    const-string v0, "\u06e3\u06e6\u06e0"

    #@45
    goto :goto_1

    #@46
    :sswitch_2
    return-void

    #@47
    nop

    #@48
    :sswitch_data_0
    .sparse-switch
        0xdbe3 -> :sswitch_0
        0x1aaf02 -> :sswitch_1
        0x1ab6dd -> :sswitch_2
    .end sparse-switch
.end method
