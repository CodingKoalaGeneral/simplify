.class public Lrn_34/rn_35/rn_36/rn_4311;
.super Lrn_34/rn_35/rn_36/rn_4206;


# instance fields
.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_4206;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4311;->view:Landroid/view/View;

    #@2
    check-cast v0, Landroid/widget/TextView;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    #@0
    const-string v0, "\u06e7\u06e3\u06e7"

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
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06e0\u06e7\u06e3"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@19
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4311;->onCreateView(Landroid/content/Context;)Landroid/widget/TextView;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    :cond_0
    const-string v0, "\u06e7\u06e3\u06e7"

    #@20
    goto :goto_1

    #@21
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x1aaac2 -> :sswitch_0
        0x1ac58b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1

    #@0
    const-string v0, "\u06e4\u06e7\u06e2"

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
    const-string v0, "\u06e4\u06e7\u06e2"

    #@c
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0

    #@11
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@13
    new-instance v0, Landroid/widget/TextView;

    #@15
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@18
    return-object v0

    #@19
    nop

    #@1a
    :sswitch_data_0
    .sparse-switch
        0x1ab71d -> :sswitch_0
        0x1ababf -> :sswitch_1
    .end sparse-switch
.end method

.method public final rn_270(I)V
    .locals 1

    #@0
    const-string v0, "\u06e8\u06e0\u06e2"

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
    const-string v0, "\u06e8\u06e0\u06e2"

    #@d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    goto :goto_0

    #@12
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@14
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    #@1b
    const-string v0, "\u06df\u06e7"

    #@1d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :sswitch_data_0
    .sparse-switch
        0xdbe8 -> :sswitch_0
        0x1ac8ea -> :sswitch_2
        0x1ac8eb -> :sswitch_1
    .end sparse-switch
.end method

.method public final rn_378()Ljava/lang/String;
    .locals 1

    #@0
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final rn_378(Ljava/lang/String;)V
    .locals 1

    #@0
    const-string v0, "\u06e7\u06e6\u06e1"

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
    const-string v0, "\u06e7\u06e6\u06e1"

    #@c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0

    #@11
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@13
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1d
    move-result v0

    #@1e
    if-gtz v0, :cond_0

    #@20
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@23
    const-string v0, "\u06e3\u06e6\u06e5"

    #@25
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    :cond_0
    const-string v0, "\u06e3\u06e6\u06e5"

    #@2c
    goto :goto_1

    #@2d
    :sswitch_2
    return-void

    #@2e
    :sswitch_data_0
    .sparse-switch
        0x1aab20 -> :sswitch_0
        0x1ab6e2 -> :sswitch_2
        0x1ac5e2 -> :sswitch_1
    .end sparse-switch
.end method

.method public final rn_384(I)V
    .locals 2

    #@0
    const-string v0, "\u06e8\u06e6\u06e6"

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
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_1

    #@10
    const-string v0, "\u06e5\u06df\u06e5"

    #@12
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@19
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@1c
    move-result-object v0

    #@1d
    int-to-float v1, p1

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    #@21
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@24
    move-result v0

    #@25
    if-gtz v0, :cond_0

    #@27
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2a
    const-string v0, "\u06e7\u06e0"

    #@2c
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2f
    move-result v0

    #@30
    goto :goto_0

    #@31
    :cond_0
    const-string v0, "\u06e4\u06e7\u06e6"

    #@33
    goto :goto_1

    #@34
    :cond_1
    const-string v0, "\u06e8\u06e6\u06e6"

    #@36
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@39
    move-result v0

    #@3a
    goto :goto_0

    #@3b
    :sswitch_2
    return-void

    #@3c
    :sswitch_data_0
    .sparse-switch
        0xdcd9 -> :sswitch_0
        0x1abac3 -> :sswitch_2
        0x1ac9a8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final rn_386(I)V
    .locals 1

    #@0
    const-string v0, "\u06e8\u06e5\u06e7"

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
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_1

    #@10
    const-string v0, "\u06df\u06e0\u06e3"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@19
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@20
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@23
    move-result v0

    #@24
    if-ltz v0, :cond_0

    #@26
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@29
    const-string v0, "\u06e5\u06e2\u06e4"

    #@2b
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2e
    move-result v0

    #@2f
    goto :goto_0

    #@30
    :cond_0
    const-string v0, "\u06e5\u06e2\u06e4"

    #@32
    goto :goto_1

    #@33
    :cond_1
    const-string v0, "\u06e8\u06e5\u06e7"

    #@35
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@38
    move-result v0

    #@39
    goto :goto_0

    #@3a
    :sswitch_2
    return-void

    #@3b
    nop

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x1aba61 -> :sswitch_0
        0x1abde7 -> :sswitch_2
        0x1ac98a -> :sswitch_1
    .end sparse-switch
