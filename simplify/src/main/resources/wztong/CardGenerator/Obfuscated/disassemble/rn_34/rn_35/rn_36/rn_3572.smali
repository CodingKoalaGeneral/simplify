.class public Lrn_34/rn_35/rn_36/rn_3572;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final rn_3573(Landroid/content/Context;)I
    .locals 4

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e4\u06e2\u06e6"

    #@3
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@6
    move-result v3

    #@7
    move-object v1, v0

    #@8
    move-object v2, v0

    #@9
    :goto_0
    sparse-switch v3, :sswitch_data_0

    #@c
    goto :goto_0

    #@d
    :sswitch_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@14
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@17
    move-result v0

    #@18
    if-gtz v0, :cond_3

    #@1a
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1d
    move-object v0, v1

    #@1e
    :cond_0
    const-string v1, "\u06e4\u06e7\u06df"

    #@20
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@23
    move-result v3

    #@24
    move-object v1, v0

    #@25
    goto :goto_0

    #@26
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@28
    const-string v0, "window"

    #@2a
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/view/WindowManager;

    #@30
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@33
    move-result v1

    #@34
    if-gtz v1, :cond_0

    #@36
    const-string v1, "\u06e3\u06e8\u06e3"

    #@38
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@3b
    move-result v3

    #@3c
    move-object v1, v0

    #@3d
    goto :goto_0

    #@3e
    :sswitch_2
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@40
    return v0

    #@41
    :sswitch_3
    new-instance v0, Landroid/util/DisplayMetrics;

    #@43
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@46
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@49
    move-result v2

    #@4a
    if-gtz v2, :cond_1

    #@4c
    const-string v2, "\u06e7\u06e0\u06e3"

    #@4e
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@51
    move-result v3

    #@52
    move-object v2, v0

    #@53
    goto :goto_0

    #@54
    :cond_1
    const-string v2, "\u06e3\u06e6\u06e2"

    #@56
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@59
    move-result v3

    #@5a
    move-object v2, v0

    #@5b
    goto :goto_0

    #@5c
    :sswitch_4
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@5f
    move-result v0

    #@60
    if-gtz v0, :cond_2

    #@62
    const-string v0, "\u06e2\u06df\u06e1"

    #@64
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@67
    move-result v0

    #@68
    move v3, v0

    #@69
    goto :goto_0

    #@6a
    :cond_2
    const-string v0, "\u06e4\u06e2\u06e6"

    #@6c
    goto :goto_1

    #@6d
    :cond_3
    const-string v0, "\u06e7\u06e0\u06e3"

    #@6f
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@72
    move-result v0

    #@73
    move v3, v0

    #@74
    goto :goto_0

    #@75
    nop

    #@76
    :sswitch_data_0
    .sparse-switch
        0x1ab6df -> :sswitch_0
        0x1ab71e -> :sswitch_4
        0x1aba28 -> :sswitch_1
        0x1ababc -> :sswitch_3
        0x1ac52a -> :sswitch_2
    .end sparse-switch
.end method

