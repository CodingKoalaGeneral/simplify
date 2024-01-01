.class Lrn_1/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    #@0
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lrn_1/RoundRectDrawable;->mInsetForPadding:Z

    #@6
    .line 38
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lrn_1/RoundRectDrawable;->mInsetForRadius:Z

    #@9
    .line 41
    iput p2, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@b
    .line 42
    new-instance p2, Landroid/graphics/Paint;

    #@d
    const/4 v0, 0x5

    #@e
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@11
    iput-object p2, p0, Lrn_1/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@13
    .line 43
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@16
    .line 44
    new-instance p1, Landroid/graphics/RectF;

    #@18
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@1b
    iput-object p1, p0, Lrn_1/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@1d
    .line 45
    new-instance p1, Landroid/graphics/Rect;

    #@1f
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@22
    iput-object p1, p0, Lrn_1/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@24
    .line 46
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 5

    #@0
    .line 70
    if-nez p1, :cond_0

    #@2
    .line 71
    invoke-virtual {p0}, Lrn_1/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    #@5
    move-result-object p1

    #@6
    .line 73
    :cond_0
    iget-object v0, p0, Lrn_1/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@a
    int-to-float v1, v1

    #@b
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@d
    int-to-float v2, v2

    #@e
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@10
    int-to-float v3, v3

    #@11
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@13
    int-to-float v4, v4

    #@14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@17
    .line 74
    iget-object v0, p0, Lrn_1/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1c
    .line 75
    iget-boolean p1, p0, Lrn_1/RoundRectDrawable;->mInsetForPadding:Z

    #@1e
    if-eqz p1, :cond_1

    #@20
    .line 76
    iget p1, p0, Lrn_1/RoundRectDrawable;->mPadding:F

    #@22
    iget v0, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@24
    iget-boolean v1, p0, Lrn_1/RoundRectDrawable;->mInsetForRadius:Z

    #@26
    invoke-static {p1, v0, v1}, Lrn_1/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    #@29
    move-result p1

    #@2a
    .line 77
    iget v0, p0, Lrn_1/RoundRectDrawable;->mPadding:F

    #@2c
    iget v1, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@2e
    iget-boolean v2, p0, Lrn_1/RoundRectDrawable;->mInsetForRadius:Z

    #@30
    invoke-static {v0, v1, v2}, Lrn_1/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    #@33
    move-result v0

    #@34
    .line 78
    iget-object v1, p0, Lrn_1/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@36
    float-to-double v2, v0

    #@37
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@3a
    move-result-wide v2

    #@3b
    double-to-int v0, v2

    #@3c
    float-to-double v2, p1

    #@3d
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@40
    move-result-wide v2

    #@41
    double-to-int p1, v2

    #@42
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    #@45
    .line 80
    iget-object p1, p0, Lrn_1/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@47
    iget-object v0, p0, Lrn_1/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@49
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@4c
    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    #@0
    .line 66
    iget-object v0, p0, Lrn_1/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    #@2
    iget v1, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@4
    iget-object v2, p0, Lrn_1/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@6
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@9
    .line 67
    return-void
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .line 118
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    #@0
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 93
    iget-object v0, p0, Lrn_1/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    #@8
    iget v1, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    #@d
    .line 95
    :cond_0
    return-void
.end method

.method getPadding()F
    .locals 1

    #@0
    .line 61
    iget v0, p0, Lrn_1/RoundRectDrawable;->mPadding:F

    #@2
    return v0
.end method

.method public getRadius()F
    .locals 1

    #@0
    .line 122
    iget v0, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    #@0
    .line 86
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 87
    invoke-direct {p0, p1}, Lrn_1/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    #@6
    .line 88
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    #@0
    .line 109
    return-void
.end method

.method public setColor(I)V
    .locals 1

    #@0
    .line 126
    iget-object v0, p0, Lrn_1/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@5
    .line 127
    invoke-virtual {p0}, Lrn_1/RoundRectDrawable;->invalidateSelf()V

    #@8
    .line 128
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    #@0
    .line 114
    return-void
.end method

.method setPadding(FZZ)V
    .locals 1

    #@0
    .line 49
    iget v0, p0, Lrn_1/RoundRectDrawable;->mPadding:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lrn_1/RoundRectDrawable;->mInsetForPadding:Z

    #@8
    if-ne v0, p2, :cond_0

    #@a
    iget-boolean v0, p0, Lrn_1/RoundRectDrawable;->mInsetForRadius:Z

    #@c
    if-ne v0, p3, :cond_0

    #@e
    .line 51
    return-void

    #@f
    .line 53
    :cond_0
    iput p1, p0, Lrn_1/RoundRectDrawable;->mPadding:F

    #@11
    .line 54
    iput-boolean p2, p0, Lrn_1/RoundRectDrawable;->mInsetForPadding:Z

    #@13
    .line 55
    iput-boolean p3, p0, Lrn_1/RoundRectDrawable;->mInsetForRadius:Z

    #@15
    .line 56
    const/4 p1, 0x0

    #@16
    invoke-direct {p0, p1}, Lrn_1/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    #@19
    .line 57
    invoke-virtual {p0}, Lrn_1/RoundRectDrawable;->invalidateSelf()V

    #@1c
    .line 58
    return-void
.end method

.method setRadius(F)V
    .locals 1

    #@0
    .line 98
    iget v0, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 99
    return-void

    #@7
    .line 101
    :cond_0
    iput p1, p0, Lrn_1/RoundRectDrawable;->mRadius:F

    #@9
    .line 102
    const/4 p1, 0x0

    #@a
    invoke-direct {p0, p1}, Lrn_1/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    #@d
    .line 103
    invoke-virtual {p0}, Lrn_1/RoundRectDrawable;->invalidateSelf()V

    #@10
    .line 104
    return-void
.end method
