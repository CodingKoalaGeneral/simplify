.class Ltdr/util/MemoryAnalyzer$1;
.super Ljava/util/TimerTask;
.source "MemoryAnalyzer.java"


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
    .line 18
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    #@0
    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    #@7
    move-result-wide v7

    #@8
    .line 22
    .local v7, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@f
    move-result-wide v9

    #@10
    .line 23
    .local v9, "freeMemory":J
    # invokes: Ltdr/util/MemoryAnalyzer;->getProcessRealMemory()J
    invoke-static {}, Ltdr/util/MemoryAnalyzer;->access$000()J

    #@13
    move-result-wide v11

    #@14
    .line 24
    .local v11, "rss":J
    move-wide v1, v7

    #@15
    move-wide v3, v9

    #@16
    move-wide v5, v11

    #@17
    invoke-static/range {v1 .. v6}, Ltdr/util/TDRSender;->sendMemoryInfo(JJJ)V

    #@1a
    .line 25
    return-void
.end method
