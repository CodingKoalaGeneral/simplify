.class public Ltdr/util/MemoryAnalyzer;
.super Ljava/lang/Object;
.source "MemoryAnalyzer.java"


# static fields
.field private static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    #@0
    .line 12
    invoke-static {}, Ltdr/util/MemoryAnalyzer;->getProcessRealMemory()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private static getProcessRealMemory()J
    .locals 10

    #@0
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "/proc/"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    const-string v1, "/status"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 32
    .local v0, "memFilePath":Ljava/lang/String;
    const/4 v1, 0x0

    #@1b
    .line 34
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    #@1d
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@20
    .line 35
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    #@22
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@24
    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@27
    .line 36
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    #@29
    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@2c
    move-object v1, v4

    #@2d
    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    move-object v5, v4

    #@32
    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@34
    .line 39
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_0

    #@3a
    const-string v4, "VmRSS"

    #@3c
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_0

    #@42
    .line 40
    const-string v4, ":"

    #@44
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    const/4 v6, 0x1

    #@49
    aget-object v4, v4, v6

    #@4b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    const-string v6, " "

    #@51
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    const/4 v6, 0x0

    #@56
    aget-object v4, v4, v6

    #@58
    .line 41
    .local v4, "rss":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5b
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    int-to-long v6, v6

    #@5d
    const-wide/16 v8, 0x400

    #@5f
    mul-long v6, v6, v8

    #@61
    .line 47
    nop

    #@62
    .line 49
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@65
    .line 52
    goto :goto_0

    #@66
    .line 50
    :catch_0
    move-exception v8

    #@67
    .line 51
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    #@6a
    .line 41
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v6

    #@6b
    .line 47
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "rss":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    nop

    #@6c
    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@6f
    .line 52
    :goto_1
    goto :goto_2

    #@70
    .line 50
    :catch_1
    move-exception v2

    #@71
    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@74
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    #@75
    .line 47
    :catchall_0
    move-exception v2

    #@76
    goto :goto_3

    #@77
    .line 44
    :catch_2
    move-exception v2

    #@78
    .line 45
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7b
    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    #@7d
    .line 49
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@80
    goto :goto_1

    #@81
    .line 55
    :cond_2
    :goto_2
    const-wide/16 v2, -0x1

    #@83
    return-wide v2

    #@84
    .line 47
    :goto_3
    if-eqz v1, :cond_3

    #@86
    .line 49
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    #@89
    .line 52
    goto :goto_4

    #@8a
    .line 50
    :catch_3
    move-exception v3

    #@8b
    .line 51
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    #@8e
    .line 54
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    throw v2
.end method

.method public static initialize()V
    .locals 7

    #@0
    .line 16
    sget-object v0, Ltdr/util/MemoryAnalyzer;->timer:Ljava/util/Timer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 17
    new-instance v1, Ljava/util/Timer;

    #@6
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #@9
    sput-object v1, Ltdr/util/MemoryAnalyzer;->timer:Ljava/util/Timer;

    #@b
    .line 18
    new-instance v2, Ltdr/util/MemoryAnalyzer$1;

    #@d
    invoke-direct {v2}, Ltdr/util/MemoryAnalyzer$1;-><init>()V

    #@10
    const-wide/16 v3, 0x0

    #@12
    const-wide/16 v5, 0x1388

    #@14
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@17
    .line 28
    :cond_0
    return-void
.end method
