.class public Lrn_1/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mElevation:F

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .line 23
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@2
    sput-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@4
    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    sput-object v0, Lrn_1/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@3
    .line 33
    new-instance p1, Landroid/graphics/RectF;

    #@5
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object p1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@a
    .line 34
    new-instance p1, Landroid/graphics/RectF;

    #@c
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object p1, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@11
    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    #@13
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    #@16
    iput-object p1, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@18
    .line 37
    new-instance p1, Landroid/graphics/Paint;

    #@1a
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@1d
    iput-object p1, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@1f
    .line 38
    new-instance p1, Landroid/graphics/Paint;

    #@21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@24
    iput-object p1, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@26
    .line 39
    new-instance p1, Landroid/graphics/Paint;

    #@28
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@2b
    iput-object p1, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@2d
    .line 41
    const/high16 p1, -0x1000000

    #@2f
    iput p1, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@31
    .line 42
    const/4 p1, 0x0

    #@32
    iput p1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@34
    .line 43
    iput p1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@36
    .line 65
    invoke-direct {p0}, Lrn_1/CircleImageView;->init()V

    #@39
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    #@0
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lrn_1/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    #@0
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 33
    new-instance p1, Landroid/graphics/RectF;

    #@5
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object p1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@a
    .line 34
    new-instance p1, Landroid/graphics/RectF;

    #@c
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object p1, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@11
    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    #@13
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    #@16
    iput-object p1, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@18
    .line 37
    new-instance p1, Landroid/graphics/Paint;

    #@1a
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@1d
    iput-object p1, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@1f
    .line 38
    new-instance p1, Landroid/graphics/Paint;

    #@21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@24
    iput-object p1, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@26
    .line 39
    new-instance p1, Landroid/graphics/Paint;

    #@28
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    #@2b
    iput-object p1, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@2d
    .line 41
    const/high16 p1, -0x1000000

    #@2f
    iput p1, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@31
    .line 42
    const/4 p2, 0x0

    #@32
    iput p2, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@34
    .line 43
    iput p2, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@36
    .line 77
    iput p2, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@38
    .line 78
    iput p1, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@3a
    .line 79
    iput-boolean p2, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@3c
    .line 80
    iput p2, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@3e
    .line 84
    invoke-direct {p0}, Lrn_1/CircleImageView;->init()V

    #@41
    .line 85
    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    #@0
    .line 305
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 306
    iget-object v1, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@9
    .line 308
    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    #@0
    .line 394
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingRight()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    .line 395
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getHeight()I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingTop()I

    #@15
    move-result v2

    #@16
    sub-int/2addr v1, v2

    #@17
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingBottom()I

    #@1a
    move-result v2

    #@1b
    sub-int/2addr v1, v2

    #@1c
    .line 397
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v2

    #@20
    .line 399
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingLeft()I

    #@23
    move-result v3

    #@24
    int-to-float v3, v3

    #@25
    sub-int/2addr v0, v2

    #@26
    int-to-float v0, v0

    #@27
    const/high16 v4, 0x40000000    # 2.0f

    #@29
    div-float/2addr v0, v4

    #@2a
    add-float/2addr v3, v0

    #@2b
    .line 400
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingTop()I

    #@2e
    move-result v0

    #@2f
    int-to-float v0, v0

    #@30
    sub-int/2addr v1, v2

    #@31
    int-to-float v1, v1

    #@32
    div-float/2addr v1, v4

    #@33
    add-float/2addr v0, v1

    #@34
    .line 402
    new-instance v1, Landroid/graphics/RectF;

    #@36
    int-to-float v2, v2

    #@37
    add-float v4, v3, v2

    #@39
    add-float/2addr v2, v0

    #@3a
    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@3d
    return-object v1
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    #@0
    .line 311
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_0

    #@3
    .line 312
    return-object v0

    #@4
    .line 315
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 316
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    #@a
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    .line 322
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 323
    sget-object v1, Lrn_1/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    #@15
    const/4 v2, 0x2

    #@16
    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@19
    move-result-object v1

    #@1a
    goto :goto_0

    #@1b
    .line 325
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1e
    move-result v1

    #@1f
    iget v2, p0, Lrn_1/CircleImageView;->mElevation:F

    #@21
    const/high16 v3, 0x40000000    # 2.0f

    #@23
    mul-float v2, v2, v3

    #@25
    float-to-int v2, v2

    #@26
    sub-int/2addr v1, v2

    #@27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2a
    move-result v2

    #@2b
    iget v4, p0, Lrn_1/CircleImageView;->mElevation:F

    #@2d
    mul-float v4, v4, v3

    #@2f
    float-to-int v3, v4

    #@30
    sub-int/2addr v2, v3

    #@31
    sget-object v3, Lrn_1/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    #@33
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@36
    move-result-object v1

    #@37
    .line 328
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    #@39
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3c
    .line 329
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    #@43
    move-result v4

    #@44
    const/4 v5, 0x0

    #@45
    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@48
    .line 330
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 331
    return-object v1

    #@4c
    .line 332
    :catch_0
    move-exception p1

    #@4d
    .line 333
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    #@50
    .line 334
    return-object v0
