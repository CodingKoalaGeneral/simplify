.class Ltdr/util/TDRLogcatReader$LogcatReadThread;
.super Ljava/lang/Thread;


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
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e6\u06e5\u06e2"

    #@3
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@6
    move-result v4

    #@7
    move-object v2, v0

    #@8
    move-object v3, v0

    #@9
    move-object v1, v0

    #@a
    :goto_0
    sparse-switch v4, :sswitch_data_0

    #@d
    goto :goto_0

    #@e
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@11
    move-result v0

    #@12
    if-gtz v0, :cond_5

    #@14
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@17
    const-string v0, "\u06df\u06e3\u06e8"

    #@19
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    move v4, v0

    #@1e
    goto :goto_0

    #@1f
    :sswitch_1
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@21
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@24
    move-result v0

    #@25
    if-ltz v0, :cond_0

    #@27
    const-string v0, "\u06e6\u06e6\u06e5"

    #@29
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@2c
    move-result v0

    #@2d
    move v4, v0

    #@2e
    goto :goto_0

    #@2f
    :cond_0
    const-string v0, "\u06e1\u06e4\u06e5"

    #@31
    :goto_3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    move v4, v0

    #@36
    goto :goto_0

    #@37
    :cond_1
    :sswitch_2
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@3a
    move-result v0

    #@3b
    if-gtz v0, :cond_2

    #@3d
    const-string v0, "\u06e3\u06e2\u06e4"

    #@3f
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@42
    move-result v0

    #@43
    move v4, v0

    #@44
    goto :goto_0

    #@45
    :cond_2
    const-string v0, "\u06e3\u06e6\u06e4"

    #@47
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4a
    move-result v0

    #@4b
    move v4, v0

    #@4c
    goto :goto_0

    #@4d
    :sswitch_3
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    #@4f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@52
    move-result-object v0

    #@53
    const-string v4, "logcat -v threadtime"

    #@55
    invoke-virtual {v0, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@5c
    move-result-object v0

    #@5d
    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@63
    move-result v0

    #@64
    if-gtz v0, :cond_3

    #@66
    const-string v0, "\u06e7\u06e0\u06e4"

    #@68
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@6b
    move-result v0

    #@6c
    move v4, v0

    #@6d
    goto :goto_0

    #@6e
    :cond_3
    const-string v0, "\u06e7\u06e3\u06e3"

    #@70
    goto :goto_1

    #@71
    :sswitch_4
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    #@73
    const/16 v3, 0x14

    #@75
    invoke-direct {v0, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@78
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@7b
    move-result v3

    #@7c
    if-gtz v3, :cond_4

    #@7e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@81
    const-string v3, "\u06e2\u06e1\u06df"

    #@83
    invoke-static {v3}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@86
    move-result v4

    #@87
    move-object v3, v0

    #@88
    goto :goto_0

    #@89
    :cond_4
    const-string v3, "\u06e6\u06e6\u06e5"

    #@8b
    invoke-static {v3}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@8e
    move-result v4

    #@8f
    move-object v3, v0

    #@90
    goto/16 :goto_0

    #@92
    :cond_5
    const-string v0, "\u06e6\u06e6\u06e5"

    #@94
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@97
    move-result v0

    #@98
    move v4, v0

    #@99
    goto/16 :goto_0

    #@9b
    :sswitch_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@9e
    move-result-object v2

    #@9f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@a2
    move-result v0

    #@a3
    if-gtz v0, :cond_6

    #@a5
    const-string v0, "\u06e7\u06e5\u06e5"

    #@a7
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@aa
    move-result v0

    #@ab
    move v4, v0

    #@ac
    goto/16 :goto_0

    #@ae
    :cond_6
    const-string v0, "\u06e1\u06df\u06e4"

    #@b0
    goto :goto_3

    #@b1
    :catch_0
    move-exception v0

    #@b2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@b5
    :sswitch_6
    return-void

    #@b6
    :sswitch_7
    :try_start_3
    invoke-static {v2}, Ltdr/util/TDRSender;->sendLogcatLine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@b9
    const-string v0, "\u06e2\u06e1\u06df"

    #@bb
    goto/16 :goto_2

    #@bd
    :sswitch_8
    if-eqz v2, :cond_1

    #@bf
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@c2
    move-result v0

    #@c3
    if-gtz v0, :cond_7

    #@c5
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@c8
    const-string v0, "\u06e8\u06e3\u06df"

    #@ca
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@cd
    move-result v0

    #@ce
    move v4, v0

    #@cf
    goto/16 :goto_0

    #@d1
    :cond_7
    const-string v0, "\u06e8\u06e3\u06df"

    #@d3
    goto/16 :goto_2

    #@d5
    :sswitch_9
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d8
    move-result v0

    #@d9
    if-gtz v0, :cond_8

    #@db
    const-string v0, "\u06e4\u06e7\u06e3"

    #@dd
    :goto_4
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@e0
    move-result v0

    #@e1
    move v4, v0

    #@e2
    goto/16 :goto_0

    #@e4
    :cond_8
    const-string v0, "\u06e6\u06e5\u06e2"

    #@e6
    goto :goto_4

    #@e7
    :sswitch_a
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@ea
    move-result v0

    #@eb
    if-ltz v0, :cond_9

    #@ed
    const-string v0, "\u06e7\u06e3\u06e3"

    #@ef
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@f2
    move-result v0

    #@f3
    move v4, v0

    #@f4
    goto/16 :goto_0

    #@f6
    :cond_9
    const-string v0, "\u06e5\u06e3\u06e3"

    #@f8
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@fb
    move-result v0

    #@fc
    move v4, v0

    #@fd
    goto/16 :goto_0

    #@ff
    :sswitch_b
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@102
    move-result v0

    #@103
    if-ltz v0, :cond_a

    #@105
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@108
    const-string v0, "\u06e6\u06e7\u06e3"

    #@10a
    goto/16 :goto_3

    #@10c
    :cond_a
    const-string v0, "\u06e2\u06e1\u06df"

    #@10e
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@111
    move-result v0

    #@112
    move v4, v0

    #@113
    goto/16 :goto_0

    #@115
    :sswitch_c
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@118
    move-result v0

    #@119
    if-ltz v0, :cond_b

    #@11b
    const-string v0, "\u06e0\u06e5\u06e5"

    #@11d
    goto :goto_5

    #@11e
    :cond_b
    const-string v0, "\u06e1\u06e4\u06e5"

    #@120
    goto :goto_5

    #@121
    nop

    #@122
    :sswitch_data_0
    .sparse-switch
        0x1aab5d -> :sswitch_0
        0x1aae86 -> :sswitch_8
        0x1aaf22 -> :sswitch_3
        0x1aaf81 -> :sswitch_c
        0x1ab280 -> :sswitch_a
        0x1ab6e1 -> :sswitch_6
        0x1aba26 -> :sswitch_b
        0x1abe05 -> :sswitch_0
        0x1ac203 -> :sswitch_1
        0x1ac225 -> :sswitch_5
        0x1ac52b -> :sswitch_9
        0x1ac587 -> :sswitch_4
        0x1ac5c7 -> :sswitch_2
        0x1ac944 -> :sswitch_7
    .end sparse-switch
.end method
