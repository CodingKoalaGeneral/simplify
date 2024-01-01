.class public Lrn_34/rn_35/rn_36/rn_4577;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    #@0
    const-string v0, "\u06e5\u06e3\u06e8"

    #@2
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

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
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->rn_4578()V

    #@e
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@11
    move-result v0

    #@12
    if-gtz v0, :cond_0

    #@14
    const-string v0, "\u06e5\u06e3\u06e8"

    #@16
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    const-string v0, "\u06e1\u06df\u06e1"

    #@1d
    goto :goto_1

    #@1e
    :sswitch_2
    const-string v0, "\u06e5\u06e3\u06e8"

    #@20
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    :sswitch_3
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@27
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    #@2a
    const-string v0, "\u06e8\u06e2\u06e5"

    #@2c
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2f
    move-result v0

    #@30
    goto :goto_0

    #@31
    :sswitch_4
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->onPreInit()V

    #@34
    const-string v0, "\u06e8\u06e6\u06df"

    #@36
    goto :goto_1

    #@37
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        0x1aae83 -> :sswitch_0
        0x1ab6a1 -> :sswitch_2
        0x1abe0a -> :sswitch_3
        0x1ac92b -> :sswitch_4
        0x1ac9a1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 1

    #@0
    const-string v0, "\u06e6\u06e7\u06e5"

    #@2
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

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
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@d
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #@10
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@13
    move-result v0

    #@14
    if-gtz v0, :cond_0

    #@16
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@19
    const-string v0, "\u06e1\u06e3\u06e2"

    #@1b
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1e
    move-result v0

    #@1f
    goto :goto_0

    #@20
    :cond_0
    const-string v0, "\u06e1\u06e3\u06e2"

    #@22
    goto :goto_1

    #@23
    :sswitch_2
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->rn_4579()V

    #@26
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@29
    move-result v0

    #@2a
    if-ltz v0, :cond_2

    #@2c
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2f
    const-string v0, "\u06e6\u06e7\u06e5"

    #@31
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    goto :goto_0

    #@36
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@39
    move-result v0

    #@3a
    if-ltz v0, :cond_1

    #@3c
    const-string v0, "\u06e7\u06e2\u06e6"

    #@3e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@41
    move-result v0

    #@42
    goto :goto_0

    #@43
    :cond_1
    const-string v0, "\u06e6\u06e7\u06e5"

    #@45
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@48
    move-result v0

    #@49
    goto :goto_0

    #@4a
    :sswitch_4
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->onInit()V

    #@4d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@50
    move-result v0

    #@51
    if-gtz v0, :cond_3

    #@53
    :cond_2
    const-string v0, "\u06df\u06df\u06e4"

    #@55
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@58
    move-result v0

    #@59
    goto :goto_0

    #@5a
    :cond_3
    const-string v0, "\u06df\u06e4\u06df"

    #@5c
    goto :goto_1

    #@5d
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x1aa704 -> :sswitch_0
        0x1aa79a -> :sswitch_2
        0x1aaf00 -> :sswitch_4
        0x1ac244 -> :sswitch_1
        0x1ac94b -> :sswitch_3
    .end sparse-switch
.end method

.method public onInit()V
    .locals 0

    #@0
    return-void
.end method

.method public onPreInit()V
    .locals 0

    #@0
    return-void
.end method

.method public rn_4578()V
    .locals 0

    #@0
    return-void
.end method

.method public rn_4579()V
    .locals 0

    #@0
    return-void
.end method