.end method

.method private init()V
    .locals 1

    #@0
    .line 88
    sget-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@2
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@5
    .line 89
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lrn_1/CircleImageView;->mReady:Z

    #@8
    .line 91
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mSetupPending:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 92
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@f
    .line 93
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lrn_1/CircleImageView;->mSetupPending:Z

    #@12
    .line 95
    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    #@0
    .line 339
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 340
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@7
    goto :goto_0

    #@8
    .line 342
    :cond_0
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Lrn_1/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@12
    .line 344
    :goto_0
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@15
    .line 345
    return-void
.end method

.method private setup()V
    .locals 5

    #@0
    .line 348
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mReady:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 349
    iput-boolean v1, p0, Lrn_1/CircleImageView;->mSetupPending:Z

    #@7
    .line 350
    return-void

    #@8
    .line 353
    :cond_0
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getWidth()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getHeight()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 354
    return-void

    #@15
    .line 357
    :cond_1
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@17
    if-nez v0, :cond_2

    #@19
    .line 358
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@1c
    .line 359
    return-void

    #@1d
    .line 362
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    #@1f
    iget-object v2, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@21
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@23
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@25
    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@28
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@2a
    .line 364
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@2f
    .line 365
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@31
    iget-object v2, p0, Lrn_1/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@33
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@36
    .line 367
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@38
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@3a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@3d
    .line 368
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@3f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@42
    .line 369
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@44
    iget v2, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@46
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@49
    .line 370
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@4b
    iget v2, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@4d
    int-to-float v2, v2

    #@4e
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@51
    .line 372
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@53
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@55
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@58
    .line 373
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@5a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@5d
    .line 374
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@5f
    iget v1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@64
    .line 376
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@6c
    .line 377
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@6e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@71
    move-result v0

    #@72
    iput v0, p0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@74
    .line 379
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@76
    invoke-direct {p0}, Lrn_1/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@7d
    .line 380
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@7f
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@82
    move-result v0

    #@83
    iget v1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@85
    int-to-float v1, v1

    #@86
    sub-float/2addr v0, v1

    #@87
    const/high16 v1, 0x40000000    # 2.0f

    #@89
    div-float/2addr v0, v1

    #@8a
    iget-object v2, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@8c
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@8f
    move-result v2

    #@90
    iget v3, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@92
    int-to-float v3, v3

    #@93
    sub-float/2addr v2, v3

    #@94
    div-float/2addr v2, v1

    #@95
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@98
    move-result v0

    #@99
    iput v0, p0, Lrn_1/CircleImageView;->mBorderRadius:F

    #@9b
    .line 382
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@9d
    iget-object v2, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@9f
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@a2
    .line 383
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@a4
    if-nez v0, :cond_3

    #@a6
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@a8
    if-lez v0, :cond_3

    #@aa
    .line 384
    iget-object v2, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@ac
    int-to-float v3, v0

    #@ad
    const/high16 v4, 0x3f800000    # 1.0f

    #@af
    sub-float/2addr v3, v4

    #@b0
    int-to-float v0, v0

    #@b1
    sub-float/2addr v0, v4

    #@b2
    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    #@b5
    .line 386
    :cond_3
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@b7
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@ba
    move-result v0

    #@bb
    div-float/2addr v0, v1

    #@bc
    iget-object v2, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@be
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@c1
    move-result v2

    #@c2
    div-float/2addr v2, v1

    #@c3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@c6
    move-result v0

    #@c7
    iput v0, p0, Lrn_1/CircleImageView;->mDrawableRadius:F

    #@c9
    .line 388
    invoke-direct {p0}, Lrn_1/CircleImageView;->applyColorFilter()V

    #@cc
    .line 389
    invoke-direct {p0}, Lrn_1/CircleImageView;->updateShaderMatrix()V

    #@cf
    .line 390
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@d2
    .line 391
    return-void
