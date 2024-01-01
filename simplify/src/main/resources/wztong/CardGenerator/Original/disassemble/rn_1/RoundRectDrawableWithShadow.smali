.class Lrn_1/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field static final COS_45:D

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private dm:Landroid/util/DisplayMetrics;

.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:I

.field mMaxShadowSize:F

.field mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .line 30
    const-wide v0, 0x4046800000000000L    # 45.0

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@c
    move-result-wide v0

    #@d
    sput-wide v0, Lrn_1/RoundRectDrawableWithShadow;->COS_45:D

    #@f
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;IFFF)V
    .locals 2

    #@0
    .line 84
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 68
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mDirty:Z

    #@6
    .line 74
    iput-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@8
    .line 79
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    #@b
    .line 85
    const/high16 v1, 0x37000000

    #@d
    iput v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mShadowStartColor:I

    #@f
    .line 87
    const/high16 v1, 0x3000000

    #@11
    iput v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mShadowEndColor:I

    #@13
    .line 88
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@16
    move-result-object p1

    #@17
    iput-object p1, p0, Lrn_1/RoundRectDrawableWithShadow;->dm:Landroid/util/DisplayMetrics;

    #@19
    .line 91
    const/high16 p1, 0x3f800000    # 1.0f

    #@1b
    invoke-direct {p0, p1}, Lrn_1/RoundRectDrawableWithShadow;->dp(F)F

    #@1e
    move-result p1

    #@1f
    float-to-int p1, p1

    #@20
    iput p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@22
    .line 93
    new-instance p1, Landroid/graphics/Paint;

    #@24
    const/4 v1, 0x5

    #@25
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@28
    iput-object p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2a
    .line 94
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@2d
    .line 95
    new-instance p1, Landroid/graphics/Paint;

    #@2f
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@32
    iput-object p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@34
    .line 96
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@36
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@39
    .line 97
    const/high16 p1, 0x3f000000    # 0.5f

    #@3b
    add-float/2addr p3, p1

    #@3c
    float-to-int p1, p3

    #@3d
    int-to-float p1, p1

    #@3e
    iput p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@40
    .line 98
    new-instance p1, Landroid/graphics/RectF;

    #@42
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@45
    iput-object p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@47
    .line 99
    new-instance p1, Landroid/graphics/Paint;

    #@49
    iget-object p2, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@4b
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@4e
    iput-object p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@50
    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@53
    .line 101
    invoke-virtual {p0, p4, p5}, Lrn_1/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    #@56
    .line 102
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6

    #@0
    .line 309
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    const/high16 v1, 0x3fc00000    # 1.5f

    #@4
    mul-float v0, v0, v1

    #@6
    .line 310
    iget-object v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@a
    int-to-float v2, v2

    #@b
    iget v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@d
    add-float/2addr v2, v3

    #@e
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@10
    int-to-float v3, v3

    #@11
    add-float/2addr v3, v0

    #@12
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@14
    int-to-float v4, v4

    #@15
    iget v5, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@17
    sub-float/2addr v4, v5

    #@18
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@1a
    int-to-float p1, p1

    #@1b
    sub-float/2addr p1, v0

    #@1c
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    #@1f
    .line 312
    invoke-direct {p0}, Lrn_1/RoundRectDrawableWithShadow;->buildShadowCorners()V

    #@22
    .line 313
    return-void
.end method

