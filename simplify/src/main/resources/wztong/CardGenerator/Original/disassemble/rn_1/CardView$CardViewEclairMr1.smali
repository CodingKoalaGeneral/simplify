.class Lrn_1/CardView$CardViewEclairMr1;
.super Ljava/lang/Object;
.source "CardView.java"

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
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 515
    new-instance v0, Landroid/graphics/RectF;

    #@5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object v0, p0, Lrn_1/CardView$CardViewEclairMr1;->sCornerRect:Landroid/graphics/RectF;

    #@a
    return-void
.end method

.method private getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;
    .locals 0

    #@0
    .line 647
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lrn_1/RoundRectDrawableWithShadow;

    #@6
    return-object p1
.end method


# virtual methods
.method createBackground(Landroid/content/Context;IFFF)Lrn_1/RoundRectDrawableWithShadow;
    .locals 7

    #@0
    .line 574
    new-instance v6, Lrn_1/RoundRectDrawableWithShadow;

    #@2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    move-object v0, v6

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    invoke-direct/range {v0 .. v5}, Lrn_1/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;IFFF)V

    #@e
    return-object v6
.end method

.method public getElevation(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 622
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Lrn_1/RoundRectDrawableWithShadow;->getShadowSize()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getMaxElevation(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 633
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Lrn_1/RoundRectDrawableWithShadow;->getMaxShadowSize()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getMinHeight(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 643
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Lrn_1/RoundRectDrawableWithShadow;->getMinHeight()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getMinWidth(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 638
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Lrn_1/RoundRectDrawableWithShadow;->getMinWidth()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getRadius(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 612
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Lrn_1/RoundRectDrawableWithShadow;->getCornerRadius()F

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public initStatic()V
    .locals 1

    #@0
    .line 522
    new-instance v0, Lrn_1/CardView$CardViewEclairMr1$1;

    #@2
    invoke-direct {v0, p0}, Lrn_1/CardView$CardViewEclairMr1$1;-><init>(Lrn_1/CardView$CardViewEclairMr1;)V

    #@5
    sput-object v0, Lrn_1/RoundRectDrawableWithShadow;->sRoundRectHelper:Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;

    #@7
    .line 560
    return-void
.end method

.method public initialize(Lrn_1/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 6

    #@0
    .line 565
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move v5, p6

    #@6
    invoke-virtual/range {v0 .. v5}, Lrn_1/CardView$CardViewEclairMr1;->createBackground(Landroid/content/Context;IFFF)Lrn_1/RoundRectDrawableWithShadow;

    #@9
    move-result-object p2

    #@a
    .line 567
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@d
    move-result p3

    #@e
    invoke-virtual {p2, p3}, Lrn_1/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    #@11
    .line 568
    invoke-interface {p1, p2}, Lrn_1/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 569
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@17
    .line 570
    return-void
.end method

.method public onCompatPaddingChanged(Lrn_1/CardViewDelegate;)V
    .locals 0

    #@0
    .line 591
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lrn_1/CardViewDelegate;)V
    .locals 2

    #@0
    .line 595
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lrn_1/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    #@b
    .line 596
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@e
    .line 597
    return-void
.end method

.method public setBackgroundColor(Lrn_1/CardViewDelegate;I)V
    .locals 0

    #@0
    .line 601
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Lrn_1/RoundRectDrawableWithShadow;->setColor(I)V

    #@7
    .line 602
    return-void
.end method

.method public setElevation(Lrn_1/CardViewDelegate;F)V
    .locals 0

    #@0
    .line 617
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Lrn_1/RoundRectDrawableWithShadow;->setShadowSize(F)V

    #@7
    .line 618
    return-void
.end method

.method public setMaxElevation(Lrn_1/CardViewDelegate;F)V
    .locals 1

    #@0
    .line 627
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lrn_1/RoundRectDrawableWithShadow;->setMaxShadowSize(F)V

    #@7
    .line 628
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@a
    .line 629
    return-void
.end method

.method public setRadius(Lrn_1/CardViewDelegate;F)V
    .locals 1

    #@0
    .line 606
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lrn_1/RoundRectDrawableWithShadow;->setCornerRadius(F)V

    #@7
    .line 607
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@a
    .line 608
    return-void
.end method

.method public updatePadding(Lrn_1/CardViewDelegate;)V
    .locals 4

    #@0
    .line 580
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 581
    invoke-direct {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getShadowBackground(Lrn_1/CardViewDelegate;)Lrn_1/RoundRectDrawableWithShadow;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, v0}, Lrn_1/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    #@c
    .line 582
    move-object v1, p1

    #@d
    check-cast v1, Landroid/view/View;

    #@f
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getMinHeight(Lrn_1/CardViewDelegate;)F

    #@12
    move-result v2

    #@13
    float-to-double v2, v2

    #@14
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@17
    move-result-wide v2

    #@18
    double-to-int v2, v2

    #@19
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    #@1c
    .line 583
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewEclairMr1;->getMinWidth(Lrn_1/CardViewDelegate;)F

    #@1f
    move-result v2

    #@20
    float-to-double v2, v2

    #@21
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@24
    move-result-wide v2

    #@25
    double-to-int v2, v2

    #@26
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    #@29
    .line 584
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@2b
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@2d
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@2f
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@31
    invoke-interface {p1, v1, v2, v3, v0}, Lrn_1/CardViewDelegate;->setShadowPadding(IIII)V

    #@34
    .line 586
    return-void
.end method
