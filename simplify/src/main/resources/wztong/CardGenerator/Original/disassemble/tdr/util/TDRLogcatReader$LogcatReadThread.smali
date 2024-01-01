.class Ltdr/util/TDRLogcatReader$LogcatReadThread;
.super Ljava/lang/Thread;
.source "TDRLogcatReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltdr/util/TDRLogcatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogcatReadThread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .line 25
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    #@2
    new-instance v1, Ljava/io/InputStreamReader;

    #@4
    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@7
    move-result-object v2

    #@8
    const-string v3, "logcat -v threadtime"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@15
    const/16 v2, 0x14

    #@17
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@1a
    .line 30
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 31
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@20
    .line 32
    invoke-static {v1}, Ltdr/util/TDRSender;->sendLogcatLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 36
    .end local v1    # "line":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 34
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    return-void

    #@25
    .line 37
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@26
    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@29
    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