.method private buildShadowCorners()V
    .locals 25

    #@0
    .line 272
    move-object/from16 v0, p0

    #@2
    new-instance v1, Landroid/graphics/RectF;

    #@4
    iget v2, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@6
    neg-float v3, v2

    #@7
    neg-float v4, v2

    #@8
    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@b
    .line 273
    new-instance v2, Landroid/graphics/RectF;

    #@d
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@10
    .line 274
    iget v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@12
    neg-float v4, v3

    #@13
    neg-float v3, v3

    #@14
    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    #@17
    .line 276
    iget-object v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 277
    new-instance v3, Landroid/graphics/Path;

    #@1d
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@20
    iput-object v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@22
    goto :goto_0

    #@23
    .line 279
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    #@26
    .line 281
    :goto_0
    iget-object v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@28
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@2a
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    #@2d
    .line 282
    iget-object v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@2f
    iget v4, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@31
    neg-float v4, v4

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    #@36
    .line 283
    iget-object v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@38
    iget v4, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@3a
    neg-float v4, v4

    #@3b
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    #@3e
    .line 285
    iget-object v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@40
    const/high16 v4, 0x43340000    # 180.0f

    #@42
    const/high16 v6, 0x42b40000    # 90.0f

    #@44
    const/4 v7, 0x0

    #@45
    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@48
    .line 287
    iget-object v2, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@4a
    const/high16 v3, 0x43870000    # 270.0f

    #@4c
    const/high16 v4, -0x3d4c0000    # -90.0f

    #@4e
    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    #@51
    .line 288
    iget-object v1, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@53
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    #@56
    .line 289
    iget v1, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@58
    iget v2, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@5a
    add-float/2addr v2, v1

    #@5b
    div-float/2addr v1, v2

    #@5c
    .line 290
    iget-object v2, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@5e
    new-instance v3, Landroid/graphics/RadialGradient;

    #@60
    const/4 v9, 0x0

    #@61
    const/4 v10, 0x0

    #@62
    iget v4, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@64
    iget v6, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@66
    add-float v11, v4, v6

    #@68
    const/4 v4, 0x3

    #@69
    new-array v12, v4, [I

    #@6b
    iget v6, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowStartColor:I

    #@6d
    aput v6, v12, v7

    #@6f
    const/4 v15, 0x1

    #@70
    aput v6, v12, v15

    #@72
    iget v6, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowEndColor:I

    #@74
    const/16 v16, 0x2

    #@76
    aput v6, v12, v16

    #@78
    new-array v13, v4, [F

    #@7a
    aput v5, v13, v7

    #@7c
    aput v1, v13, v15

    #@7e
    const/high16 v1, 0x3f800000    # 1.0f

    #@80
    aput v1, v13, v16

    #@82
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@84
    move-object v8, v3

    #@85
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@88
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@8b
    .line 298
    iget-object v1, v0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@8d
    new-instance v2, Landroid/graphics/LinearGradient;

    #@8f
    const/16 v18, 0x0

    #@91
    iget v3, v0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@93
    neg-float v5, v3

    #@94
    iget v6, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@96
    add-float v19, v5, v6

    #@98
    const/16 v20, 0x0

    #@9a
    neg-float v3, v3

    #@9b
    sub-float v21, v3, v6

    #@9d
    new-array v3, v4, [I

    #@9f
    iget v5, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowStartColor:I

    #@a1
    aput v5, v3, v7

    #@a3
    aput v5, v3, v15

    #@a5
    iget v5, v0, Lrn_1/RoundRectDrawableWithShadow;->mShadowEndColor:I

    #@a7
    aput v5, v3, v16

    #@a9
    new-array v4, v4, [F

    #@ab
    fill-array-data v4, :array_0

    #@ae
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@b0
    move-object/from16 v17, v2

    #@b2
    move-object/from16 v22, v3

    #@b4
    move-object/from16 v23, v4

    #@b6
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@b9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@bc
    .line 302
    iget-object v1, v0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@be
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@c1
    .line 303
    return-void

    #@c2
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6

    #@0
    .line 182
    if-eqz p2, :cond_0

    #@2
    .line 183
    float-to-double v0, p0

    #@3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5
    sget-wide v4, Lrn_1/RoundRectDrawableWithShadow;->COS_45:D

    #@7
    sub-double/2addr v2, v4

    #@8
    float-to-double p0, p1

    #@9
    mul-double v2, v2, p0

    #@b
    add-double/2addr v0, v2

    #@c
    double-to-float p0, v0

    #@d
    return p0

    #@e
    .line 185
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6

    #@0
    .line 173
    const/high16 v0, 0x3fc00000    # 1.5f

    #@2
    if-eqz p2, :cond_0

    #@4
    .line 174
    mul-float p0, p0, v0

    #@6
    float-to-double v0, p0

    #@7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@9
    sget-wide v4, Lrn_1/RoundRectDrawableWithShadow;->COS_45:D

    #@b
    sub-double/2addr v2, v4

    #@c
    float-to-double p0, p1

    #@d
    mul-double v2, v2, p0

    #@f
    add-double/2addr v0, v2

    #@10
    double-to-float p0, v0

    #@11
    return p0

    #@12
    .line 176
    :cond_0
    mul-float p0, p0, v0

    #@14
    return p0
.end method

.method private dp(F)F
    .locals 2

    #@0
    .line 106
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->dm:Landroid/util/DisplayMetrics;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@6
    move-result p1

    #@7
    return p1
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    #@0
    .line 224
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@2
    neg-float v1, v0

    #@3
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@5
    sub-float/2addr v1, v2

    #@6
    .line 225
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@8
    int-to-float v2, v2

    #@9
    add-float/2addr v0, v2

    #@a
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@c
    const/high16 v3, 0x40000000    # 2.0f

    #@e
    div-float/2addr v2, v3

    #@f
    add-float/2addr v0, v2

    #@10
    .line 226
    iget-object v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@12
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@15
    move-result v2

    #@16
    mul-float v9, v0, v3

    #@18
    sub-float/2addr v2, v9

    #@19
    const/4 v3, 0x1

    #@1a
    const/4 v4, 0x0

    #@1b
    const/4 v5, 0x0

    #@1c
    cmpl-float v2, v2, v5

    #@1e
    if-lez v2, :cond_0

    #@20
    const/4 v2, 0x1

    #@21
    goto :goto_0

    #@22
    :cond_0
    const/4 v2, 0x0

    #@23
    .line 227
    :goto_0
    iget-object v6, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@25
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    #@28
    move-result v6

    #@29
    sub-float/2addr v6, v9

    #@2a
    cmpl-float v5, v6, v5

    #@2c
    if-lez v5, :cond_1

    #@2e
    const/4 v10, 0x1

    #@2f
    goto :goto_1

    #@30
    :cond_1
    const/4 v10, 0x0

    #@31
    .line 229
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@34
    move-result v11

    #@35
    .line 230
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@37
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@39
    add-float/2addr v3, v0

    #@3a
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@3c
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@3e
    add-float/2addr v4, v0

    #@3f
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@42
    .line 231
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@44
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@46
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@49
    .line 232
    if-eqz v2, :cond_2

    #@4b
    .line 233
    const/4 v4, 0x0

    #@4c
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@4e
    .line 234
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    #@51
    move-result v3

    #@52
    sub-float v6, v3, v9

    #@54
    iget v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@56
    neg-float v7, v3

    #@57
    iget-object v8, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@59
    .line 233
    move-object v3, p1

    #@5a
    move v5, v1

    #@5b
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@5e
    .line 237
    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@61
    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@64
    move-result v11

    #@65
    .line 240
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@67
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@69
    sub-float/2addr v3, v0

    #@6a
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@6c
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    #@6e
    sub-float/2addr v4, v0

    #@6f
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@72
    .line 241
    const/high16 v3, 0x43340000    # 180.0f

    #@74
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    #@77
    .line 242
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@79
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@7b
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@7e
    .line 243
    if-eqz v2, :cond_3

    #@80
    .line 244
    const/4 v4, 0x0

    #@81
    iget-object v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@83
    .line 245
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@86
    move-result v2

    #@87
    sub-float v6, v2, v9

    #@89
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@8b
    neg-float v2, v2

    #@8c
    iget v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@8e
    add-float v7, v2, v3

    #@90
    iget-object v8, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@92
    .line 244
    move-object v3, p1

    #@93
    move v5, v1

    #@94
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@97
    .line 248
    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@9a
    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@9d
    move-result v2

    #@9e
    .line 251
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@a0
    iget v3, v3, Landroid/graphics/RectF;->left:F

    #@a2
    add-float/2addr v3, v0

    #@a3
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@a5
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    #@a7
    sub-float/2addr v4, v0

    #@a8
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@ab
    .line 252
    const/high16 v3, 0x43870000    # 270.0f

    #@ad
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    #@b0
    .line 253
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@b2
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@b4
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@b7
    .line 254
    if-eqz v10, :cond_4

    #@b9
    .line 255
    const/4 v4, 0x0

    #@ba
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@bc
    .line 256
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    #@bf
    move-result v3

    #@c0
    sub-float v6, v3, v9

    #@c2
    iget v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@c4
    neg-float v7, v3

    #@c5
    iget-object v8, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@c7
    .line 255
    move-object v3, p1

    #@c8
    move v5, v1

    #@c9
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@cc
    .line 258
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@cf
    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@d2
    move-result v2

    #@d3
    .line 261
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@d5
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@d7
    sub-float/2addr v3, v0

    #@d8
    iget-object v4, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@da
    iget v4, v4, Landroid/graphics/RectF;->top:F

    #@dc
    add-float/2addr v4, v0

    #@dd
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@e0
    .line 262
    const/high16 v0, 0x42b40000    # 90.0f

    #@e2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    #@e5
    .line 263
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    #@e7
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@e9
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@ec
    .line 264
    if-eqz v10, :cond_5

    #@ee
    .line 265
    const/4 v4, 0x0

    #@ef
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@f1
    .line 266
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@f4
    move-result v0

    #@f5
    sub-float v6, v0, v9

    #@f7
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@f9
    neg-float v7, v0

    #@fa
    iget-object v8, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@fc
    .line 265
    move-object v3, p1

    #@fd
    move v5, v1

    #@fe
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@101
    .line 268
    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@104
    .line 269
    return-void
.end method

.method private toEven(F)I
    .locals 2

    #@0
    .line 113
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    add-float/2addr p1, v0

    #@3
    float-to-int p1, p1

    #@4
    .line 114
    rem-int/lit8 v0, p1, 0x2

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 115
    sub-int/2addr p1, v1

    #@a
    return p1

    #@b
    .line 117
    :cond_0
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    #@0
    .line 213
    iget-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 214
    invoke-virtual {p0}, Lrn_1/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lrn_1/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    #@b
    .line 215
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mDirty:Z

    #@e
    .line 217
    :cond_0
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@10
    const/high16 v1, 0x40000000    # 2.0f

    #@12
    div-float/2addr v0, v1

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@17
    .line 218
    invoke-direct {p0, p1}, Lrn_1/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    #@1a
    .line 219
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@1c
    neg-float v0, v0

    #@1d
    div-float/2addr v0, v1

    #@1e
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@21
    .line 220
    sget-object v0, Lrn_1/RoundRectDrawableWithShadow;->sRoundRectHelper:Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;

    #@23
    iget-object v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    #@25
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@27
    iget-object v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@29
    invoke-interface {v0, p1, v1, v2, v3}, Lrn_1/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    #@2c
    .line 221
    return-void
.end method

.method getCornerRadius()F
    .locals 1

    #@0
    .line 316
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@2
    return v0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .locals 0

    #@0
    .line 320
    invoke-virtual {p0, p1}, Lrn_1/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    #@3
    .line 321
    return-void
.end method

.method getMaxShadowSize()F
    .locals 1

    #@0
    .line 336
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    return v0
.end method

.method getMinHeight()F
    .locals 5

    #@0
    .line 346
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@4
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@6
    int-to-float v2, v2

    #@7
    add-float/2addr v1, v2

    #@8
    const/high16 v2, 0x3fc00000    # 1.5f

    #@a
    mul-float v3, v0, v2

    #@c
    const/high16 v4, 0x40000000    # 2.0f

    #@e
    div-float/2addr v3, v4

    #@f
    add-float/2addr v1, v3

    #@10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@13
    move-result v0

    #@14
    mul-float v0, v0, v4

    #@16
    .line 348
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@18
    mul-float v1, v1, v2

    #@1a
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@1c
    int-to-float v2, v2

    #@1d
    add-float/2addr v1, v2

    #@1e
    mul-float v1, v1, v4

    #@20
    add-float/2addr v0, v1

    #@21
    return v0
.end method

.method getMinWidth()F
    .locals 4

    #@0
    .line 340
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@4
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@6
    int-to-float v2, v2

    #@7
    add-float/2addr v1, v2

    #@8
    const/high16 v2, 0x40000000    # 2.0f

    #@a
    div-float v3, v0, v2

    #@c
    add-float/2addr v1, v3

    #@d
    .line 341
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@10
    move-result v0

    #@11
    mul-float v0, v0, v2

    #@13
    .line 342
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@15
    iget v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@17
    int-to-float v3, v3

    #@18
    add-float/2addr v1, v3

    #@19
    mul-float v1, v1, v2

    #@1b
    add-float/2addr v0, v1

    #@1c
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .line 198
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    #@0
    .line 163
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@4
    iget-boolean v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@6
    invoke-static {v0, v1, v2}, Lrn_1/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    #@9
    move-result v0

    #@a
    float-to-double v0, v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    .line 165
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@12
    iget v2, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@14
    iget-boolean v3, p0, Lrn_1/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@16
    invoke-static {v1, v2, v3}, Lrn_1/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    #@19
    move-result v1

    #@1a
    float-to-double v1, v1

    #@1b
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v1

    #@1f
    double-to-int v1, v1

    #@20
    .line 167
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    .line 168
    const/4 p1, 0x1

    #@24
    return p1
.end method

.method getShadowSize()F
    .locals 1

    #@0
    .line 332
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@2
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    #@0
    .line 134
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@3
    .line 135
    const/4 p1, 0x1

    #@4
    iput-boolean p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mDirty:Z

    #@6
    .line 136
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 0

    #@0
    .line 121
    iput-boolean p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    #@2
    .line 122
    invoke-virtual {p0}, Lrn_1/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@5
    .line 123
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    #@0
    .line 127
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@5
    .line 128
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@a
    .line 129
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@f
    .line 130
    return-void
.end method

.method public setColor(I)V
    .locals 1

    #@0
    .line 352
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@5
    .line 353
    invoke-virtual {p0}, Lrn_1/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@8
    .line 354
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    #@0
    .line 191
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5
    .line 192
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@a
    .line 193
    iget-object v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@f
    .line 194
    return-void
.end method

.method setCornerRadius(F)V
    .locals 1

    #@0
    .line 202
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    add-float/2addr p1, v0

    #@3
    float-to-int p1, p1

    #@4
    int-to-float p1, p1

    #@5
    .line 203
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@7
    cmpl-float v0, v0, p1

    #@9
    if-nez v0, :cond_0

    #@b
    .line 204
    return-void

    #@c
    .line 206
    :cond_0
    iput p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mCornerRadius:F

    #@e
    .line 207
    const/4 p1, 0x1

    #@f
    iput-boolean p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mDirty:Z

    #@11
    .line 208
    invoke-virtual {p0}, Lrn_1/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@14
    .line 209
    return-void
.end method

.method setMaxShadowSize(F)V
    .locals 1

    #@0
    .line 328
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@2
    invoke-virtual {p0, v0, p1}, Lrn_1/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    #@5
    .line 329
    return-void
.end method

.method setShadowSize(F)V
    .locals 1

    #@0
    .line 324
    iget v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@2
    invoke-virtual {p0, p1, v0}, Lrn_1/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    #@5
    .line 325
    return-void
.end method

.method setShadowSize(FF)V
    .locals 3

    #@0
    .line 139
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    if-ltz v1, :cond_3

    #@5
    cmpg-float v0, p2, v0

    #@7
    if-ltz v0, :cond_3

    #@9
    .line 142
    invoke-direct {p0, p1}, Lrn_1/RoundRectDrawableWithShadow;->toEven(F)I

    #@c
    move-result p1

    #@d
    int-to-float p1, p1

    #@e
    .line 143
    invoke-direct {p0, p2}, Lrn_1/RoundRectDrawableWithShadow;->toEven(F)I

    #@11
    move-result p2

    #@12
    int-to-float p2, p2

    #@13
    .line 144
    const/4 v0, 0x1

    #@14
    cmpl-float v1, p1, p2

    #@16
    if-lez v1, :cond_1

    #@18
    .line 145
    nop

    #@19
    .line 146
    iget-boolean p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    #@1b
    if-nez p1, :cond_0

    #@1d
    .line 147
    iput-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    #@1f
    .line 150
    :cond_0
    move p1, p2

    #@20
    :cond_1
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@22
    cmpl-float v1, v1, p1

    #@24
    if-nez v1, :cond_2

    #@26
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@28
    cmpl-float v1, v1, p2

    #@2a
    if-nez v1, :cond_2

    #@2c
    .line 151
    return-void

    #@2d
    .line 153
    :cond_2
    iput p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawShadowSize:F

    #@2f
    .line 154
    iput p2, p0, Lrn_1/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    #@31
    .line 155
    const/high16 v1, 0x3fc00000    # 1.5f

    #@33
    mul-float p1, p1, v1

    #@35
    iget v1, p0, Lrn_1/RoundRectDrawableWithShadow;->mInsetShadow:I

    #@37
    int-to-float v2, v1

    #@38
    add-float/2addr p1, v2

    #@39
    const/high16 v2, 0x3f000000    # 0.5f

    #@3b
    add-float/2addr p1, v2

    #@3c
    float-to-int p1, p1

    #@3d
    int-to-float p1, p1

    #@3e
    iput p1, p0, Lrn_1/RoundRectDrawableWithShadow;->mShadowSize:F

    #@40
    .line 156
    int-to-float p1, v1

    #@41
    add-float/2addr p2, p1

    #@42
    iput p2, p0, Lrn_1/RoundRectDrawableWithShadow;->mMaxShadowSize:F

    #@44
    .line 157
    iput-boolean v0, p0, Lrn_1/RoundRectDrawableWithShadow;->mDirty:Z

    #@46
    .line 158
    invoke-virtual {p0}, Lrn_1/RoundRectDrawableWithShadow;->invalidateSelf()V

    #@49
    .line 159
    return-void

    #@4a
    .line 140
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@4c
    const-string p2, "invalid shadow size"

    #@4e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw p1
.end method
