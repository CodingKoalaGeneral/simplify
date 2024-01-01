.class Lrn_1/CardView$CardViewEclairMr1;
.super Ljava/lang/Object;

# interfaces
.implements Lrn_1/CardViewImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrn_1/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardViewEclairMr1"
.end annotation


# instance fields
.field final sCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "\u06e8\u06e4\u06e0"

    #@5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@c
    goto :goto_0

    #@d
    :sswitch_0
    return-void

    #@e
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@10
    new-instance v0, Landroid/graphics/RectF;

    #@12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@15
    iput-object v0, p0, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@17
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1a
    move-result v0

    #@1b
    if-gtz v0, :cond_0

    #@1d
    const-string v0, "\u06e8\u06e4\u06e0"

    #@1f
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    goto :goto_0

    #@24
    :cond_0
    const-string v0, "\u06e6\u06e1\u06e2"

    #@26
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@29
    move-result v0

    #@2a
    goto :goto_0

    #@2b
    :sswitch_2
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2e
    move-result v0

    #@2f
    if-gtz v0, :cond_1

    #@31
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@34
    const-string v0, "\u06e0\u06e4\u06e3"

    #@36
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@39
    move-result v0

    #@3a
    goto :goto_0

    #@3b
    :cond_1
    const-string v0, "\u06e8\u06e4\u06e0"

    #@3d
    goto :goto_1

    #@3e
    :sswitch_data_0
    .sparse-switch
        0x1ac187 -> :sswitch_0
        0x1ac221 -> :sswitch_2
        0x1ac964 -> :sswitch_1
    .end sparse-switch
.end method

.method private getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;
    .locals 1

    #@0
    const-string v0, "\u06e3\u06e6\u06e2"

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
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06df\u06e5\u06e8"

    #@12
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@19
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lrn_1/RoundRectDrawableWithShadow;

    #@1f
    return-object v0

    #@20
    :cond_0
    const-string v0, "\u06e3\u06e6\u06e2"

    #@22
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    nop

    #@28
    :sswitch_data_0
    .sparse-switch
        0xdcf7 -> :sswitch_0
        0x1ab6df -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method createBackground(Landroid/content/Context;IFFF)Lrn_1/RoundRectDrawableWithShadow;
    .locals 6

    #@0
    const-string v0, "\u06e0\u06e2\u06e3"

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
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@c
    new-instance v0, Lrn_1/RoundRectDrawableWithShadow;

    #@e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object v1

    #@12
    move v2, p2

    #@13
    move v3, p3

    #@14
    move v4, p4

    #@15
    move v5, p5

    #@16
    invoke-direct/range {v0 .. v5}, Lrn_1/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;IFFF)V

    #@19
    return-object v0

    #@1a
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@1d
    move-result v0

    #@1e
    if-gtz v0, :cond_0

    #@20
    const-string v0, "\u06e4\u06e7\u06e1"

    #@22
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :cond_0
    const-string v0, "\u06e0\u06e2\u06e3"

    #@29
    goto :goto_1

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x1aab21 -> :sswitch_0
        0x1ab340 -> :sswitch_1
    .end sparse-switch
.end method

