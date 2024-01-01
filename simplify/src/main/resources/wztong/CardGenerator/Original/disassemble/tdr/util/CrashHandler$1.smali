.class Ltdr/util/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltdr/util/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltdr/util/CrashHandler;


# direct methods
.method constructor <init>(Ltdr/util/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Ltdr/util/CrashHandler;

    #@0
    .line 64
    iput-object p1, p0, Ltdr/util/CrashHandler$1;->this$0:Ltdr/util/CrashHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    #@0
    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 68
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@6
    .line 69
    return-void
.end method