.end method

.method private updateShaderMatrix()V
    .locals 5

    #@0
    .line 407
    nop

    #@1
    .line 408
    nop

    #@2
    .line 410
    iget-object v0, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@8
    .line 412
    iget v0, p0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@a
    int-to-float v0, v0

    #@b
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@d
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@10
    move-result v1

    #@11
    mul-float v0, v0, v1

    #@13
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@15
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@18
    move-result v1

    #@19
    iget v2, p0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@1b
    int-to-float v2, v2

    #@1c
    mul-float v1, v1, v2

    #@1e
    const/4 v2, 0x0

    #@1f
    const/high16 v3, 0x3f000000    # 0.5f

    #@21
    cmpl-float v0, v0, v1

    #@23
    if-lez v0, :cond_0

    #@25
    .line 413
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@27
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@2a
    move-result v0

    #@2b
    iget v1, p0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@2d
    int-to-float v1, v1

    #@2e
    div-float/2addr v0, v1

    #@2f
    .line 414
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@31
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@34
    move-result v1

    #@35
    iget v4, p0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@37
    int-to-float v4, v4

    #@38
    mul-float v4, v4, v0

    #@3a
    sub-float/2addr v1, v4

    #@3b
    mul-float v1, v1, v3

    #@3d
    move v2, v1

    #@3e
    const/4 v1, 0x0

    #@3f
    goto :goto_0

    #@40
    .line 416
    :cond_0
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@42
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    #@45
    move-result v0

    #@46
    iget v1, p0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@48
    int-to-float v1, v1

    #@49
    div-float/2addr v0, v1

    #@4a
    .line 417
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@4c
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@4f
    move-result v1

    #@50
    iget v4, p0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@52
    int-to-float v4, v4

    #@53
    mul-float v4, v4, v0

    #@55
    sub-float/2addr v1, v4

    #@56
    mul-float v1, v1, v3

    #@58
    .line 420
    :goto_0
    iget-object v4, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@5a
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    #@5d
    .line 421
    iget-object v0, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@5f
    add-float/2addr v2, v3

    #@60
    float-to-int v2, v2

    #@61
    int-to-float v2, v2

    #@62
    iget-object v4, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@64
    iget v4, v4, Landroid/graphics/RectF;->left:F

    #@66
    add-float/2addr v2, v4

    #@67
    add-float/2addr v1, v3

    #@68
    float-to-int v1, v1

    #@69
    int-to-float v1, v1

    #@6a
    iget-object v3, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@6c
    iget v3, v3, Landroid/graphics/RectF;->top:F

    #@6e
    add-float/2addr v1, v3

    #@6f
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@72
    .line 423
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@74
    iget-object v1, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@76
    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@79
    .line 424
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    #@0
    .line 152
    iget v0, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@2
    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    #@0
    .line 226
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .line 301
    iget-object v0, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 182
    iget v0, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@2
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    #@0
    .line 108
    sget-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    #@0
    .line 239
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@2
    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    #@0
    .line 252
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    #@0
    .line 127
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    #@7
    .line 129
    return-void

    #@8
    .line 132
    :cond_0
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 133
    return-void

    #@d
    .line 136
    :cond_1
    iget v0, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 137
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@13
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@16
    move-result v0

    #@17
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@19
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@1c
    move-result v1

    #@1d
    iget v2, p0, Lrn_1/CircleImageView;->mDrawableRadius:F

    #@1f
    iget v3, p0, Lrn_1/CircleImageView;->mElevation:F

    #@21
    sub-float/2addr v2, v3

    #@22
    iget-object v3, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@24
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@27
    .line 139
    :cond_2
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@29
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@2c
    move-result v0

    #@2d
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@2f
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@32
    move-result v1

    #@33
    iget v2, p0, Lrn_1/CircleImageView;->mDrawableRadius:F

    #@35
    iget v3, p0, Lrn_1/CircleImageView;->mElevation:F

    #@37
    sub-float/2addr v2, v3

    #@38
    iget-object v3, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@3a
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@3d
    .line 140
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@3f
    if-lez v0, :cond_3

    #@41
    .line 141
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@43
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@46
    move-result v0

    #@47
    iget-object v1, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@49
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@4c
    move-result v1

    #@4d
    iget v2, p0, Lrn_1/CircleImageView;->mBorderRadius:F

    #@4f
    iget v3, p0, Lrn_1/CircleImageView;->mElevation:F

    #@51
    sub-float/2addr v2, v3

    #@52
    iget-object v3, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@54
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@57
    .line 143
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    #@0
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    #@3
    .line 148
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@6
    .line 149
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    #@0
    .line 120
    if-nez p1, :cond_0

    #@2
    .line 123
    return-void

    #@3
    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string v0, "adjustViewBounds not supported."

    #@7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    #@0
    .line 208
    invoke-virtual {p0, p1}, Lrn_1/CircleImageView;->setFillColor(I)V

    #@3
    .line 209
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    #@0
    .line 156
    iget v0, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 157
    return-void

    #@5
    .line 160
    :cond_0
    iput p1, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@7
    .line 161
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@c
    .line 162
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@f
    .line 163
    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 170
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lrn_1/CircleImageView;->setBorderColor(I)V

    #@f
    .line 171
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    #@0
    .line 243
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 244
    return-void

    #@5
    .line 247
    :cond_0
    iput-boolean p1, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@7
    .line 248
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@a
    .line 249
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    #@0
    .line 230
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 231
    return-void

    #@5
    .line 234
    :cond_0
    iput p1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@7
    .line 235
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@a
    .line 236
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    #@0
    .line 290
    iget-object v0, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 291
    return-void

    #@5
    .line 294
    :cond_0
    iput-object p1, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@7
    .line 295
    invoke-direct {p0}, Lrn_1/CircleImageView;->applyColorFilter()V

    #@a
    .line 296
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@d
    .line 297
    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    #@0
    .line 256
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 257
    return-void

    #@5
    .line 260
    :cond_0
    iput-boolean p1, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@7
    .line 261
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@a
    .line 262
    return-void
.end method

.method public setElevation2(F)V
    .locals 4

    #@0
    .line 99
    iput p1, p0, Lrn_1/CircleImageView;->mElevation:F

    #@2
    .line 100
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    div-float v1, p1, v1

    #@8
    const/4 v2, 0x0

    #@9
    const/high16 v3, -0x1000000

    #@b
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@e
    .line 101
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@11
    .line 103
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 195
    iget v0, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 196
    return-void

    #@5
    .line 199
    :cond_0
    iput p1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@7
    .line 200
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@c
    .line 201
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@f
    .line 202
    return-void
.end method

.method public setFillColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 222
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lrn_1/CircleImageView;->setFillColor(I)V

    #@f
    .line 223
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    #@0
    .line 266
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@3
    .line 267
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@6
    .line 268
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    #@0
    .line 272
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 273
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@6
    .line 274
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    #@0
    .line 278
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@3
    .line 279
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@6
    .line 280
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    #@0
    .line 284
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@3
    .line 285
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@6
    .line 286
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    #@0
    .line 113
    sget-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 116
    return-void

    #@5
    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object p1, v1, v2

    #@d
    const-string p1, "ScaleType %s not supported."

    #@f
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method
