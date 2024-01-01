.class public Lrn_34/rn_35/rn_36/rn_4580;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    const-string v0, "\u06e6\u06e0\u06e5"

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
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_1

    #@10
    const-string v0, "\u06e3\u06e0\u06e0"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@19
    new-instance v0, Landroid/content/Intent;

    #@1b
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1e
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@21
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@24
    move-result v0

    #@25
    if-ltz v0, :cond_0

    #@27
    const-string v0, "\u06e0\u06e3\u06e3"

    #@29
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2c
    move-result v0

    #@2d
    goto :goto_0

    #@2e
    :cond_0
    const-string v0, "\u06e2\u06e4\u06e0"

    #@30
    goto :goto_1

    #@31
    :cond_1
    const-string v0, "\u06e6\u06e0\u06e5"

    #@33
    goto :goto_1

    #@34
    :sswitch_2
    return-void

    #@35
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x1aab40 -> :sswitch_0
        0x1ab2de -> :sswitch_2
        0x1ac16b -> :sswitch_1
    .end sparse-switch
.end method

.method public static newActivity2(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "\u06e2\u06e7\u06e8"

    #@2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    return-void

    #@b
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@e
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@11
    move-result v0

    #@12
    if-gtz v0, :cond_0

    #@14
    const-string v0, "\u06e3\u06e5\u06e5"

    #@16
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    const-string v0, "\u06e2\u06e5\u06e8"

    #@1d
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :sswitch_2
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@25
    move-result v0

    #@26
    if-ltz v0, :cond_1

    #@28
    const-string v0, "\u06e4\u06e4\u06df"

    #@2a
    goto :goto_1

    #@2b
    :cond_1
    const-string v0, "\u06e2\u06e7\u06e8"

    #@2d
    goto :goto_1

    #@2e
    :sswitch_3
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@30
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@33
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@36
    move-result v0

    #@37
    if-gtz v0, :cond_2

    #@39
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@3c
    const-string v0, "\u06e2\u06e7\u06e8"

    #@3e
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@41
    move-result v0

    #@42
    goto :goto_0

    #@43
    :cond_2
    const-string v0, "\u06e3\u06e5\u06e5"

    #@45
    goto :goto_2

    #@46
    :sswitch_data_0
    .sparse-switch
        0x1ab305 -> :sswitch_0
        0x1ab343 -> :sswitch_3
        0x1ab6c3 -> :sswitch_1
        0x1ababd -> :sswitch_2
    .end sparse-switch
.end method

.method public static newActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    #@0
    const-string v0, "\u06e6\u06e4\u06e4"

    #@2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    const-string v0, "\u06e6\u06e4\u06e4"

    #@c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0

    #@11
    :sswitch_1
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@13
    new-instance v0, Landroid/content/Intent;

    #@15
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@18
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@1b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1e
    move-result v0

    #@1f
    if-gtz v0, :cond_0

    #@21
    const-string v0, "\u06e1\u06e7\u06e5"

    #@23
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    :cond_0
    const-string v0, "\u06e4\u06e1\u06e3"

    #@2a
    goto :goto_1

    #@2b
    :sswitch_2
    return-void

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x1aaf7f -> :sswitch_0
        0x1aba06 -> :sswitch_2
        0x1ac1e6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static newActivityForResult2(Landroid/app/Activity;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    #@0
    const-string v0, "\u06e5\u06e5\u06e3"

    #@2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    return-void

    #@b
    :sswitch_1
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@e
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@11
    move-result v0

    #@12
    if-gtz v0, :cond_0

    #@14
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@17
    const-string v0, "\u06e7\u06e6\u06e8"

    #@19
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    goto :goto_0

    #@1e
    :cond_0
    const-string v0, "\u06e2\u06e5\u06e3"

    #@20
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    :sswitch_2
    const-string v0, "\u06e5\u06e5\u06e3"

    #@27
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    :sswitch_3
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@2e
    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@31
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@34
    move-result v0

    #@35
    if-gtz v0, :cond_1

    #@37
    const-string v0, "\u06e3\u06e8\u06e4"

    #@39
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@3c
    move-result v0

    #@3d
    goto :goto_0

    #@3e
    :cond_1
    const-string v0, "\u06e3\u06e8\u06e4"

    #@40
    goto :goto_1

    #@41
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x1ab300 -> :sswitch_0
        0x1ab71f -> :sswitch_1
        0x1abe43 -> :sswitch_3
        0x1ac5e9 -> :sswitch_2
    .end sparse-switch
.end method

.method public static rn_4586(Landroid/app/Activity;Z)V
    .locals 3

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "\u06e6\u06e4\u06e5"

    #@3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

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
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@f
    move-result v0

    #@10
    if-gtz v0, :cond_3

    #@12
    const-string v0, "\u06e3\u06e0\u06df"

    #@14
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@17
    move-result v0

    #@18
    move v2, v0

    #@19
    goto :goto_0

    #@1a
    :sswitch_1
    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    #@1d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@20
    move-result v0

    #@21
    if-gtz v0, :cond_1

    #@23
    :cond_0
    const-string v0, "\u06e2\u06e1\u06e1"

    #@25
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@28
    move-result v0

    #@29
    move v2, v0

    #@2a
    goto :goto_0

    #@2b
    :cond_1
    const-string v2, "\u06e8\u06e6"

    #@2d
    move-object v0, v1

    #@2e
    :goto_1
    invoke-static {v2}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@31
    move-result v2

    #@32
    move-object v1, v0

    #@33
    goto :goto_0

    #@34
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@36
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@39
    move-result-object v0

    #@3a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@3d
    move-result v1

    #@3e
    if-gtz v1, :cond_2

    #@40
    const-string v1, "\u06e7\u06e8\u06e4"

    #@42
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@45
    move-result v2

    #@46
    move-object v1, v0

    #@47
    goto :goto_0

    #@48
    :cond_2
    const-string v1, "\u06e7\u06e4\u06df"

    #@4a
    move-object v2, v1

    #@4b
    goto :goto_1

    #@4c
    :cond_3
    const-string v0, "\u06e0\u06e3\u06e5"

    #@4e
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@51
    move-result v0

    #@52
    move v2, v0

    #@53
    goto :goto_0

    #@54
    :cond_4
    :sswitch_3
    const-string v2, "\u06e7\u06e8\u06e4"

    #@56
    move-object v0, v1

    #@57
    goto :goto_1

    #@58
    :sswitch_4
    const-string v2, "\u06e5\u06e8\u06e2"

    #@5a
    move-object v0, v1

    #@5b
    goto :goto_1

    #@5c
    :sswitch_5
    if-eqz p1, :cond_8

    #@5e
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@61
    move-result v0

    #@62
    if-gtz v0, :cond_5

    #@64
    const-string v0, "\u06e5\u06e6\u06e8"

    #@66
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@69
    move-result v0

    #@6a
    move v2, v0

    #@6b
    goto :goto_0

    #@6c
    :cond_5
    const-string v2, "\u06e3\u06e4\u06df"

    #@6e
    move-object v0, v1

    #@6f
    goto :goto_1

    #@70
    :sswitch_6
    if-nez v1, :cond_4

    #@72
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@75
    move-result v0

    #@76
    if-ltz v0, :cond_0

    #@78
    const-string v0, "\u06e6\u06e4\u06e5"

    #@7a
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@7d
    move-result v0

    #@7e
    move v2, v0

    #@7f
    goto :goto_0

    #@80
    :sswitch_7
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    #@83
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@86
    move-result v0

    #@87
    if-gtz v0, :cond_6

    #@89
    :cond_6
    const-string v0, "\u06e5\u06e8\u06e2"

    #@8b
    goto :goto_2

    #@8c
    :sswitch_8
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@8f
    move-result v0

    #@90
    if-gtz v0, :cond_7

    #@92
    const-string v2, "\u06e8\u06df\u06e0"

    #@94
    move-object v0, v1

    #@95
    goto :goto_1

    #@96
    :cond_7
    const-string v2, "\u06e6\u06e4\u06e5"

    #@98
    move-object v0, v1

    #@99
    goto :goto_1

    #@9a
    :cond_8
    :sswitch_9
    const-string v0, "\u06e5\u06df\u06e7"

    #@9c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@9f
    move-result v0

    #@a0
    move v2, v0

    #@a1
    goto/16 :goto_0

    #@a3
    :sswitch_a
    return-void

    #@a4
    :sswitch_data_0
    .sparse-switch
        0xdcfe -> :sswitch_0
        0x1aa723 -> :sswitch_8
        0x1aab42 -> :sswitch_4
        0x1aaf23 -> :sswitch_9
        0x1ab282 -> :sswitch_a
        0x1ab622 -> :sswitch_4
        0x1ab69e -> :sswitch_1
        0x1abd8d -> :sswitch_7
        0x1abe67 -> :sswitch_3
        0x1abe9f -> :sswitch_a
        0x1ac1e7 -> :sswitch_2
        0x1ac5a2 -> :sswitch_6
        0x1ac623 -> :sswitch_5
    .end sparse-switch
.end method

.method public static rn_4632(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static rn_4636(Landroid/app/Activity;Ljava/lang/Object;Z)V
    .locals 1

    #@0
    const-string v0, "\u06e2\u06e6\u06e8"

    #@2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@17
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1a
    move-result v0

    #@1b
    if-gtz v0, :cond_1

    #@1d
    const-string v0, "\u06e4\u06e5\u06e5"

    #@1f
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    goto :goto_0

    #@24
    :sswitch_1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@27
    move-result v0

    #@28
    if-ltz v0, :cond_0

    #@2a
    const-string v0, "\u06df\u06e7\u06e8"

    #@2c
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2f
    move-result v0

    #@30
    goto :goto_0

    #@31
    :cond_0
    const-string v0, "\u06e2\u06e6\u06e8"

    #@33
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@36
    move-result v0

    #@37
    goto :goto_0

    #@38
    :cond_1
    const-string v0, "\u06e4\u06e5\u06e5"

    #@3a
    goto :goto_1

    #@3b
    :sswitch_2
    return-void

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x1ab324 -> :sswitch_0
        0x1aba84 -> :sswitch_2
        0x1ac549 -> :sswitch_1
    .end sparse-switch
.end method

.method public static rn_4642(Landroid/app/Activity;I)V
    .locals 3

    #@0
    const-string v0, "\u06e0\u06e2\u06e5"

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
    const-string v0, "\u06e8\u06e0\u06e5"

    #@c
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0

    #@11
    :sswitch_1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@14
    move-result v0

    #@15
    if-ltz v0, :cond_0

    #@17
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1a
    const-string v0, "\u06df\u06e2\u06e4"

    #@1c
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    :cond_0
    const-string v0, "\u06e8\u06e6\u06df"

    #@23
    goto :goto_1

    #@24
    :sswitch_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    const/16 v2, 0x1000

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@31
    move-result-object v0

    #@32
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@34
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@3a
    move-result v0

    #@3b
    if-gtz v0, :cond_1

    #@3d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@40
    const-string v0, "\u06e8\u06e0\u06e5"

    #@42
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    goto :goto_0

    #@47
    :cond_1
    const-string v0, "\u06e8\u06e0\u06e5"

    #@49
    goto :goto_1

    #@4a
    :sswitch_3
    const-string v0, "\u06e0\u06e5\u06e8"

    #@4c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@4f
    move-result v0

    #@50
    goto :goto_0

    #@51
    :sswitch_4
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@54
    move-result v0

    #@55
    if-gtz v0, :cond_2

    #@57
    const-string v0, "\u06df\u06e3\u06e3"

    #@59
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@5c
    move-result v0

    #@5d
    goto :goto_0

    #@5e
    :cond_2
    const-string v0, "\u06df\u06e8\u06e6"

    #@60
    goto :goto_1

    #@61
    :catch_0
    move-exception v0

    #@62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@65
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@68
    move-result v0

    #@69
    if-ltz v0, :cond_3

    #@6b
    const-string v0, "\u06e0\u06e7\u06e6"

    #@6d
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@70
    move-result v0

    #@71
    goto :goto_0

    #@72
    :cond_3
    const-string v0, "\u06e8\u06e3\u06e1"

    #@74
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@77
    move-result v0

    #@78
    goto :goto_0

    #@79
    :sswitch_5
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@7c
    move-result v0

    #@7d
    if-gtz v0, :cond_4

    #@7f
    const-string v0, "\u06e2\u06e1\u06e0"

    #@81
    goto :goto_1

    #@82
    :cond_4
    const-string v0, "\u06e0\u06e2\u06e5"

    #@84
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@87
    move-result v0

    #@88
    goto/16 :goto_0

    #@8a
    :sswitch_6
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@8c
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@8f
    move-result v0

    #@90
    if-gtz v0, :cond_5

    #@92
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@95
    const-string v0, "\u06e0\u06e5\u06e8"

    #@97
    :goto_2
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@9a
    move-result v0

    #@9b
    goto/16 :goto_0

    #@9d
    :cond_5
    const-string v0, "\u06e0\u06e5\u06e8"

    #@9f
    goto :goto_2

    #@a0
    :sswitch_7
    return-void

    #@a1
    nop

    #@a2
    :sswitch_data_0
    .sparse-switch
        0x1aa761 -> :sswitch_0
        0x1aa81d -> :sswitch_7
        0x1aab23 -> :sswitch_6
        0x1aab83 -> :sswitch_2
        0x1aabbf -> :sswitch_5
        0x1aba9d -> :sswitch_3
        0x1ac8ed -> :sswitch_1
        0x1ac946 -> :sswitch_4
        0x1ac9a1 -> :sswitch_4
    .end sparse-switch
.end method