.method public static final rn_3575(Landroid/content/Context;)I
    .locals 4

    #@0
    const/4 v2, 0x0

    #@1
    const-string v0, "\u06e2\u06e6\u06e3"

    #@3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6
    move-result v3

    #@7
    move-object v0, v2

    #@8
    move-object v1, v2

    #@9
    :goto_0
    sparse-switch v3, :sswitch_data_0

    #@c
    goto :goto_0

    #@d
    :sswitch_0
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@f
    const-string v0, "window"

    #@11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/WindowManager;

    #@17
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1a
    move-result v2

    #@1b
    if-ltz v2, :cond_1

    #@1d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@20
    const-string v2, "\u06e5\u06df\u06e0"

    #@22
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@25
    move-result v2

    #@26
    move v3, v2

    #@27
    goto :goto_0

    #@28
    :sswitch_1
    const-string v2, "\u06e2\u06e6\u06e3"

    #@2a
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2d
    move-result v2

    #@2e
    move v3, v2

    #@2f
    goto :goto_0

    #@30
    :sswitch_2
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@32
    return v0

    #@33
    :sswitch_3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@3a
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3d
    move-result v2

    #@3e
    if-ltz v2, :cond_0

    #@40
    const-string v2, "\u06e6\u06e0\u06e6"

    #@42
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@45
    move-result v2

    #@46
    move v3, v2

    #@47
    goto :goto_0

    #@48
    :cond_0
    const-string v2, "\u06e6\u06e0\u06e6"

    #@4a
    :goto_1
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@4d
    move-result v2

    #@4e
    move v3, v2

    #@4f
    goto :goto_0

    #@50
    :sswitch_4
    new-instance v1, Landroid/util/DisplayMetrics;

    #@52
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@55
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@58
    move-result v2

    #@59
    if-ltz v2, :cond_2

    #@5b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@5e
    :cond_1
    const-string v2, "\u06e7\u06e7\u06e2"

    #@60
    goto :goto_1

    #@61
    :cond_2
    const-string v2, "\u06e6\u06df\u06e5"

    #@63
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@66
    move-result v2

    #@67
    move v3, v2

    #@68
    goto :goto_0

    #@69
    nop

    #@6a
    :sswitch_data_0
    .sparse-switch
        0x1ab31f -> :sswitch_0
        0x1abd86 -> :sswitch_1
        0x1ac14c -> :sswitch_3
        0x1ac16c -> :sswitch_2
        0x1ac602 -> :sswitch_4
    .end sparse-switch
.end method

