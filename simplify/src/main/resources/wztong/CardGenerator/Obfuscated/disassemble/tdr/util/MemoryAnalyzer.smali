.class public Ltdr/util/MemoryAnalyzer;
.super Ljava/lang/Object;


# static fields
.field private static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    #@0
    invoke-static {}, Ltdr/util/MemoryAnalyzer;->getProcessRealMemory()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private static getProcessRealMemory()J
    .locals 22

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    const/16 v20, 0x0

    #@7
    const/4 v8, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    const/4 v12, 0x0

    #@a
    const/4 v5, 0x0

    #@b
    const/16 v16, 0x0

    #@d
    const-wide/16 v14, 0x0

    #@f
    const/4 v13, 0x0

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v10, 0x0

    #@12
    const-string v17, "\u06e1\u06e0\u06e4"

    #@14
    invoke-static/range {v17 .. v17}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@17
    move-result v21

    #@18
    move-object/from16 v17, v2

    #@1a
    move-object/from16 v18, v7

    #@1c
    move-object/from16 v19, v9

    #@1e
    :goto_0
    sparse-switch v21, :sswitch_data_0

    #@21
    goto :goto_0

    #@22
    :sswitch_0
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@25
    move-result v2

    #@26
    if-gtz v2, :cond_22

    #@28
    move-object v5, v3

    #@29
    :cond_0
    const-string v2, "\u06e7\u06e8\u06e1"

    #@2b
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2e
    move-result v2

    #@2f
    move/from16 v21, v2

    #@31
    goto :goto_0

    #@32
    :sswitch_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    #@34
    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@3a
    move-result v7

    #@3b
    if-gtz v7, :cond_1

    #@3d
    const-string v7, "\u06e4\u06e1\u06e5"

    #@3f
    invoke-static {v7}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@42
    move-result v7

    #@43
    move-object/from16 v19, v2

    #@45
    move-object v10, v4

    #@46
    move/from16 v21, v7

    #@48
    goto :goto_0

    #@49
    :cond_1
    const-string v7, "\u06e5\u06e2\u06df"

    #@4b
    invoke-static {v7}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@4e
    move-result v7

    #@4f
    move-object/from16 v19, v2

    #@51
    move-object v10, v4

    #@52
    move/from16 v21, v7

    #@54
    goto :goto_0

    #@55
    :sswitch_2
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@58
    move-result v2

    #@59
    if-ltz v2, :cond_2

    #@5b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@5e
    const-string v2, "\u06e7\u06e5\u06e5"

    #@60
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@63
    move-result v2

    #@64
    move/from16 v21, v2

    #@66
    goto :goto_0

    #@67
    :cond_2
    const-string v2, "\u06e0\u06e2\u06e2"

    #@69
    :goto_1
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@6c
    move-result v2

    #@6d
    move/from16 v21, v2

    #@6f
    goto :goto_0

    #@70
    :cond_3
    :sswitch_3
    const-string v2, "\u06e5\u06e3\u06e0"

    #@72
    move-object v7, v12

    #@73
    :goto_2
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@76
    move-result v2

    #@77
    move-object v12, v7

    #@78
    move/from16 v21, v2

    #@7a
    goto :goto_0

    #@7b
    :sswitch_4
    :try_start_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    move-result v2

    #@7f
    if-nez v2, :cond_e

    #@81
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@84
    move-result v2

    #@85
    if-ltz v2, :cond_4

    #@87
    move-object v2, v3

    #@88
    :goto_3
    const-string v7, "\u06e5\u06e8\u06df"

    #@8a
    move-object v10, v2

    #@8b
    :goto_4
    invoke-static {v7}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@8e
    move-result v2

    #@8f
    move/from16 v21, v2

    #@91
    goto :goto_0

    #@92
    :cond_4
    const-string v2, "\u06e0\u06e0\u06e4"

    #@94
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@97
    move-result v2

    #@98
    move-object v10, v3

    #@99
    move/from16 v21, v2

    #@9b
    goto :goto_0

    #@9c
    :sswitch_5
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@9f
    move-result v2

    #@a0
    if-gtz v2, :cond_5

    #@a2
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@a5
    const-string v2, "\u06e6\u06df\u06e0"

    #@a7
    goto :goto_1

    #@a8
    :cond_5
    const-string v2, "\u06e3\u06e2\u06e2"

    #@aa
    :goto_5
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@ad
    move-result v2

    #@ae
    move/from16 v21, v2

    #@b0
    goto/16 :goto_0

    #@b2
    :sswitch_6
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@b5
    move-result v2

    #@b6
    if-gtz v2, :cond_6

    #@b8
    const-string v2, "\u06e8\u06e6\u06e0"

    #@ba
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@bd
    move-result v2

    #@be
    move/from16 v21, v2

    #@c0
    goto/16 :goto_0

    #@c2
    :cond_6
    const-string v2, "\u06e0\u06e1\u06e4"

    #@c4
    :goto_6
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@c7
    move-result v2

    #@c8
    move/from16 v21, v2

    #@ca
    goto/16 :goto_0

    #@cc
    :sswitch_7
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@cf
    move-result v2

    #@d0
    if-ltz v2, :cond_7

    #@d2
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@d5
    const-string v2, "\u06e3\u06e4\u06e8"

    #@d7
    :goto_7
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@da
    move-result v2

    #@db
    move/from16 v21, v2

    #@dd
    goto/16 :goto_0

    #@df
    :cond_7
    const-string v2, "\u06e1\u06e0\u06e4"

    #@e1
    goto :goto_7

    #@e2
    :sswitch_8
    if-eqz v5, :cond_2d

    #@e4
    const-string v7, "\u06e8\u06e6\u06e0"

    #@e6
    move-object v2, v11

    #@e7
    move-object v9, v6

    #@e8
    :goto_8
    invoke-static {v7}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@eb
    move-result v7

    #@ec
    move-object v11, v2

    #@ed
    move-object v6, v9

    #@ee
    move/from16 v21, v7

    #@f0
    goto/16 :goto_0

    #@f2
    :sswitch_9
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@f5
    move-result v2

    #@f6
    if-gtz v2, :cond_8

    #@f8
    const-string v2, "\u06e3\u06e8\u06e6"

    #@fa
    :goto_9
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@fd
    move-result v2

    #@fe
    move/from16 v21, v2

    #@100
    goto/16 :goto_0

    #@102
    :cond_8
    const-string v2, "\u06e7\u06e4\u06e7"

    #@104
    :goto_a
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@107
    move-result v2

    #@108
    move/from16 v21, v2

    #@10a
    goto/16 :goto_0

    #@10c
    :cond_9
    :sswitch_a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@10f
    move-result v2

    #@110
    if-gtz v2, :cond_a

    #@112
    const-string v2, "\u06e0\u06e4\u06e4"

    #@114
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@117
    move-result v2

    #@118
    move/from16 v21, v2

    #@11a
    goto/16 :goto_0

    #@11c
    :cond_a
    const-string v2, "\u06e5\u06e6\u06e7"

    #@11e
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@121
    move-result v2

    #@122
    move/from16 v21, v2

    #@124
    goto/16 :goto_0

    #@126
    :sswitch_b
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@129
    move-result v2

    #@12a
    if-gtz v2, :cond_b

    #@12c
    const-string v2, "\u06e4\u06e0"

    #@12e
    goto/16 :goto_5

    #@130
    :cond_b
    const-string v2, "\u06e3\u06e5\u06e7"

    #@132
    goto :goto_6

    #@133
    :sswitch_c
    const-string v2, "/status"

    #@135
    move-object/from16 v0, v18

    #@137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v2

    #@13e
    const/4 v9, 0x0

    #@13f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@142
    move-result v6

    #@143
    if-gtz v6, :cond_c

    #@145
    const-string v6, "\u06e8\u06e1\u06e2"

    #@147
    move-object v7, v6

    #@148
    goto :goto_8

    #@149
    :cond_c
    const-string v6, "\u06e7\u06e3\u06e0"

    #@14b
    invoke-static {v6}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@14e
    move-result v7

    #@14f
    move-object v11, v2

    #@150
    move-object v6, v9

    #@151
    move/from16 v21, v7

    #@153
    goto/16 :goto_0

    #@155
    :sswitch_d
    :try_start_2
    const-string v2, "VmRSS"

    #@157
    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@15a
    move-result v2

    #@15b
    if-eqz v2, :cond_e

    #@15d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@160
    move-result v2

    #@161
    if-ltz v2, :cond_d

    #@163
    const-string v2, "\u06e3\u06e5\u06e7"

    #@165
    move-object v10, v3

    #@166
    :goto_b
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@169
    move-result v2

    #@16a
    move/from16 v21, v2

    #@16c
    goto/16 :goto_0

    #@16e
    :cond_d
    const-string v2, "\u06e6\u06e1\u06df"

    #@170
    move-object v10, v3

    #@171
    :goto_c
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@174
    move-result v2

    #@175
    move/from16 v21, v2

    #@177
    goto/16 :goto_0

    #@179
    :sswitch_e
    const-string v2, "\u06e8\u06e6\u06e0"

    #@17b
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@17e
    move-result v2

    #@17f
    move/from16 v21, v2

    #@181
    goto/16 :goto_0

    #@183
    :sswitch_f
    const-wide/16 v2, -0x1

    #@185
    :goto_d
    return-wide v2

    #@186
    :cond_e
    :sswitch_10
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@189
    move-result v2

    #@18a
    if-ltz v2, :cond_f

    #@18c
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@18f
    const-string v2, "\u06e4\u06e6\u06e6"

    #@191
    move-object v7, v12

    #@192
    goto/16 :goto_2

    #@194
    :cond_f
    const-string v2, "\u06e5\u06e7\u06e7"

    #@196
    :goto_e
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@199
    move-result v2

    #@19a
    move/from16 v21, v2

    #@19c
    goto/16 :goto_0

    #@19e
    :sswitch_11
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1a1
    move-result v2

    #@1a2
    if-gtz v2, :cond_10

    #@1a4
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1a7
    const-string v2, "\u06e0\u06e2\u06e5"

    #@1a9
    goto :goto_c

    #@1aa
    :cond_10
    const-string v2, "\u06df\u06e7\u06e1"

    #@1ac
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1af
    move-result v2

    #@1b0
    move/from16 v21, v2

    #@1b2
    goto/16 :goto_0

    #@1b4
    :sswitch_12
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1b7
    move-result v2

    #@1b8
    if-gtz v2, :cond_11

    #@1ba
    const-string v2, "\u06e7\u06e4\u06e7"

    #@1bc
    move-object v5, v6

    #@1bd
    :goto_f
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1c0
    move-result v2

    #@1c1
    move/from16 v21, v2

    #@1c3
    goto/16 :goto_0

    #@1c5
    :cond_11
    move-object v5, v6

    #@1c6
    :cond_12
    const-string v2, "\u06df\u06e5\u06e7"

    #@1c8
    :goto_10
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1cb
    move-result v2

    #@1cc
    move/from16 v21, v2

    #@1ce
    goto/16 :goto_0

    #@1d0
    :sswitch_13
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    #@1d2
    move-object/from16 v0, v20

    #@1d4
    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1d7
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@1da
    move-result v2

    #@1db
    if-gtz v2, :cond_13

    #@1dd
    const-string v2, "\u06e7\u06df\u06e6"

    #@1df
    :goto_11
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1e2
    move-result v2

    #@1e3
    move-object v8, v9

    #@1e4
    move/from16 v21, v2

    #@1e6
    goto/16 :goto_0

    #@1e8
    :cond_13
    const-string v2, "\u06e8\u06e2\u06df"

    #@1ea
    move-object v7, v2

    #@1eb
    move-object v8, v9

    #@1ec
    goto/16 :goto_4

    #@1ee
    :sswitch_14
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1f1
    move-result v2

    #@1f2
    if-ltz v2, :cond_14

    #@1f4
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1f7
    const-string v2, "\u06e4\u06e3\u06e3"

    #@1f9
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1fc
    move-result v2

    #@1fd
    move-object v5, v3

    #@1fe
    move/from16 v21, v2

    #@200
    goto/16 :goto_0

    #@202
    :cond_14
    const-string v2, "\u06e8\u06e7\u06e0"

    #@204
    move-object v5, v3

    #@205
    goto :goto_10

    #@206
    :sswitch_15
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@209
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@20c
    move-result v2

    #@20d
    if-gtz v2, :cond_15

    #@20f
    const-string v2, "\u06e8\u06e2\u06df"

    #@211
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@214
    move-result v2

    #@215
    move/from16 v21, v2

    #@217
    goto/16 :goto_0

    #@219
    :cond_15
    const-string v2, "\u06e6\u06e0\u06e0"

    #@21b
    goto/16 :goto_6

    #@21d
    :sswitch_16
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@220
    move-result v2

    #@221
    if-gtz v2, :cond_16

    #@223
    const-string v2, "\u06e3\u06e0"

    #@225
    goto/16 :goto_6

    #@227
    :cond_16
    const-string v2, "\u06e7\u06df\u06e6"

    #@229
    goto/16 :goto_7

    #@22b
    :sswitch_17
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    #@22e
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@231
    move-result v2

    #@232
    if-gtz v2, :cond_17

    #@234
    const-string v2, "\u06e5\u06e8\u06e1"

    #@236
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@239
    move-result v2

    #@23a
    move/from16 v21, v2

    #@23c
    goto/16 :goto_0

    #@23e
    :cond_17
    const-string v2, "\u06e7\u06e1\u06e3"

    #@240
    :goto_12
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@243
    move-result v2

    #@244
    move/from16 v21, v2

    #@246
    goto/16 :goto_0

    #@248
    :sswitch_18
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@24b
    move-result v2

    #@24c
    if-gtz v2, :cond_18

    #@24e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@251
    const-string v2, "\u06df\u06df\u06e8"

    #@253
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@256
    move-result v2

    #@257
    move/from16 v21, v2

    #@259
    goto/16 :goto_0

    #@25b
    :cond_18
    const-string v2, "\u06e7\u06e1\u06e3"

    #@25d
    :goto_13
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@260
    move-result v2

    #@261
    move/from16 v21, v2

    #@263
    goto/16 :goto_0

    #@265
    :sswitch_19
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@268
    move-result v2

    #@269
    if-ltz v2, :cond_19

    #@26b
    const-string v2, "\u06e4\u06e1\u06e3"

    #@26d
    goto/16 :goto_e

    #@26f
    :cond_19
    const-string v2, "\u06df\u06e4\u06e3"

    #@271
    goto/16 :goto_e

    #@273
    :sswitch_1a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@276
    move-result v2

    #@277
    if-gtz v2, :cond_1a

    #@279
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@27c
    const-string v2, "\u06e3\u06e7\u06e7"

    #@27e
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@281
    move-result v2

    #@282
    move-object v10, v4

    #@283
    move/from16 v21, v2

    #@285
    goto/16 :goto_0

    #@287
    :cond_1a
    const-string v2, "\u06e8\u06e6\u06e7"

    #@289
    move-object v7, v4

    #@28a
    :goto_14
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@28d
    move-result v2

    #@28e
    move-object v10, v7

    #@28f
    move/from16 v21, v2

    #@291
    goto/16 :goto_0

    #@293
    :sswitch_1b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@296
    move-result v2

    #@297
    if-ltz v2, :cond_1b

    #@299
    const-string v2, "\u06e6\u06e7\u06e7"

    #@29b
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@29e
    move-result v2

    #@29f
    move-object v10, v4

    #@2a0
    move-object v5, v6

    #@2a1
    move/from16 v21, v2

    #@2a3
    goto/16 :goto_0

    #@2a5
    :cond_1b
    const-string v2, "\u06e2\u06e4\u06e4"

    #@2a7
    move-object v7, v4

    #@2a8
    move-object v5, v6

    #@2a9
    :goto_15
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2ac
    move-result v2

    #@2ad
    move-object v10, v7

    #@2ae
    move/from16 v21, v2

    #@2b0
    goto/16 :goto_0

    #@2b2
    :sswitch_1c
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@2b5
    move-result v2

    #@2b6
    if-gtz v2, :cond_1c

    #@2b8
    const-string v2, "\u06e3\u06e0\u06e0"

    #@2ba
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2bd
    move-result v2

    #@2be
    move/from16 v21, v2

    #@2c0
    goto/16 :goto_0

    #@2c2
    :cond_1c
    const-string v2, "\u06e3\u06e7\u06e7"

    #@2c4
    move-object v7, v2

    #@2c5
    goto/16 :goto_4

    #@2c7
    :sswitch_1d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2ca
    move-result v2

    #@2cb
    if-gtz v2, :cond_1d

    #@2cd
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2d0
    const-string v2, "\u06e8\u06e6\u06e7"

    #@2d2
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2d5
    move-result v2

    #@2d6
    move-object v5, v3

    #@2d7
    move/from16 v21, v2

    #@2d9
    goto/16 :goto_0

    #@2db
    :cond_1d
    const-string v2, "\u06e6\u06e1\u06e2"

    #@2dd
    move-object v5, v3

    #@2de
    goto/16 :goto_a

    #@2e0
    :sswitch_1e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@2e3
    move-result v2

    #@2e4
    if-ltz v2, :cond_1e

    #@2e6
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@2e9
    const-string v2, "\u06e1\u06e1\u06e7"

    #@2eb
    goto/16 :goto_a

    #@2ed
    :cond_1e
    const-string v2, "\u06e1\u06e4\u06e7"

    #@2ef
    move-object v7, v12

    #@2f0
    goto/16 :goto_2

    #@2f2
    :sswitch_1f
    move/from16 v0, v16

    #@2f4
    int-to-long v14, v0

    #@2f5
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2f8
    move-result v2

    #@2f9
    if-gtz v2, :cond_1f

    #@2fb
    const-string v2, "\u06e4\u06e4\u06e8"

    #@2fd
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@300
    move-result v2

    #@301
    move/from16 v21, v2

    #@303
    goto/16 :goto_0

    #@305
    :cond_1f
    const-string v2, "\u06df\u06df\u06e5"

    #@307
    goto/16 :goto_6

    #@309
    :sswitch_20
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@30c
    move-result v2

    #@30d
    if-gtz v2, :cond_20

    #@30f
    const-string v5, "\u06e4\u06df\u06e1"

    #@311
    move-object v2, v13

    #@312
    move-object v7, v5

    #@313
    move-object v9, v6

    #@314
    :goto_16
    invoke-static {v7}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@317
    move-result v7

    #@318
    move-object v13, v2

    #@319
    move-object v5, v9

    #@31a
    move/from16 v21, v7

    #@31c
    goto/16 :goto_0

    #@31e
    :cond_20
    const-string v2, "\u06e6\u06e8\u06e7"

    #@320
    move-object v5, v6

    #@321
    goto/16 :goto_9

    #@323
    :sswitch_21
    const-wide/16 v2, 0x400

    #@325
    mul-long/2addr v2, v14

    #@326
    goto/16 :goto_d

    #@328
    :sswitch_22
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@32b
    move-result v2

    #@32c
    if-gtz v2, :cond_0

    #@32e
    const-string v2, "\u06df\u06e7\u06e6"

    #@330
    :goto_17
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@333
    move-result v2

    #@334
    move/from16 v21, v2

    #@336
    goto/16 :goto_0

    #@338
    :sswitch_23
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@33b
    move-result-object v7

    #@33c
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@33f
    move-result v2

    #@340
    if-ltz v2, :cond_21

    #@342
    :goto_18
    const-string v2, "\u06df\u06e6\u06e1"

    #@344
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@347
    move-result v2

    #@348
    move-object v12, v7

    #@349
    move/from16 v21, v2

    #@34b
    goto/16 :goto_0

    #@34d
    :cond_21
    const-string v2, "\u06e4\u06df\u06e1"

    #@34f
    goto/16 :goto_2

    #@351
    :cond_22
    const-string v2, "\u06e0\u06e6\u06e7"

    #@353
    move-object v5, v3

    #@354
    :goto_19
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@357
    move-result v2

    #@358
    move/from16 v21, v2

    #@35a
    goto/16 :goto_0

    #@35c
    :sswitch_24
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    #@35f
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@362
    move-result v2

    #@363
    if-gtz v2, :cond_23

    #@365
    const-string v2, "\u06e2\u06e8\u06e8"

    #@367
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@36a
    move-result v2

    #@36b
    move/from16 v21, v2

    #@36d
    goto/16 :goto_0

    #@36f
    :cond_23
    const-string v2, "\u06e2\u06e8\u06e8"

    #@371
    :goto_1a
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@374
    move-result v2

    #@375
    move/from16 v21, v2

    #@377
    goto/16 :goto_0

    #@379
    :sswitch_25
    if-eqz v12, :cond_3

    #@37b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@37e
    move-result v2

    #@37f
    if-ltz v2, :cond_24

    #@381
    const-string v2, "\u06e7\u06e7\u06e6"

    #@383
    move-object v7, v3

    #@384
    goto/16 :goto_15

    #@386
    :cond_24
    const-string v2, "\u06e2\u06e7\u06e8"

    #@388
    move-object v10, v3

    #@389
    goto/16 :goto_6

    #@38b
    :sswitch_26
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@38e
    move-result v2

    #@38f
    if-ltz v2, :cond_25

    #@391
    const-string v2, "\u06df\u06df\u06e5"

    #@393
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@396
    move-result v2

    #@397
    move/from16 v21, v2

    #@399
    goto/16 :goto_0

    #@39b
    :cond_25
    const-string v2, "\u06e0\u06e1\u06e2"

    #@39d
    goto/16 :goto_b

    #@39f
    :sswitch_27
    const-string v2, "\u06e4\u06e4\u06e8"

    #@3a1
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@3a4
    move-result v2

    #@3a5
    move-object v5, v3

    #@3a6
    move/from16 v21, v2

    #@3a8
    goto/16 :goto_0

    #@3aa
    :sswitch_28
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3ad
    move-result v2

    #@3ae
    if-ltz v2, :cond_26

    #@3b0
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@3b3
    const-string v2, "\u06e4\u06e5\u06e3"

    #@3b5
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@3b8
    move-result v2

    #@3b9
    move-object v3, v8

    #@3ba
    move/from16 v21, v2

    #@3bc
    goto/16 :goto_0

    #@3be
    :cond_26
    const-string v2, "\u06e5\u06e7\u06e7"

    #@3c0
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@3c3
    move-result v2

    #@3c4
    move-object v3, v8

    #@3c5
    move/from16 v21, v2

    #@3c7
    goto/16 :goto_0

    #@3c9
    :sswitch_29
    sget-object v2, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@3cb
    new-instance v2, Ljava/lang/StringBuilder;

    #@3cd
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d0
    const-string v7, "/proc/"

    #@3d2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d5
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3d8
    move-result v7

    #@3d9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3dc
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@3df
    move-result v7

    #@3e0
    if-gtz v7, :cond_27

    #@3e2
    const-string v7, "\u06e2\u06e4\u06e4"

    #@3e4
    invoke-static {v7}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@3e7
    move-result v7

    #@3e8
    move-object/from16 v18, v2

    #@3ea
    move/from16 v21, v7

    #@3ec
    goto/16 :goto_0

    #@3ee
    :cond_27
    const-string v7, "\u06e6\u06e5\u06e1"

    #@3f0
    invoke-static {v7}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@3f3
    move-result v7

    #@3f4
    move-object/from16 v18, v2

    #@3f6
    move/from16 v21, v7

    #@3f8
    goto/16 :goto_0

    #@3fa
    :sswitch_2a
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    #@3fd
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@400
    move-result v2

    #@401
    if-ltz v2, :cond_28

    #@403
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@406
    const-string v2, "\u06e6\u06e6\u06e4"

    #@408
    goto/16 :goto_1a

    #@40a
    :cond_28
    const-string v2, "\u06e0\u06e2\u06e2"

    #@40c
    move-object v9, v8

    #@40d
    goto/16 :goto_11

    #@40f
    :catch_0
    move-exception v2

    #@410
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@413
    const-string v2, "\u06e6\u06e2"

    #@415
    goto/16 :goto_17

    #@417
    :sswitch_2b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@41a
    move-result v2

    #@41b
    if-gtz v2, :cond_29

    #@41d
    const-string v2, "\u06e7\u06df\u06e1"

    #@41f
    goto/16 :goto_12

    #@421
    :cond_29
    const-string v2, "\u06e2\u06e8\u06e8"

    #@423
    goto/16 :goto_12

    #@425
    :sswitch_2c
    throw v13

    #@426
    :sswitch_2d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@429
    move-result v2

    #@42a
    if-gtz v2, :cond_2a

    #@42c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@42f
    const-string v2, "\u06e6\u06e7\u06df"

    #@431
    goto/16 :goto_13

    #@433
    :cond_2a
    const-string v2, "\u06df\u06e7\u06e6"

    #@435
    goto/16 :goto_e

    #@437
    :sswitch_2e
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@43a
    move-result v2

    #@43b
    if-gtz v2, :cond_2b

    #@43d
    const-string v2, "\u06e3\u06e2\u06e7"

    #@43f
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@442
    move-result v2

    #@443
    move-object v10, v3

    #@444
    move/from16 v21, v2

    #@446
    goto/16 :goto_0

    #@448
    :cond_2b
    const-string v2, "\u06e4\u06e2"

    #@44a
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@44d
    move-result v2

    #@44e
    move-object v10, v3

    #@44f
    move/from16 v21, v2

    #@451
    goto/16 :goto_0

    #@453
    :catchall_0
    move-exception v2

    #@454
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@457
    move-result v7

    #@458
    if-gtz v7, :cond_2c

    #@45a
    const-string v7, "\u06e6\u06e0\u06e0"

    #@45c
    invoke-static {v7}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@45f
    move-result v7

    #@460
    move-object v13, v2

    #@461
    move/from16 v21, v7

    #@463
    goto/16 :goto_0

    #@465
    :cond_2c
    const-string v7, "\u06e1\u06e3\u06e3"

    #@467
    move-object v9, v5

    #@468
    goto/16 :goto_16

    #@46a
    :sswitch_2f
    const/4 v4, 0x0

    #@46b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@46e
    move-result v2

    #@46f
    if-gez v2, :cond_12

    #@471
    const-string v2, "\u06df\u06e4\u06e3"

    #@473
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@476
    move-result v2

    #@477
    move/from16 v21, v2

    #@479
    goto/16 :goto_0

    #@47b
    :cond_2d
    :sswitch_30
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@47e
    move-result v2

    #@47f
    if-ltz v2, :cond_2e

    #@481
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@484
    const-string v2, "\u06e0\u06e3\u06df"

    #@486
    :goto_1b
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@489
    move-result v2

    #@48a
    move/from16 v21, v2

    #@48c
    goto/16 :goto_0

    #@48e
    :cond_2e
    const-string v2, "\u06e6\u06e7\u06e7"

    #@490
    move-object v7, v12

    #@491
    goto/16 :goto_2

    #@493
    :sswitch_31
    const-string v2, "\u06e3\u06e7\u06e7"

    #@495
    goto/16 :goto_7

    #@497
    :sswitch_32
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@49a
    move-result v2

    #@49b
    if-gtz v2, :cond_2f

    #@49d
    const-string v2, "\u06e7\u06e5\u06e1"

    #@49f
    goto/16 :goto_19

    #@4a1
    :cond_2f
    const-string v2, "\u06e7\u06e8\u06e1"

    #@4a3
    goto/16 :goto_7

    #@4a5
    :catch_1
    move-exception v2

    #@4a6
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@4a9
    move-result v7

    #@4aa
    if-ltz v7, :cond_30

    #@4ac
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@4af
    const-string v7, "\u06e0\u06e2\u06e2"

    #@4b1
    invoke-static {v7}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@4b4
    move-result v7

    #@4b5
    move-object/from16 v17, v2

    #@4b7
    move/from16 v21, v7

    #@4b9
    goto/16 :goto_0

    #@4bb
    :cond_30
    const-string v7, "\u06e2\u06e6\u06e6"

    #@4bd
    invoke-static {v7}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@4c0
    move-result v7

    #@4c1
    move-object/from16 v17, v2

    #@4c3
    move/from16 v21, v7

    #@4c5
    goto/16 :goto_0

    #@4c7
    :sswitch_33
    const-string v2, "\u06e5\u06e3\u06e2"

    #@4c9
    goto/16 :goto_f

    #@4cb
    :sswitch_34
    const-string v2, "\u06e4\u06e3\u06e3"

    #@4cd
    move-object v5, v6

    #@4ce
    goto :goto_1b

    #@4cf
    :sswitch_35
    if-eqz v10, :cond_9

    #@4d1
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@4d4
    move-result v2

    #@4d5
    if-gtz v2, :cond_31

    #@4d7
    const-string v2, "\u06e1\u06e0\u06e4"

    #@4d9
    move/from16 v7, v16

    #@4db
    :goto_1c
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@4de
    move-result v2

    #@4df
    move/from16 v16, v7

    #@4e1
    move/from16 v21, v2

    #@4e3
    goto/16 :goto_0

    #@4e5
    :cond_31
    const-string v7, "\u06e3\u06e2\u06e2"

    #@4e7
    move-object v2, v11

    #@4e8
    move-object v9, v6

    #@4e9
    goto/16 :goto_8

    #@4eb
    :sswitch_36
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@4ee
    move-result v2

    #@4ef
    if-gtz v2, :cond_33

    #@4f1
    move-object v10, v5

    #@4f2
    :cond_32
    const-string v2, "\u06df\u06e6\u06e4"

    #@4f4
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@4f7
    move-result v2

    #@4f8
    move/from16 v21, v2

    #@4fa
    goto/16 :goto_0

    #@4fc
    :cond_33
    move-object v7, v12

    #@4fd
    move-object v10, v5

    #@4fe
    goto/16 :goto_18

    #@500
    :sswitch_37
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@503
    move-result v2

    #@504
    if-gtz v2, :cond_34

    #@506
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@509
    const-string v2, "\u06e0\u06df\u06e1"

    #@50b
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@50e
    move-result v2

    #@50f
    move/from16 v21, v2

    #@511
    goto/16 :goto_0

    #@513
    :cond_34
    const-string v2, "\u06e6\u06e0\u06e0"

    #@515
    goto/16 :goto_a

    #@517
    :sswitch_38
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@51a
    move-result v2

    #@51b
    if-gtz v2, :cond_35

    #@51d
    const-string v2, "\u06e0\u06e6\u06e7"

    #@51f
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@522
    move-result v2

    #@523
    move-object v10, v4

    #@524
    move-object v5, v6

    #@525
    move/from16 v21, v2

    #@527
    goto/16 :goto_0

    #@529
    :cond_35
    move-object v2, v4

    #@52a
    move-object v5, v6

    #@52b
    goto/16 :goto_3

    #@52d
    :catch_2
    move-exception v2

    #@52e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@531
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@534
    move-result v2

    #@535
    if-ltz v2, :cond_36

    #@537
    const-string v2, "\u06e5\u06e6\u06e7"

    #@539
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@53c
    move-result v2

    #@53d
    move/from16 v21, v2

    #@53f
    goto/16 :goto_0

    #@541
    :cond_36
    const-string v2, "\u06df\u06e8\u06e1"

    #@543
    goto/16 :goto_5

    #@545
    :sswitch_39
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@548
    const-string v2, "\u06e3\u06e5\u06e7"

    #@54a
    goto/16 :goto_6

    #@54c
    :sswitch_3a
    :try_start_a
    const-string v2, ":"

    #@54e
    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@551
    move-result-object v2

    #@552
    const/4 v7, 0x1

    #@553
    aget-object v2, v2, v7

    #@555
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@558
    move-result-object v2

    #@559
    const-string v7, " "

    #@55b
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@55e
    move-result-object v2

    #@55f
    const/4 v7, 0x0

    #@560
    aget-object v2, v2, v7

    #@562
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@565
    move-result v7

    #@566
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@569
    move-result v2

    #@56a
    if-gtz v2, :cond_37

    #@56c
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@56f
    const-string v2, "\u06e0\u06e0\u06e4"

    #@571
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@574
    move-result v2

    #@575
    move/from16 v16, v7

    #@577
    move/from16 v21, v2

    #@579
    goto/16 :goto_0

    #@57b
    :cond_37
    const-string v2, "\u06e1\u06e4\u06e7"

    #@57d
    goto/16 :goto_1c

    #@57f
    :sswitch_3b
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@582
    move-result v2

    #@583
    if-gtz v2, :cond_38

    #@585
    const-string v2, "\u06e2\u06e7\u06e8"

    #@587
    move-object v7, v4

    #@588
    move-object v5, v6

    #@589
    goto/16 :goto_14

    #@58b
    :cond_38
    const-string v2, "\u06e7\u06e8\u06e7"

    #@58d
    move-object v7, v4

    #@58e
    move-object v5, v6

    #@58f
    goto/16 :goto_14

    #@591
    :catch_3
    move-exception v2

    #@592
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@595
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@598
    move-result v2

    #@599
    if-gtz v2, :cond_32

    #@59b
    const-string v2, "\u06e1\u06e4\u06e7"

    #@59d
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@5a0
    move-result v2

    #@5a1
    move/from16 v21, v2

    #@5a3
    goto/16 :goto_0

    #@5a5
    :sswitch_3c
    :try_start_b
    new-instance v2, Ljava/io/InputStreamReader;

    #@5a7
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5a9
    move-object/from16 v0, v19

    #@5ab
    invoke-direct {v2, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@5ae
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@5b1
    move-result v7

    #@5b2
    if-ltz v7, :cond_39

    #@5b4
    const-string v7, "\u06e0\u06e1\u06e4"

    #@5b6
    invoke-static {v7}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@5b9
    move-result v7

    #@5ba
    move-object/from16 v20, v2

    #@5bc
    move-object v10, v4

    #@5bd
    move/from16 v21, v7

    #@5bf
    goto/16 :goto_0

    #@5c1
    :cond_39
    const-string v7, "\u06e3\u06e7\u06e0"

    #@5c3
    invoke-static {v7}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@5c6
    move-result v7

    #@5c7
    move-object/from16 v20, v2

    #@5c9
    move-object v10, v4

    #@5ca
    move/from16 v21, v7

    #@5cc
    goto/16 :goto_0

    #@5ce
    :sswitch_data_0
    .sparse-switch
        0xdc7e -> :sswitch_0
        0xdcbc -> :sswitch_a
        0x1aa705 -> :sswitch_1c
        0x1aa79e -> :sswitch_1a
        0x1aa7a3 -> :sswitch_9
        0x1aa7c1 -> :sswitch_3c
        0x1aa7da -> :sswitch_39
        0x1aa7dd -> :sswitch_2d
        0x1aa7f9 -> :sswitch_30
        0x1aa7fe -> :sswitch_21
        0x1aa818 -> :sswitch_2b
        0x1aaae4 -> :sswitch_27
        0x1aab01 -> :sswitch_2b
        0x1aab03 -> :sswitch_a
        0x1aab20 -> :sswitch_6
        0x1aab23 -> :sswitch_18
        0x1aaba1 -> :sswitch_23
        0x1aaea5 -> :sswitch_29
        0x1aaec2 -> :sswitch_37
        0x1aaf01 -> :sswitch_9
        0x1aaf24 -> :sswitch_1f
        0x1ab2e2 -> :sswitch_12
        0x1ab322 -> :sswitch_16
        0x1ab343 -> :sswitch_1d
        0x1ab362 -> :sswitch_11
        0x1ab623 -> :sswitch_30
        0x1ab663 -> :sswitch_2a
        0x1ab668 -> :sswitch_1e
        0x1ab6c5 -> :sswitch_8
        0x1ab6fc -> :sswitch_38
        0x1ab703 -> :sswitch_15
        0x1ab9c6 -> :sswitch_25
        0x1aba08 -> :sswitch_31
        0x1aba44 -> :sswitch_13
        0x1aba68 -> :sswitch_d
        0x1aba82 -> :sswitch_5
        0x1abadb -> :sswitch_32
        0x1abde2 -> :sswitch_1b
        0x1abde3 -> :sswitch_2
        0x1abe02 -> :sswitch_22
        0x1abe04 -> :sswitch_2d
        0x1abe66 -> :sswitch_2c
        0x1abe85 -> :sswitch_2e
        0x1abe9c -> :sswitch_34
        0x1abe9e -> :sswitch_2b
        0x1ac166 -> :sswitch_33
        0x1ac184 -> :sswitch_14
        0x1ac187 -> :sswitch_4
        0x1ac1cb -> :sswitch_b
        0x1ac202 -> :sswitch_c
        0x1ac224 -> :sswitch_10
        0x1ac246 -> :sswitch_f
        0x1ac265 -> :sswitch_1
        0x1ac50e -> :sswitch_36
        0x1ac549 -> :sswitch_26
        0x1ac584 -> :sswitch_2f
        0x1ac5aa -> :sswitch_35
        0x1ac606 -> :sswitch_e
        0x1ac620 -> :sswitch_24
        0x1ac626 -> :sswitch_20
        0x1ac909 -> :sswitch_19
        0x1ac925 -> :sswitch_28
        0x1ac984 -> :sswitch_7
        0x1ac9a2 -> :sswitch_17
        0x1ac9a9 -> :sswitch_3b
        0x1ac9c1 -> :sswitch_3a
        0x1ac9c8 -> :sswitch_3
    .end sparse-switch
.end method

.method public static initialize()V
    .locals 6

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e1\u06e1\u06e7"

    #@3
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    move v2, v1

    #@8
    :goto_0
    sparse-switch v2, :sswitch_data_0

    #@b
    goto :goto_0

    #@c
    :sswitch_0
    sput-object v0, Ltdr/util/MemoryAnalyzer;->timer:Ljava/util/Timer;

    #@e
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@11
    move-result v1

    #@12
    if-gtz v1, :cond_4

    #@14
    const-string v1, "\u06e1\u06e1\u06e7"

    #@16
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@19
    move-result v1

    #@1a
    move v2, v1

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1f
    move-result v1

    #@20
    if-gtz v1, :cond_1

    #@22
    const-string v1, "\u06e7\u06e0\u06df"

    #@24
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@27
    move-result v1

    #@28
    move v2, v1

    #@29
    goto :goto_0

    #@2a
    :cond_1
    const-string v1, "\u06e1\u06e5\u06e5"

    #@2c
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2f
    move-result v1

    #@30
    move v2, v1

    #@31
    goto :goto_0

    #@32
    :sswitch_2
    new-instance v1, Ltdr/util/MemoryAnalyzer$1;

    #@34
    invoke-direct {v1}, Ltdr/util/MemoryAnalyzer$1;-><init>()V

    #@37
    const-wide/16 v2, 0x0

    #@39
    const-wide/16 v4, 0x1388

    #@3b
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@3e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@41
    move-result v1

    #@42
    if-ltz v1, :cond_2

    #@44
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@47
    const-string v1, "\u06e3\u06e1\u06df"

    #@49
    :goto_1
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4c
    move-result v1

    #@4d
    move v2, v1

    #@4e
    goto :goto_0

    #@4f
    :cond_2
    const-string v1, "\u06e1\u06e5\u06e5"

    #@51
    goto :goto_1

    #@52
    :sswitch_3
    new-instance v1, Ljava/util/Timer;

    #@54
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #@57
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@5a
    move-result v0

    #@5b
    if-ltz v0, :cond_3

    #@5d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@60
    const-string v0, "\u06e5\u06e5\u06df"

    #@62
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@65
    move-result v2

    #@66
    move-object v0, v1

    #@67
    goto :goto_0

    #@68
    :cond_3
    const-string v0, "\u06e0\u06e0\u06e7"

    #@6a
    goto :goto_2

    #@6b
    :cond_4
    const-string v1, "\u06e5\u06e5\u06df"

    #@6d
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@70
    move-result v1

    #@71
    move v2, v1

    #@72
    goto :goto_0

    #@73
    :sswitch_4
    sget-object v1, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@75
    sget-object v1, Ltdr/util/MemoryAnalyzer;->timer:Ljava/util/Timer;

    #@77
    if-nez v1, :cond_0

    #@79
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@7c
    move-result v1

    #@7d
    if-gtz v1, :cond_5

    #@7f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@82
    const-string v1, "\u06e1\u06e5\u06e5"

    #@84
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@87
    move-result v1

    #@88
    move v2, v1

    #@89
    goto/16 :goto_0

    #@8b
    :cond_5
    const-string v1, "\u06e7\u06e2\u06e0"

    #@8d
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@90
    move-result v1

    #@91
    move v2, v1

    #@92
    goto/16 :goto_0

    #@94
    :sswitch_5
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@97
    move-result v1

    #@98
    if-gtz v1, :cond_6

    #@9a
    const-string v1, "\u06df\u06df\u06e7"

    #@9c
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@9f
    move-result v1

    #@a0
    move v2, v1

    #@a1
    goto/16 :goto_0

    #@a3
    :cond_6
    const-string v1, "\u06e1\u06e1\u06e7"

    #@a5
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@a8
    move-result v1

    #@a9
    move v2, v1

    #@aa
    goto/16 :goto_0

    #@ac
    :sswitch_6
    return-void

    #@ad
    nop

    #@ae
    :sswitch_data_0
    .sparse-switch
        0x1aaae7 -> :sswitch_0
        0x1aaec7 -> :sswitch_4
        0x1aaf41 -> :sswitch_6
        0x1ab641 -> :sswitch_1
        0x1abe3f -> :sswitch_2
        0x1ac547 -> :sswitch_5
        0x1ac565 -> :sswitch_3
    .end sparse-switch
.end method
