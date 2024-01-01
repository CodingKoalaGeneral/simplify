.class Lrn_1/CardView$CardViewApi21;
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
    name = "CardViewApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getElevation(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 479
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getMaxElevation(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 454
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@6
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@8
    invoke-virtual {p1}, Lrn_1/RoundRectDrawable;->getPadding()F

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public getMinHeight(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    .line 464
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->getRadius(Lrn_1/CardViewDelegate;)F

    #@3
    move-result p1

    #@4
    const/high16 v0, 0x40000000    # 2.0f

    #@6
    mul-float p1, p1, v0

    #@8
    return p1
.end method

.method public getMinWidth(Lrn_1/CardViewDelegate;)F
    .locals 1

    #@0
    .line 459
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->getRadius(Lrn_1/CardViewDelegate;)F

    #@3
    move-result p1

    #@4
    const/high16 v0, 0x40000000    # 2.0f

    #@6
    mul-float p1, p1, v0

    #@8
    return p1
.end method

.method public getRadius(Lrn_1/CardViewDelegate;)F
    .locals 0

    #@0
    .line 469
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@6
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@8
    invoke-virtual {p1}, Lrn_1/RoundRectDrawable;->getRadius()F

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public initStatic()V
    .locals 0

    #@0
    .line 443
    return-void
.end method

.method public initialize(Lrn_1/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 0

    #@0
    .line 428
    new-instance p2, Lrn_1/RoundRectDrawable;

    #@2
    invoke-direct {p2, p3, p4}, Lrn_1/RoundRectDrawable;-><init>(IF)V

    #@5
    .line 429
    invoke-interface {p1, p2}, Lrn_1/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 430
    move-object p2, p1

    #@9
    check-cast p2, Landroid/view/View;

    #@b
    .line 431
    const/4 p3, 0x1

    #@c
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    #@f
    .line 432
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    #@12
    .line 433
    invoke-virtual {p0, p1, p6}, Lrn_1/CardView$CardViewApi21;->setMaxElevation(Lrn_1/CardViewDelegate;F)V

    #@15
    .line 434
    return-void
.end method

.method public onCompatPaddingChanged(Lrn_1/CardViewDelegate;)V
    .locals 1

    #@0
    .line 499
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->getMaxElevation(Lrn_1/CardViewDelegate;)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lrn_1/CardView$CardViewApi21;->setMaxElevation(Lrn_1/CardViewDelegate;F)V

    #@7
    .line 500
    return-void
.end method

.method public onPreventCornerOverlapChanged(Lrn_1/CardViewDelegate;)V
    .locals 1

    #@0
    .line 504
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->getMaxElevation(Lrn_1/CardViewDelegate;)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lrn_1/CardView$CardViewApi21;->setMaxElevation(Lrn_1/CardViewDelegate;F)V

    #@7
    .line 505
    return-void
.end method

.method public setBackgroundColor(Lrn_1/CardViewDelegate;I)V
    .locals 0

    #@0
    .line 509
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@6
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@8
    invoke-virtual {p1, p2}, Lrn_1/RoundRectDrawable;->setColor(I)V

    #@b
    .line 510
    return-void
.end method

.method public setElevation(Lrn_1/CardViewDelegate;F)V
    .locals 0

    #@0
    .line 474
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    #@5
    .line 475
    return-void
.end method

.method public setMaxElevation(Lrn_1/CardViewDelegate;F)V
    .locals 3

    #@0
    .line 447
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lrn_1/RoundRectDrawable;

    #@6
    check-cast v0, Lrn_1/RoundRectDrawable;

    #@8
    .line 448
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getUseCompatPadding()Z

    #@b
    move-result v1

    #@c
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@f
    move-result v2

    #@10
    .line 447
    invoke-virtual {v0, p2, v1, v2}, Lrn_1/RoundRectDrawable;->setPadding(FZZ)V

    #@13
    .line 449
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@16
    .line 450
    return-void
.end method

.method public setRadius(Lrn_1/CardViewDelegate;F)V
    .locals 0

    #@0
    .line 438
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@6
    check-cast p1, Lrn_1/RoundRectDrawable;

    #@8
    invoke-virtual {p1, p2}, Lrn_1/RoundRectDrawable;->setRadius(F)V

    #@b
    .line 439
    return-void
.end method

.method public updatePadding(Lrn_1/CardViewDelegate;)V
    .locals 4

    #@0
    .line 484
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getUseCompatPadding()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 485
    const/4 v0, 0x0

    #@7
    invoke-interface {p1, v0, v0, v0, v0}, Lrn_1/CardViewDelegate;->setShadowPadding(IIII)V

    #@a
    .line 486
    return-void

    #@b
    .line 488
    :cond_0
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->getMaxElevation(Lrn_1/CardViewDelegate;)F

    #@e
    move-result v0

    #@f
    .line 489
    invoke-virtual {p0, p1}, Lrn_1/CardView$CardViewApi21;->getRadius(Lrn_1/CardViewDelegate;)F

    #@12
    move-result v1

    #@13
    .line 490
    nop

    #@14
    .line 491
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@17
    move-result v2

    #@18
    invoke-static {v0, v1, v2}, Lrn_1/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    #@1b
    move-result v2

    #@1c
    float-to-double v2, v2

    #@1d
    .line 490
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@20
    move-result-wide v2

    #@21
    double-to-int v2, v2

    #@22
    .line 492
    nop

    #@23
    .line 493
    invoke-interface {p1}, Lrn_1/CardViewDelegate;->getPreventCornerOverlap()Z

    #@26
    move-result v3

    #@27
    invoke-static {v0, v1, v3}, Lrn_1/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    #@2a
    move-result v0

    #@2b
    float-to-double v0, v0

    #@2c
    .line 492
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@2f
    move-result-wide v0

    #@30
    double-to-int v0, v0

    #@31
    .line 494
    invoke-interface {p1, v2, v0, v2, v0}, Lrn_1/CardViewDelegate;->setShadowPadding(IIII)V

    #@34
    .line 495
    return-void
.end method
