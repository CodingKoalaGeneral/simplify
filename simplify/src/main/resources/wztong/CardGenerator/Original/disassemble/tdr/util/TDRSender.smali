.class public final Ltdr/util/TDRSender;
.super Ljava/lang/Object;
.source "TDRSender.java"


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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static onContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .line 26
    sput-object p0, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@2
    .line 27
    sput-object p1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@4
    .line 28
    return-void
.end method

.method public static sendCrash(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    #@0
    .line 39
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 40
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    .line 41
    const-string v1, "com.tiecode.CRASH"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@f
    .line 42
    const-string v1, "crash"

    #@11
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@14
    .line 43
    sget-object v1, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@16
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@19
    .line 44
    return-void
.end method

.method public static sendLogcatLine(Ljava/lang/String;)V
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .line 31
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 32
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    .line 33
    const-string v1, "com.tiecode.LOGCAT"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@f
    .line 34
    const-string v1, "log_line"

    #@11
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 35
    sget-object v1, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@16
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@19
    .line 36
    return-void
.end method

.method public static sendMemoryInfo(JJJ)V
    .locals 2
    .param p0, "heap"    # J
    .param p2, "free"    # J
    .param p4, "rss"    # J

    #@0
    .line 47
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 48
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ltdr/util/TDRSender;->debuggerPkg:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    .line 49
    const-string v1, "com.tiecode.MEMORY"

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@f
    .line 50
    const-string v1, "memory_heap"

    #@11
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@14
    .line 51
    const-string v1, "memory_free"

    #@16
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@19
    .line 52
    const-string v1, "memory_rss"

    #@1b
    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@1e
    .line 53
    sget-object v1, Ltdr/util/TDRSender;->context:Landroid/content/Context;

    #@20
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@23
    .line 54
    return-void
.end method
