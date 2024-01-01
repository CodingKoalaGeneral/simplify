.class public Ltdr/util/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

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
    .line 19
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    return-void
.end method

.method public static getInstance()Ltdr/util/CrashHandler;
    .locals 1

    #@0
    .line 31
    sget-object v0, Ltdr/util/CrashHandler;->INSTANCE:Ltdr/util/CrashHandler;

    #@2
    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .line 61
    if-nez p1, :cond_0

    #@2
    .line 62
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 64
    :cond_0
    new-instance v0, Ltdr/util/CrashHandler$1;

    #@6
    invoke-direct {v0, p0}, Ltdr/util/CrashHandler$1;-><init>(Ltdr/util/CrashHandler;)V

    #@9
    .line 70
    invoke-virtual {v0}, Ltdr/util/CrashHandler$1;->start()V

    #@c
    .line 71
    invoke-static {p1}, Ltdr/util/TDRSender;->sendCrash(Ljava/lang/Throwable;)V

    #@f
    .line 72
    const/4 v0, 0x1

    #@10
    return v0
.end method


# virtual methods
.method public init()V
    .locals 1

    #@0
    .line 38
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ltdr/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@6
    .line 40
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@9
    .line 41
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .line 48
    invoke-direct {p0, p2}, Ltdr/util/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Ltdr/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 50
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@d
    .line 52
    :cond_0
    return-void
.end method