.method public getElevation(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    const-string v0, "\u06e3\u06e2\u06e2"

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
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_0

    #@10
    const-string v0, "\u06e6\u06df\u06e7"

    #@12
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@19
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Lrn_1/RoundRectDrawableWithShadow;->getShadowSize()F

    #@20
    move-result v0

    #@21
    return v0

    #@22
    :cond_0
    const-string v0, "\u06e3\u06e2\u06e2"

    #@24
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x1aa7fc -> :sswitch_0
        0x1ab663 -> :sswitch_1
    .end sparse-switch
.end method

.method public getMaxElevation(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    const-string v0, "\u06e8\u06e4\u06e3"

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
    if-gtz v0, :cond_0

    #@10
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@13
    const-string v0, "\u06e4\u06e5\u06e4"

    #@15
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :cond_0
    const-string v0, "\u06e8\u06e4\u06e3"

    #@1c
    goto :goto_1

    #@1d
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@1f
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lrn_1/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    #@26
    move-result v0

    #@27
    return v0

    #@28
    :sswitch_data_0
    .sparse-switch
        0x1aa704 -> :sswitch_0
        0x1ac967 -> :sswitch_1
    .end sparse-switch
.end method

.method public getMinHeight(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    const-string v0, "\u06df\u06e0\u06e5"

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
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@c
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lrn_1/RoundRectDrawableWithShadow;->getMinHeight()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :sswitch_1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@18
    move-result v0

    #@19
    if-ltz v0, :cond_0

    #@1b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1e
    const-string v0, "\u06e6\u06e2\u06e0"

    #@20
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    :cond_0
    const-string v0, "\u06df\u06e0\u06e5"

    #@27
    goto :goto_1

    #@28
    :sswitch_data_0
    .sparse-switch
        0x1aa724 -> :sswitch_0
        0x1aaee1 -> :sswitch_1
    .end sparse-switch
.end method

.method public getMinWidth(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    const-string v0, "\u06e6\u06e8\u06e5"

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
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@13
    const-string v0, "\u06e2\u06e4\u06e0"

    #@15
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :cond_0
    const-string v0, "\u06e6\u06e8\u06e5"

    #@1c
    goto :goto_1

    #@1d
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@1f
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lrn_1/RoundRectDrawableWithShadow;->getMinWidth()F

    #@26
    move-result v0

    #@27
    return v0

    #@28
    :sswitch_data_0
    .sparse-switch
        0x1aaf25 -> :sswitch_0
        0x1ac263 -> :sswitch_1
    .end sparse-switch
.end method

.method public getRadius(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    const-string v0, "\u06e6\u06e5\u06e6"

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
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@c
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lrn_1/RoundRectDrawableWithShadow;->getCornerRadius()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@18
    move-result v0

    #@19
    if-gtz v0, :cond_0

    #@1b
    const-string v0, "\u06e5\u06e3\u06e5"

    #@1d
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :cond_0
    const-string v0, "\u06e6\u06e5\u06e6"

    #@24
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x1ac207 -> :sswitch_0
        0x1ac626 -> :sswitch_1
    .end sparse-switch
.end method

.method public initStatic()V
    .locals 1

    #@0
    const-string v0, "\u06e7\u06e4\u06e0"

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
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_0

    #@10
    const-string v0, "\u06e2\u06e2\u06e2"

    #@12
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :cond_0
    const-string v0, "\u06e7\u06e4\u06e0"

    #@19
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    goto :goto_0

    #@1e
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@20
    new-instance v0, Lrn_1/CardView$CardViewEclairMr1$1;

    #@22
    invoke-direct {v0, p0}, Lrn_1/CardView$CardViewEclairMr1$1;-><init>(Lrn_1/CardView$CardViewEclairMr1;)V

    #@25
    sput-object v0, Lrn_1/RoundRectDrawableWithShadow;->sRoundRectHelper:Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;

    #@27
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2a
    move-result v0

    #@2b
    if-gtz v0, :cond_1

    #@2d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@30
    const-string v0, "\u06e0\u06e2\u06e6"

    #@32
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@35
    move-result v0

    #@36
    goto :goto_0

    #@37
    :cond_1
    const-string v0, "\u06e0\u06e6\u06e5"

    #@39
    goto :goto_1

    #@3a
    :sswitch_2
    return-void

    #@3b
    nop

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x1aab24 -> :sswitch_0
        0x1aab9f -> :sswitch_2
        0x1ac5a3 -> :sswitch_1
    .end sparse-switch
.end method

.method public initialize(Lrn_1/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 6

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e7\u06e3\u06df"

    #@3
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    :goto_0
    sparse-switch v1, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@e
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@11
    move-result v1

    #@12
    if-gtz v1, :cond_3

    #@14
    :cond_0
    const-string v1, "\u06e0\u06e4"

    #@16
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@19
    move-result v1

    #@1a
    goto :goto_0

    #@1b
    :sswitch_1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1e
    move-result v1

    #@1f
    if-ltz v1, :cond_1

    #@21
    const-string v1, "\u06df\u06e1\u06e5"

    #@23
    :goto_1
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@26
    move-result v1

    #@27
    goto :goto_0

    #@28
    :cond_1
    const-string v1, "\u06e7\u06e3\u06df"

    #@2a
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2d
    move-result v1

    #@2e
    goto :goto_0

    #@2f
    :sswitch_2
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@32
    move-result v1

    #@33
    invoke-virtual {v0, v1}, Lrn_1/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    #@36
    const-string v1, "\u06e1\u06e2"

    #@38
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@3b
    move-result v1

    #@3c
    goto :goto_0

    #@3d
    :sswitch_3
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@3f
    move-object v0, p0

    #@40
    move-object v1, p2

    #@41
    move v2, p3

    #@42
    move v3, p4

    #@43
    move v4, p5

    #@44
    move v5, p6

    #@45
    invoke-virtual/range {v0 .. v5}, Lrn_1/CardView$CardViewEclairMr1;->createBackground(Landroid/content/Context;IFFF)Lrn_1/RoundRectDrawableWithShadow;

    #@48
    move-result-object v0

    #@49
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@4c
    move-result v1

    #@4d
    if-ltz v1, :cond_2

    #@4f
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@52
    const-string v1, "\u06e4\u06df\u06e3"

    #@54
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@57
    move-result v1

    #@58
    goto :goto_0

    #@59
    :cond_2
    const-string v1, "\u06e4\u06df\u06e3"

    #@5b
    goto :goto_1

    #@5c
    :sswitch_4
    invoke-interface {p1, v0}, Lrn_1/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5f
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@62
    move-result v1

    #@63
    if-gtz v1, :cond_0

    #@65
    const-string v1, "\u06e6\u06df\u06e2"

    #@67
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@6a
    move-result v1

    #@6b
    goto :goto_0

    #@6c
    :cond_3
    const-string v1, "\u06e8\u06e8\u06e2"

    #@6e
    goto :goto_1

    #@6f
    :sswitch_5
    return-void

    #@70
    :sswitch_data_0
    .sparse-switch
        0xdc04 -> :sswitch_0
        0xdc21 -> :sswitch_4
        0x1ab9c8 -> :sswitch_2
        0x1ac149 -> :sswitch_1
        0x1ac583 -> :sswitch_3
        0x1ac9e2 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCompatPaddingChanged(Lrn_1/CardViewDelegate;)V
    .locals 1

    #@0
    const-string v0, "\u06e4\u06e2\u06e0"

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
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06e5\u06e2\u06e1"

    #@12
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@19
    return-void

    #@1a
    :cond_0
    const-string v0, "\u06e4\u06e2\u06e0"

    #@1c
    goto :goto_1

    #@1d
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x1ab35c -> :sswitch_0
        0x1aba22 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreventCornerOverlapChanged(Lrn_1/CardViewDelegate;)V
    .locals 2

    #@0
    const-string v0, "\u06e8\u06e6\u06df"

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
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@10
    move-result v0

    #@11
    if-ltz v0, :cond_2

    #@13
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@16
    const-string v0, "\u06e8\u06e6\u06df"

    #@18
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    :sswitch_1
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@1f
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@22
    move-result-object v0

    #@23
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Lrn_1/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    #@2a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2d
    move-result v0

    #@2e
    if-gtz v0, :cond_0

    #@30
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@33
    const-string v0, "\u06e3\u06e3\u06e4"

    #@35
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@38
    move-result v0

    #@39
    goto :goto_0

    #@3a
    :cond_0
    const-string v0, "\u06e2\u06df\u06e8"

    #@3c
    goto :goto_1

    #@3d
    :sswitch_2
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@40
    move-result v0

    #@41
    if-ltz v0, :cond_1

    #@43
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@46
    const-string v0, "\u06e1\u06e5\u06e7"

    #@48
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4b
    move-result v0

    #@4c
    goto :goto_0

    #@4d
    :cond_1
    const-string v0, "\u06e8\u06e6\u06df"

    #@4f
    goto :goto_2

    #@50
    :cond_2
    const-string v0, "\u06e8\u06e7\u06e8"

    #@52
    goto :goto_2

    #@53
    :sswitch_3
    return-void

    #@54
    :sswitch_data_0
    .sparse-switch
        0x1ab24b -> :sswitch_0
        0x1ab684 -> :sswitch_2
        0x1ac9a1 -> :sswitch_1
        0x1ac9c9 -> :sswitch_3
    .end sparse-switch
.end method

.method public setBackgroundColor(Lrn_1/CardViewDelegate;I)V
    .locals 1

    #@0
    const-string v0, "\u06e6\u06e7\u06e7"

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
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_1

    #@10
    const-string v0, "\u06e1\u06df\u06e0"

    #@12
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@19
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Lrn_1/RoundRectDrawableWithShadow;->setColor(I)V

    #@20
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@23
    move-result v0

    #@24
    if-gtz v0, :cond_0

    #@26
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@29
    const-string v0, "\u06df\u06df\u06e2"

    #@2b
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2e
    move-result v0

    #@2f
    goto :goto_0

    #@30
    :cond_0
    const-string v0, "\u06e4\u06e4\u06e3"

    #@32
    goto :goto_1

    #@33
    :cond_1
    const-string v0, "\u06e6\u06e7\u06e7"

    #@35
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

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
        0x1aa702 -> :sswitch_0
        0x1aba63 -> :sswitch_2
        0x1ac246 -> :sswitch_1
    .end sparse-switch
.end method

.method public setElevation(Lrn_1/CardViewDelegate;F)V
    .locals 1

    #@0
    const-string v0, "\u06e8\u06e2\u06e1"

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
    const-string v0, "\u06e8\u06e2\u06e1"

    #@c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0

    #@11
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@13
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Lrn_1/RoundRectDrawableWithShadow;->setShadowSize(F)V

    #@1a
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1d
    move-result v0

    #@1e
    if-ltz v0, :cond_0

    #@20
    const-string v0, "\u06e8\u06e2\u06e1"

    #@22
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :cond_0
    const-string v0, "\u06e6\u06e1\u06e6"

    #@29
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2c
    move-result v0

    #@2d
    goto :goto_0

    #@2e
    :sswitch_2
    return-void

    #@2f
    nop

    #@30
    :sswitch_data_0
    .sparse-switch
        0x1aab06 -> :sswitch_0
        0x1ac18b -> :sswitch_2
        0x1ac927 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMaxElevation(Lrn_1/CardViewDelegate;F)V
    .locals 1

    #@0
    const-string v0, "\u06e5\u06e6\u06e4"

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
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@10
    move-result v0

    #@11
    if-ltz v0, :cond_0

    #@13
    const-string v0, "\u06e3\u06e1"

    #@15
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :sswitch_1
    const-string v0, "\u06e5\u06e6\u06e4"

    #@1c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    :cond_0
    const-string v0, "\u06e7\u06e1\u06e7"

    #@23
    goto :goto_1

    #@24
    :sswitch_2
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@26
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p2}, Lrn_1/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    #@2d
    const-string v0, "\u06e3\u06e1"

    #@2f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    :sswitch_3
    return-void

    #@35
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0xdc5e -> :sswitch_0
        0x1abe63 -> :sswitch_2
        0x1ac201 -> :sswitch_1
        0x1ac54d -> :sswitch_3
    .end sparse-switch
.end method

.method public setRadius(Lrn_1/CardViewDelegate;F)V
    .locals 1

    #@0
    const-string v0, "\u06e5\u06e5\u06e0"

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
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06e3\u06e1"

    #@12
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@19
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Lrn_1/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    #@20
    const-string v0, "\u06e3\u06e6\u06e0"

    #@22
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :cond_0
    const-string v0, "\u06e5\u06e5\u06e0"

    #@29
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2c
    move-result v0

    #@2d
    goto :goto_0

    #@2e
    :sswitch_2
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@31
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@34
    move-result v0

    #@35
    if-gtz v0, :cond_1

    #@37
    const-string v0, "\u06df\u06e2\u06e6"

    #@39
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@3c
    move-result v0

    #@3d
    goto :goto_0

    #@3e
    :cond_1
    const-string v0, "\u06e0\u06e3\u06e2"

    #@40
    goto :goto_1

    #@41
    :sswitch_3
    return-void

    #@42
    :sswitch_data_0
    .sparse-switch
        0x1aa763 -> :sswitch_0
        0x1aab3f -> :sswitch_3
        0x1ab6dd -> :sswitch_2
        0x1abe40 -> :sswitch_1
    .end sparse-switch
.end method

.method public updatePadding(Lrn_1/CardViewDelegate;)V
    .locals 6

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "\u06e6\u06e2\u06e4"

    #@3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@6
    move-result v3

    #@7
    move-object v0, v1

    #@8
    move-object v2, v1

    #@9
    :goto_0
    sparse-switch v3, :sswitch_data_0

    #@c
    goto :goto_0

    #@d
    :sswitch_0
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getMinHeight(Lrn_1/CardViewDelegate;)F

    #@10
    move-result v1

    #@11
    float-to-double v4, v1

    #@12
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@15
    move-result-wide v4

    #@16
    double-to-int v1, v4

    #@17
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    #@1a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1d
    move-result v1

    #@1e
    if-gtz v1, :cond_4

    #@20
    const-string v1, "\u06e3\u06e2\u06e7"

    #@22
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@25
    move-result v1

    #@26
    move v3, v1

    #@27
    goto :goto_0

    #@28
    :sswitch_1
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getMinWidth(Lrn_1/CardViewDelegate;)F

    #@2b
    move-result v1

    #@2c
    float-to-double v4, v1

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@30
    move-result-wide v4

    #@31
    double-to-int v1, v4

    #@32
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    #@35
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@38
    move-result v1

    #@39
    if-gtz v1, :cond_0

    #@3b
    const-string v1, "\u06e2\u06e5\u06e4"

    #@3d
    :goto_1
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@40
    move-result v1

    #@41
    move v3, v1

    #@42
    goto :goto_0

    #@43
    :cond_0
    const-string v1, "\u06e3\u06e3\u06e5"

    #@45
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@48
    move-result v1

    #@49
    move v3, v1

    #@4a
    goto :goto_0

    #@4b
    :sswitch_2
    move-object v0, p1

    #@4c
    check-cast v0, Landroid/view/View;

    #@4e
    const-string v1, "\u06e5\u06e1"

    #@50
    :goto_2
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@53
    move-result v1

    #@54
    move v3, v1

    #@55
    goto :goto_0

    #@56
    :sswitch_3
    iget v1, v2, Landroid/graphics/Rect;->left:I

    #@58
    iget v3, v2, Landroid/graphics/Rect;->top:I

    #@5a
    iget v4, v2, Landroid/graphics/Rect;->right:I

    #@5c
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    #@5e
    invoke-interface {p1, v1, v3, v4, v5}, Lrn_1/CardViewDelegate;->setShadowPadding(IIII)V

    #@61
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@64
    move-result v1

    #@65
    if-ltz v1, :cond_1

    #@67
    const-string v3, "\u06e8\u06e1\u06e5"

    #@69
    move-object v1, v2

    #@6a
    :goto_3
    invoke-static {v3}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@6d
    move-result v3

    #@6e
    move-object v2, v1

    #@6f
    goto :goto_0

    #@70
    :cond_1
    const-string v1, "\u06e3\u06e2\u06e7"

    #@72
    goto :goto_2

    #@73
    :sswitch_4
    sget-object v1, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@75
    new-instance v1, Landroid/graphics/Rect;

    #@77
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@7a
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@7d
    move-result v2

    #@7e
    if-ltz v2, :cond_2

    #@80
    const-string v2, "\u06e8\u06e6\u06e3"

    #@82
    invoke-static {v2}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@85
    move-result v3

    #@86
    move-object v2, v1

    #@87
    goto :goto_0

    #@88
    :cond_2
    const-string v2, "\u06e2\u06e5\u06e4"

    #@8a
    move-object v3, v2

    #@8b
    goto :goto_3

    #@8c
    :sswitch_5
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1, v2}, Lrn_1/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    #@93
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@96
    move-result v1

    #@97
    if-ltz v1, :cond_3

    #@99
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@9c
    const-string v1, "\u06e6\u06e2\u06e4"

    #@9e
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@a1
    move-result v1

    #@a2
    move v3, v1

    #@a3
    goto/16 :goto_0

    #@a5
    :cond_3
    const-string v1, "\u06df\u06e2\u06df"

    #@a7
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@aa
    move-result v1

    #@ab
    move v3, v1

    #@ac
    goto/16 :goto_0

    #@ae
    :cond_4
    const-string v1, "\u06e8\u06e6\u06e3"

    #@b0
    goto :goto_1

    #@b1
    :sswitch_6
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@b4
    move-result v1

    #@b5
    if-gtz v1, :cond_5

    #@b7
    const-string v1, "\u06e4\u06e4\u06df"

    #@b9
    goto :goto_2

    #@ba
    :cond_5
    const-string v1, "\u06e6\u06e2\u06e4"

    #@bc
    goto :goto_2

    #@bd
    :sswitch_7
    return-void

    #@be
    :sswitch_data_0
    .sparse-switch
        0xdc9c -> :sswitch_0
        0x1aa75c -> :sswitch_2
        0x1ab301 -> :sswitch_5
        0x1ab668 -> :sswitch_7
        0x1ab685 -> :sswitch_3
        0x1ac1a8 -> :sswitch_4
        0x1ac90c -> :sswitch_6
        0x1ac9a5 -> :sswitch_1
    .end sparse-switch
.end method