.method public static final rn_3579(Landroid/content/Context;)I
    .locals 9

    #@0
    const/4 v8, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const-string v0, "\u06e7\u06e5\u06e4"

    #@4
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    move v5, v8

    #@9
    move v2, v8

    #@a
    move v7, v8

    #@b
    move v4, v0

    #@c
    move v1, v8

    #@d
    :goto_0
    sparse-switch v4, :sswitch_data_0

    #@10
    goto :goto_0

    #@11
    :sswitch_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@13
    const-string v4, "Xiaomi"

    #@15
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_7

    #@1b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1e
    move-result v0

    #@1f
    if-gtz v0, :cond_9

    #@21
    const-string v0, "\u06e5\u06e8\u06e1"

    #@23
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    move v4, v0

    #@28
    goto :goto_0

    #@29
    :cond_0
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2c
    move-result v0

    #@2d
    if-gtz v0, :cond_1

    #@2f
    const-string v0, "\u06e5\u06e2"

    #@31
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    move v4, v0

    #@36
    goto :goto_0

    #@37
    :cond_1
    const-string v0, "\u06e2\u06e0\u06e7"

    #@39
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@3c
    move-result v0

    #@3d
    move v4, v0

    #@3e
    goto :goto_0

    #@3f
    :sswitch_2
    const-string v0, "window"

    #@41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/view/WindowManager;

    #@47
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@4e
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@51
    move-result v0

    #@52
    if-gtz v0, :cond_2

    #@54
    const-string v0, "\u06e0\u06df\u06e3"

    #@56
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@59
    move-result v0

    #@5a
    move v4, v0

    #@5b
    goto :goto_0

    #@5c
    :cond_2
    const-string v0, "\u06e0\u06df\u06e6"

    #@5e
    goto :goto_2

    #@5f
    :sswitch_3
    add-int v2, v7, v5

    #@61
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@64
    move-result v0

    #@65
    if-ltz v0, :cond_3

    #@67
    const-string v0, "\u06e0\u06df\u06e6"

    #@69
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6c
    move-result v0

    #@6d
    move v4, v0

    #@6e
    goto :goto_0

    #@6f
    :cond_3
    const-string v0, "\u06e1\u06e8\u06e4"

    #@71
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@74
    move-result v0

    #@75
    move v4, v0

    #@76
    goto :goto_0

    #@77
    :sswitch_4
    const-string v0, "\u06e7\u06e5\u06e4"

    #@79
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@7c
    move-result v0

    #@7d
    move v4, v0

    #@7e
    goto :goto_0

    #@7f
    :sswitch_5
    sub-int v0, v1, v5

    #@81
    :goto_3
    return v0

    #@82
    :sswitch_6
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3585(Landroid/content/Context;)I

    #@85
    move-result v0

    #@86
    add-int/2addr v0, v7

    #@87
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3575(Landroid/content/Context;)I

    #@8a
    move-result v4

    #@8b
    if-ge v0, v4, :cond_a

    #@8d
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@90
    move-result v0

    #@91
    if-gtz v0, :cond_4

    #@93
    const-string v0, "\u06e1\u06e5\u06e6"

    #@95
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@98
    move-result v0

    #@99
    move v4, v0

    #@9a
    goto/16 :goto_0

    #@9c
    :cond_4
    const-string v0, "\u06e4\u06e6\u06df"

    #@9e
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@a1
    move-result v0

    #@a2
    move v4, v0

    #@a3
    goto/16 :goto_0

    #@a5
    :sswitch_7
    const-string v0, "\u06e4\u06e7\u06e8"

    #@a7
    move v1, v2

    #@a8
    :goto_4
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@ab
    move-result v0

    #@ac
    move v4, v0

    #@ad
    goto/16 :goto_0

    #@af
    :sswitch_8
    new-instance v0, Landroid/util/DisplayMetrics;

    #@b1
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@b4
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@b7
    move-result v3

    #@b8
    if-gtz v3, :cond_5

    #@ba
    const-string v3, "\u06e0\u06e1\u06e7"

    #@bc
    move-object v4, v3

    #@bd
    move v6, v1

    #@be
    :goto_5
    invoke-static {v4}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@c1
    move-result v4

    #@c2
    move-object v3, v0

    #@c3
    move v1, v6

    #@c4
    goto/16 :goto_0

    #@c6
    :cond_5
    const-string v3, "\u06e3\u06e5\u06e2"

    #@c8
    invoke-static {v3}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@cb
    move-result v4

    #@cc
    move-object v3, v0

    #@cd
    goto/16 :goto_0

    #@cf
    :sswitch_9
    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    #@d1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@d4
    move-result v0

    #@d5
    if-ltz v0, :cond_6

    #@d7
    const-string v0, "\u06e7\u06e5\u06e4"

    #@d9
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@dc
    move-result v0

    #@dd
    move v4, v0

    #@de
    goto/16 :goto_0

    #@e0
    :cond_6
    const-string v0, "\u06e5\u06e7\u06e8"

    #@e2
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@e5
    move-result v0

    #@e6
    move v4, v0

    #@e7
    goto/16 :goto_0

    #@e9
    :cond_7
    :sswitch_a
    const-string v0, "\u06e1\u06e5\u06e6"

    #@eb
    goto/16 :goto_1

    #@ed
    :sswitch_b
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@ef
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3587(Landroid/content/Context;)Z

    #@f2
    move-result v0

    #@f3
    if-nez v0, :cond_0

    #@f5
    const-string v0, "\u06e3\u06df\u06e5"

    #@f7
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@fa
    move-result v0

    #@fb
    move v4, v0

    #@fc
    goto/16 :goto_0

    #@fe
    :sswitch_c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@101
    move-result v0

    #@102
    if-gtz v0, :cond_8

    #@104
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@107
    const-string v0, "\u06e1\u06e3\u06e7"

    #@109
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@10c
    move-result v0

    #@10d
    move v4, v0

    #@10e
    move v1, v7

    #@10f
    goto/16 :goto_0

    #@111
    :cond_8
    const-string v1, "\u06e0\u06e1\u06e7"

    #@113
    move-object v0, v3

    #@114
    move-object v4, v1

    #@115
    move v6, v7

    #@116
    goto :goto_5

    #@117
    :cond_9
    const-string v0, "\u06e4\u06e6\u06e3"

    #@119
    goto :goto_4

    #@11a
    :cond_a
    :sswitch_d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@11d
    move-result v0

    #@11e
    if-gtz v0, :cond_b

    #@120
    const-string v0, "\u06e1\u06e8\u06e3"

    #@122
    goto :goto_4

    #@123
    :cond_b
    const-string v0, "\u06e4\u06e7\u06e8"

    #@125
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@128
    move-result v0

    #@129
    move v4, v0

    #@12a
    goto/16 :goto_0

    #@12c
    :sswitch_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12f
    move-result-object v0

    #@130
    const-string v4, "force_fsg_nav_bar"

    #@132
    invoke-static {v0, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@135
    move-result v0

    #@136
    if-eqz v0, :cond_7

    #@138
    const-string v0, "\u06e1\u06e3\u06e7"

    #@13a
    goto/16 :goto_1

    #@13c
    :sswitch_f
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3575(Landroid/content/Context;)I

    #@13f
    move-result v0

    #@140
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3583(Landroid/content/Context;)I

    #@143
    move-result v1

    #@144
    sub-int/2addr v0, v1

    #@145
    goto/16 :goto_3

    #@147
    :sswitch_10
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3585(Landroid/content/Context;)I

    #@14a
    move-result v0

    #@14b
    add-int/2addr v0, v7

    #@14c
    sub-int/2addr v0, v5

    #@14d
    goto/16 :goto_3

    #@14f
    :sswitch_11
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3583(Landroid/content/Context;)I

    #@152
    move-result v5

    #@153
    const-string v4, "\u06df\u06df"

    #@155
    move-object v0, v3

    #@156
    move v6, v1

    #@157
    goto/16 :goto_5

    #@159
    nop

    #@15a
    :sswitch_data_0
    .sparse-switch
        0xdbe0 -> :sswitch_0
        0x1aaac4 -> :sswitch_4
        0x1aaac7 -> :sswitch_9
        0x1aab06 -> :sswitch_6
        0x1aaf05 -> :sswitch_10
        0x1aaf42 -> :sswitch_c
        0x1aaf9d -> :sswitch_7
        0x1ab269 -> :sswitch_8
        0x1ab609 -> :sswitch_f
        0x1ab6c0 -> :sswitch_2
        0x1aba9d -> :sswitch_3
        0x1abaa1 -> :sswitch_e
        0x1abac5 -> :sswitch_5
        0x1abe86 -> :sswitch_11
        0x1abe9e -> :sswitch_a
        0x1ac1a9 -> :sswitch_d
        0x1ac207 -> :sswitch_1
        0x1ac5c6 -> :sswitch_b
    .end sparse-switch
.end method

.method public static final rn_3583(Landroid/content/Context;)I
    .locals 7

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const-string v1, "\u06e4\u06e1\u06e3"

    #@4
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@7
    move-result v2

    #@8
    move-object v1, v0

    #@9
    move-object v3, v0

    #@a
    move v6, v2

    #@b
    move v4, v5

    #@c
    :goto_0
    sparse-switch v6, :sswitch_data_0

    #@f
    goto :goto_0

    #@10
    :cond_0
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@13
    move-result v0

    #@14
    if-gtz v0, :cond_6

    #@16
    const-string v0, "\u06e8\u06e5\u06e7"

    #@18
    move-object v2, v0

    #@19
    :goto_1
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    move v6, v0

    #@1e
    goto :goto_0

    #@1f
    :catch_0
    move-exception v0

    #@20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@23
    move v4, v5

    #@24
    :goto_2
    :sswitch_1
    return v4

    #@25
    :sswitch_2
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@28
    move-result v0

    #@29
    if-gtz v0, :cond_1

    #@2b
    const-string v0, "\u06e6\u06e6\u06e2"

    #@2d
    :goto_3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    move v6, v0

    #@32
    goto :goto_0

    #@33
    :cond_1
    const-string v0, "\u06e0\u06df\u06e2"

    #@35
    goto :goto_3

    #@36
    :sswitch_3
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    #@38
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v3

    #@3c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@3f
    move-result v0

    #@40
    if-gtz v0, :cond_2

    #@42
    const-string v0, "\u06e5\u06e0\u06e3"

    #@44
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@47
    move-result v0

    #@48
    move v6, v0

    #@49
    goto :goto_0

    #@4a
    :cond_2
    const-string v2, "\u06e3\u06e4\u06e8"

    #@4c
    move-object v0, v1

    #@4d
    :goto_4
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@50
    move-result v2

    #@51
    move-object v1, v0

    #@52
    move v6, v2

    #@53
    goto :goto_0

    #@54
    :sswitch_4
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@57
    move-result v0

    #@58
    if-gtz v0, :cond_3

    #@5a
    const-string v0, "\u06e7\u06e5\u06e8"

    #@5c
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@5f
    move-result v0

    #@60
    move v6, v0

    #@61
    goto :goto_0

    #@62
    :cond_3
    const-string v0, "\u06e4\u06e1\u06e3"

    #@64
    goto :goto_5

    #@65
    :sswitch_5
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@68
    move-result-object v0

    #@69
    const-string v2, "status_bar_height"

    #@6b
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7e
    move-result v2

    #@7f
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@82
    move-result v2

    #@83
    const-string v0, "\u06e5\u06e0\u06e3"

    #@85
    :goto_6
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@88
    move-result v0

    #@89
    move v6, v0

    #@8a
    move v4, v2

    #@8b
    goto :goto_0

    #@8c
    :sswitch_6
    const-string v0, "status_bar_height"

    #@8e
    const-string v2, "dimen"

    #@90
    const-string v3, "android"

    #@92
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@95
    move-result v0

    #@96
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@99
    move-result v4

    #@9a
    goto :goto_2

    #@9b
    :sswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9e
    move-result-object v0

    #@9f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@a2
    move-result v1

    #@a3
    if-ltz v1, :cond_4

    #@a5
    const-string v1, "\u06e4\u06e7\u06e6"

    #@a7
    move-object v2, v1

    #@a8
    goto :goto_4

    #@a9
    :cond_4
    const-string v2, "\u06e4\u06e7\u06e6"

    #@ab
    move-object v1, v0

    #@ac
    goto/16 :goto_1

    #@ae
    :sswitch_8
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@b0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b2
    const/16 v2, 0x1d

    #@b4
    if-ge v0, v2, :cond_0

    #@b6
    const-string v2, "\u06e0\u06df\u06e2"

    #@b8
    move-object v0, v1

    #@b9
    goto :goto_4

    #@ba
    :sswitch_9
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@bd
    move-result v0

    #@be
    if-gtz v0, :cond_5

    #@c0
    const-string v0, "\u06e0\u06e3\u06e6"

    #@c2
    move v2, v4

    #@c3
    goto :goto_6

    #@c4
    :cond_5
    const-string v0, "\u06e5\u06e0\u06e3"

    #@c6
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@c9
    move-result v0

    #@ca
    move v6, v0

    #@cb
    goto/16 :goto_0

    #@cd
    :cond_6
    const-string v0, "\u06e2\u06e3"

    #@cf
    move-object v2, v0

    #@d0
    goto/16 :goto_1

    #@d2
    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc41 -> :sswitch_7
        0x1aaac3 -> :sswitch_3
        0x1aaec7 -> :sswitch_4
        0x1ab6a7 -> :sswitch_5
        0x1aba06 -> :sswitch_8
        0x1abac3 -> :sswitch_6
        0x1abda8 -> :sswitch_1
        0x1abda9 -> :sswitch_9
        0x1ac185 -> :sswitch_2
    .end sparse-switch
.end method

.method public static final rn_3585(Landroid/content/Context;)I
    .locals 4

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "\u06e3\u06e7\u06e1"

    #@3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    move v2, v0

    #@8
    :goto_0
    sparse-switch v2, :sswitch_data_0

    #@b
    goto :goto_0

    #@c
    :cond_0
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@f
    move-result v0

    #@10
    if-gtz v0, :cond_3

    #@12
    const-string v2, "\u06e1\u06e5\u06e0"

    #@14
    move-object v0, v1

    #@15
    :goto_1
    invoke-static {v2}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    move-object v1, v0

    #@1a
    goto :goto_0

    #@1b
    :sswitch_1
    const-string v0, "navigation_bar_height"

    #@1d
    const-string v2, "dimen"

    #@1f
    const-string v3, "android"

    #@21
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@24
    move-result v0

    #@25
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@28
    move-result v0

    #@29
    :goto_2
    return v0

    #@2a
    :sswitch_2
    const/4 v0, 0x0

    #@2b
    goto :goto_2

    #@2c
    :sswitch_3
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@30
    const/16 v2, 0x11

    #@32
    if-ge v0, v2, :cond_0

    #@34
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@37
    move-result v0

    #@38
    if-gtz v0, :cond_1

    #@3a
    const-string v0, "\u06e3\u06e7\u06e1"

    #@3c
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@3f
    move-result v0

    #@40
    move v2, v0

    #@41
    goto :goto_0

    #@42
    :cond_1
    const-string v2, "\u06e7\u06df\u06e8"

    #@44
    move-object v0, v1

    #@45
    goto :goto_1

    #@46
    :sswitch_4
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@49
    move-result v0

    #@4a
    if-ltz v0, :cond_2

    #@4c
    const-string v0, "\u06df\u06e4\u06e8"

    #@4e
    :goto_3
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@51
    move-result v0

    #@52
    move v2, v0

    #@53
    goto :goto_0

    #@54
    :cond_2
    const-string v0, "\u06e3\u06e7\u06e1"

    #@56
    goto :goto_3

    #@57
    :cond_3
    const-string v0, "\u06e8\u06e4\u06e4"

    #@59
    goto :goto_3

    #@5a
    :sswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v0

    #@5e
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@61
    move-result v1

    #@62
    if-gtz v1, :cond_4

    #@64
    const-string v1, "\u06e8\u06e4\u06e7"

    #@66
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@69
    move-result v2

    #@6a
    move-object v1, v0

    #@6b
    goto :goto_0

    #@6c
    :cond_4
    const-string v1, "\u06e8\u06e4\u06e7"

    #@6e
    move-object v2, v1

    #@6f
    goto :goto_1

    #@70
    :sswitch_data_0
    .sparse-switch
        0x1aaf81 -> :sswitch_0
        0x1ab6a5 -> :sswitch_4
        0x1ab6fd -> :sswitch_3
        0x1ac510 -> :sswitch_2
        0x1ac968 -> :sswitch_5
        0x1ac96b -> :sswitch_1
    .end sparse-switch
.end method

.method public static final rn_3587(Landroid/content/Context;)Z
    .locals 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const-string v1, "\u06e7\u06e3\u06e4"

    #@4
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@7
    move-result v2

    #@8
    move-object v4, v0

    #@9
    move-object v1, v0

    #@a
    move v5, v3

    #@b
    :goto_0
    sparse-switch v2, :sswitch_data_0

    #@e
    goto :goto_0

    #@f
    :sswitch_0
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@16
    const-string v0, "\u06e6\u06e4\u06e5"

    #@18
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    move v2, v0

    #@1d
    goto :goto_0

    #@1e
    :sswitch_1
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@20
    sub-int v0, v5, v0

    #@22
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3583(Landroid/content/Context;)I

    #@25
    move-result v2

    #@26
    sub-int/2addr v0, v2

    #@27
    if-lez v0, :cond_1

    #@29
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@2c
    move-result v0

    #@2d
    if-ltz v0, :cond_0

    #@2f
    const-string v0, "\u06e5\u06e0\u06e0"

    #@31
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    move v2, v0

    #@36
    goto :goto_0

    #@37
    :cond_0
    const-string v0, "\u06e8\u06e2\u06df"

    #@39
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@3c
    move-result v0

    #@3d
    move v2, v0

    #@3e
    goto :goto_0

    #@3f
    :sswitch_2
    const-string v0, "\u06e7\u06e3\u06e4"

    #@41
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@44
    move-result v0

    #@45
    move v2, v0

    #@46
    goto :goto_0

    #@47
    :sswitch_3
    move v0, v3

    #@48
    :goto_2
    return v0

    #@49
    :cond_1
    :sswitch_4
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@4c
    move-result v0

    #@4d
    if-gtz v0, :cond_2

    #@4f
    const-string v2, "\u06e0\u06e3\u06e8"

    #@51
    move-object v0, v1

    #@52
    :goto_3
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@55
    move-result v2

    #@56
    move-object v1, v0

    #@57
    goto :goto_0

    #@58
    :cond_2
    const-string v2, "\u06e5\u06e2\u06e4"

    #@5a
    move-object v0, v1

    #@5b
    goto :goto_3

    #@5c
    :sswitch_5
    move v0, v3

    #@5d
    goto :goto_2

    #@5e
    :cond_3
    :sswitch_6
    const-string v0, "\u06e8\u06df\u06e1"

    #@60
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@63
    move-result v0

    #@64
    move v2, v0

    #@65
    goto :goto_0

    #@66
    :sswitch_7
    const-string v0, "window"

    #@68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Landroid/view/WindowManager;

    #@6e
    const-string v2, "\u06df\u06e1\u06e4"

    #@70
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@73
    move-result v2

    #@74
    move-object v4, v0

    #@75
    goto :goto_0

    #@76
    :sswitch_8
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@7d
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@80
    move-result v0

    #@81
    if-gtz v0, :cond_4

    #@83
    const-string v0, "\u06e5\u06e4\u06e8"

    #@85
    goto :goto_1

    #@86
    :cond_4
    const-string v0, "\u06e5\u06e0\u06e0"

    #@88
    :goto_4
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@8b
    move-result v0

    #@8c
    move v2, v0

    #@8d
    goto/16 :goto_0

    #@8f
    :sswitch_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@92
    move-result-object v0

    #@93
    const-string v2, "force_fsg_nav_bar"

    #@95
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@98
    move-result v0

    #@99
    if-eqz v0, :cond_7

    #@9b
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@9e
    move-result v0

    #@9f
    if-gtz v0, :cond_5

    #@a1
    const-string v0, "\u06e5\u06e5\u06e2"

    #@a3
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@a6
    move-result v0

    #@a7
    move v2, v0

    #@a8
    goto/16 :goto_0

    #@aa
    :cond_5
    const-string v0, "\u06e1\u06e4\u06e2"

    #@ac
    goto :goto_5

    #@ad
    :sswitch_a
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@af
    const-string v2, "Xiaomi"

    #@b1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v0

    #@b5
    if-eqz v0, :cond_7

    #@b7
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@ba
    move-result v0

    #@bb
    if-gtz v0, :cond_6

    #@bd
    const-string v0, "\u06e3\u06e4\u06e0"

    #@bf
    goto :goto_4

    #@c0
    :cond_6
    const-string v0, "\u06e5\u06e5\u06e2"

    #@c2
    :goto_6
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@c5
    move-result v0

    #@c6
    move v2, v0

    #@c7
    goto/16 :goto_0

    #@c9
    :cond_7
    :sswitch_b
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@cc
    move-result v0

    #@cd
    if-gtz v0, :cond_8

    #@cf
    const-string v0, "\u06e1\u06df\u06e3"

    #@d1
    goto :goto_6

    #@d2
    :cond_8
    const-string v0, "\u06e8\u06e6\u06e7"

    #@d4
    goto :goto_6

    #@d5
    :sswitch_c
    const/4 v0, 0x1

    #@d6
    goto/16 :goto_2

    #@d8
    :sswitch_d
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@da
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@dc
    const/16 v2, 0x11

    #@de
    if-ge v0, v2, :cond_3

    #@e0
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@e3
    move-result v0

    #@e4
    if-gtz v0, :cond_9

    #@e6
    const-string v0, "\u06e7\u06e5\u06e1"

    #@e8
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@eb
    move-result v0

    #@ec
    move v2, v0

    #@ed
    goto/16 :goto_0

    #@ef
    :cond_9
    const-string v0, "\u06e4\u06e0\u06e0"

    #@f1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@f4
    move-result v0

    #@f5
    move v2, v0

    #@f6
    goto/16 :goto_0

    #@f8
    :sswitch_e
    new-instance v0, Landroid/util/DisplayMetrics;

    #@fa
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@fd
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@100
    move-result v1

    #@101
    if-gtz v1, :cond_a

    #@103
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@106
    const-string v1, "\u06e6\u06e4\u06e5"

    #@108
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@10b
    move-result v2

    #@10c
    move-object v1, v0

    #@10d
    goto/16 :goto_0

    #@10f
    :cond_a
    const-string v1, "\u06e7\u06e5\u06e1"

    #@111
    move-object v2, v1

    #@112
    goto/16 :goto_3

    #@114
    :sswitch_f
    move v0, v3

    #@115
    goto/16 :goto_2

    #@117
    :sswitch_10
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@119
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@11c
    move-result v2

    #@11d
    if-gtz v2, :cond_b

    #@11f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@122
    const-string v2, "\u06df\u06e1\u06e4"

    #@124
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@127
    move-result v2

    #@128
    move v5, v0

    #@129
    goto/16 :goto_0

    #@12b
    :cond_b
    const-string v2, "\u06e3\u06e6\u06e7"

    #@12d
    invoke-static {v2}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@130
    move-result v2

    #@131
    move v5, v0

    #@132
    goto/16 :goto_0

    #@134
    :sswitch_data_0
    .sparse-switch
        0x1aa742 -> :sswitch_0
        0x1aaf1f -> :sswitch_3
        0x1ab69f -> :sswitch_4
        0x1ab6e4 -> :sswitch_8
        0x1ab9e4 -> :sswitch_5
        0x1abda5 -> :sswitch_1
        0x1abde7 -> :sswitch_f
        0x1abe29 -> :sswitch_b
        0x1abe42 -> :sswitch_9
        0x1ac1e7 -> :sswitch_10
        0x1ac220 -> :sswitch_2
        0x1ac588 -> :sswitch_d
        0x1ac5c3 -> :sswitch_7
        0x1ac8ca -> :sswitch_a
        0x1ac925 -> :sswitch_c
        0x1ac968 -> :sswitch_6
        0x1ac9a9 -> :sswitch_e
    .end sparse-switch
.end method

.method public static final rn_3589(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    #@0
    const-string v0, "\u06e0\u06e8\u06e3"

    #@2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@c
    const-string v0, "clipboard"

    #@e
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/content/ClipboardManager;

    #@14
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    #@17
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1a
    move-result v0

    #@1b
    if-gtz v0, :cond_0

    #@1d
    const-string v0, "\u06e0\u06e8\u06e3"

    #@1f
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    goto :goto_0

    #@24
    :sswitch_1
    const-string v0, "\u06e0\u06e8\u06e3"

    #@26
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@29
    move-result v0

    #@2a
    goto :goto_0

    #@2b
    :cond_0
    const-string v0, "\u06e5\u06e4\u06e7"

    #@2d
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    goto :goto_0

    #@32
    :sswitch_2
    return-void

    #@33
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x1aabdb -> :sswitch_0
        0x1abe28 -> :sswitch_2
        0x1ac147 -> :sswitch_1
    .end sparse-switch
.end method
