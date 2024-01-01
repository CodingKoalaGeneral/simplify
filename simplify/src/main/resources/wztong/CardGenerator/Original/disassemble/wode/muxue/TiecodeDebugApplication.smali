.class public Lwode/muxue/TiecodeDebugApplication;
.super Lrn_34/rn_35/rn_36/rn_4577;
.source "TiecodeDebugApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 4
    invoke-direct {p0}, Lrn_34/rn_35/rn_36/rn_4577;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 1

    #@0
    .line 6
    invoke-static {}, Ltdr/util/CrashHandler;->getInstance()Ltdr/util/CrashHandler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ltdr/util/CrashHandler;->init()V

    #@7
    .line 7
    const-string v0, "com.tiecode.develop"

    #@9
    invoke-static {p0, v0}, Ltdr/util/TDRLogcatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    #@c
    .line 8
    return-void
.end method