.end method

.method public final rn_4316(Z)V
    .locals 3

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "\u06e3\u06e7\u06df"

    #@3
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

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
    return-void

    #@d
    :sswitch_1
    const-string v0, "\u06e5\u06e7\u06e7"

    #@f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    move v2, v0

    #@14
    goto :goto_0

    #@15
    :sswitch_2
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@17
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@22
    move-result v1

    #@23
    if-ltz v1, :cond_0

    #@25
    const-string v1, "\u06df\u06e5\u06e8"

    #@27
    move-object v2, v1

    #@28
    :goto_1
    invoke-static {v2}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2b
    move-result v2

    #@2c
    move-object v1, v0

    #@2d
    goto :goto_0

    #@2e
    :cond_0
    const-string v1, "\u06e7\u06e8\u06e8"

    #@30
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@33
    move-result v2

    #@34
    move-object v1, v0

    #@35
    goto :goto_0

    #@36
    :cond_1
    :sswitch_3
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@39
    move-result v0

    #@3a
    if-ltz v0, :cond_2

    #@3c
    const-string v0, "\u06e3\u06df\u06df"

    #@3e
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@41
    move-result v0

    #@42
    move v2, v0

    #@43
    goto :goto_0

    #@44
    :cond_2
    const-string v0, "\u06df\u06e7\u06e5"

    #@46
    goto :goto_2

    #@47
    :sswitch_4
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@4a
    move-result-object v0

    #@4b
    const/4 v2, 0x0

    #@4c
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@53
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@56
    move-result v0

    #@57
    if-gtz v0, :cond_5

    #@59
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@5c
    const-string v0, "\u06df\u06e7\u06e5"

    #@5e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@61
    move-result v0

    #@62
    move v2, v0

    #@63
    goto :goto_0

    #@64
    :sswitch_5
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@67
    move-result-object v0

    #@68
    const/4 v2, 0x2

    #@69
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@70
    const-string v0, "\u06e4\u06df\u06e3"

    #@72
    :goto_3
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@75
    move-result v0

    #@76
    move v2, v0

    #@77
    goto :goto_0

    #@78
    :sswitch_6
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@7b
    move-result v0

    #@7c
    if-gtz v0, :cond_3

    #@7e
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@81
    const-string v0, "\u06e5\u06e6\u06e7"

    #@83
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@86
    move-result v0

    #@87
    move v2, v0

    #@88
    goto :goto_0

    #@89
    :cond_3
    const-string v0, "\u06e5\u06e5\u06e8"

    #@8b
    :goto_4
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@8e
    move-result v0

    #@8f
    move v2, v0

    #@90
    goto/16 :goto_0

    #@92
    :sswitch_7
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@95
    move-result-object v0

    #@96
    const/4 v2, 0x1

    #@97
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@9e
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@a1
    move-result v0

    #@a2
    if-ltz v0, :cond_4

    #@a4
    const-string v0, "\u06e5\u06e7\u06e7"

    #@a6
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@a9
    move-result v0

    #@aa
    move v2, v0

    #@ab
    goto/16 :goto_0

    #@ad
    :cond_4
    const-string v0, "\u06e0\u06e3\u06e6"

    #@af
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@b2
    move-result v0

    #@b3
    move v2, v0

    #@b4
    goto/16 :goto_0

    #@b6
    :sswitch_8
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@b9
    move-result-object v0

    #@ba
    const/4 v2, 0x3

    #@bb
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@c2
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@c5
    move-result v0

    #@c6
    if-ltz v0, :cond_6

    #@c8
    :cond_5
    const-string v0, "\u06e3\u06e8"

    #@ca
    goto :goto_5

    #@cb
    :cond_6
    const-string v0, "\u06e2\u06e7\u06e2"

    #@cd
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@d0
    move-result v0

    #@d1
    move v2, v0

    #@d2
    goto/16 :goto_0

    #@d4
    :sswitch_9
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isItalic()Z

    #@d7
    move-result v0

    #@d8
    if-eqz v0, :cond_1

    #@da
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@dd
    move-result v0

    #@de
    if-ltz v0, :cond_7

    #@e0
    const-string v0, "\u06e3\u06e7\u06df"

    #@e2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@e5
    move-result v0

    #@e6
    move v2, v0

    #@e7
    goto/16 :goto_0

    #@e9
    :cond_7
    const-string v0, "\u06e0\u06e6\u06e5"

    #@eb
    :goto_6
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@ee
    move-result v0

    #@ef
    move v2, v0

    #@f0
    goto/16 :goto_0

    #@f2
    :sswitch_a
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    #@f5
    move-result v0

    #@f6
    if-eqz v0, :cond_e

    #@f8
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@fb
    move-result v0

    #@fc
    if-gtz v0, :cond_8

    #@fe
    const-string v0, "\u06e8\u06e3\u06e4"

    #@100
    goto/16 :goto_3

    #@102
    :cond_8
    const-string v0, "\u06df\u06df\u06e5"

    #@104
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@107
    move-result v0

    #@108
    move v2, v0

    #@109
    goto/16 :goto_0

    #@10b
    :sswitch_b
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@10e
    move-result v0

    #@10f
    if-gtz v0, :cond_9

    #@111
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@114
    const-string v0, "\u06e8\u06e7\u06df"

    #@116
    :goto_7
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@119
    move-result v0

    #@11a
    move v2, v0

    #@11b
    goto/16 :goto_0

    #@11d
    :cond_9
    const-string v0, "\u06e7\u06e6\u06e7"

    #@11f
    goto :goto_7

    #@120
    :sswitch_c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@123
    move-result v0

    #@124
    if-gtz v0, :cond_a

    #@126
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@129
    const-string v0, "\u06df\u06e3\u06e3"

    #@12b
    goto/16 :goto_4

    #@12d
    :cond_a
    const-string v0, "\u06e3\u06e8"

    #@12f
    goto/16 :goto_2

    #@131
    :sswitch_d
    if-eqz p1, :cond_c

    #@133
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@136
    move-result v0

    #@137
    if-ltz v0, :cond_b

    #@139
    const-string v0, "\u06e2\u06e7\u06e2"

    #@13b
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@13e
    move-result v0

    #@13f
    move v2, v0

    #@140
    goto/16 :goto_0

    #@142
    :cond_b
    const-string v0, "\u06e7\u06df\u06e3"

    #@144
    goto/16 :goto_2

    #@146
    :cond_c
    :sswitch_e
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@149
    move-result v0

    #@14a
    if-gtz v0, :cond_d

    #@14c
    const-string v0, "\u06e8\u06e1\u06df"

    #@14e
    :goto_8
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@151
    move-result v0

    #@152
    move v2, v0

    #@153
    goto/16 :goto_0

    #@155
    :cond_d
    const-string v0, "\u06e0\u06e0\u06e5"

    #@157
    goto :goto_8

    #@158
    :sswitch_f
    const-string v0, "\u06e3\u06e7\u06df"

    #@15a
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@15d
    move-result v0

    #@15e
    move v2, v0

    #@15f
    goto/16 :goto_0

    #@161
    :cond_e
    :sswitch_10
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@164
    move-result v0

    #@165
    if-gtz v0, :cond_f

    #@167
    const-string v0, "\u06e1\u06df\u06e6"

    #@169
    goto :goto_6

    #@16a
    :cond_f
    const-string v0, "\u06e8\u06e3\u06e4"

    #@16c
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@16f
    move-result v0

    #@170
    move v2, v0

    #@171
    goto/16 :goto_0

    #@173
    :sswitch_11
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isItalic()Z

    #@176
    move-result v0

    #@177
    if-eqz v0, :cond_e

    #@179
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@17c
    move-result v0

    #@17d
    if-ltz v0, :cond_10

    #@17f
    const-string v0, "\u06e7\u06e8\u06e8"

    #@181
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@184
    move-result v0

    #@185
    move v2, v0

    #@186
    goto/16 :goto_0

    #@188
    :cond_10
    const-string v2, "\u06e5\u06e6\u06e7"

    #@18a
    move-object v0, v1

    #@18b
    goto/16 :goto_1

    #@18d
    nop

    #@18e
    :sswitch_data_0
    .sparse-switch
        0xdc65 -> :sswitch_0
        0x1aa705 -> :sswitch_11
        0x1aa7c2 -> :sswitch_10
        0x1aa7fd -> :sswitch_7
        0x1aaae5 -> :sswitch_a
        0x1aab43 -> :sswitch_b
        0x1aab9f -> :sswitch_8
        0x1ab2df -> :sswitch_e
        0x1ab33d -> :sswitch_1
        0x1ab6fb -> :sswitch_2
        0x1ab9c8 -> :sswitch_6
        0x1aba5f -> :sswitch_f
        0x1abe48 -> :sswitch_c
        0x1abe66 -> :sswitch_5
        0x1abe85 -> :sswitch_c
        0x1ac50b -> :sswitch_9
        0x1ac5e8 -> :sswitch_c
        0x1ac627 -> :sswitch_d
        0x1ac949 -> :sswitch_4
        0x1ac968 -> :sswitch_3
        0x1ac9c0 -> :sswitch_c
    .end sparse-switch
.end method
