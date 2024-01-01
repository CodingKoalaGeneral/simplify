.class public Ltdr/util/TDRLogcatReader;
.super Ljava/lang/Object;
.source "TDRLogcatReader.java"


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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static onContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "debuggerPkg"    # Ljava/lang/String;

    #@0
    .line 16
    invoke-static {p0, p1}, Ltdr/util/TDRSender;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    #@3
    .line 17
    invoke-static {}, Ltdr/util/MemoryAnalyzer;->initialize()V

    #@6
    .line 18
    new-instance v0, Ltdr/util/TDRLogcatReader$LogcatReadThread;

    #@8
    invoke-direct {v0}, Ltdr/util/TDRLogcatReader$LogcatReadThread;-><init>()V

    #@b
    invoke-virtual {v0}, Ltdr/util/TDRLogcatReader$LogcatReadThread;->start()V

    #@e
    .line 19
    return-void
.end method
