.class public Lrn_1/CircleImageView;
.super Landroid/widget/ImageView;


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

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
    const-string v0, "\u06e8\u06e5"

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
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@e
    move-result v0

    #@f
    if-gtz v0, :cond_0

    #@11
    const-string v0, "\u06e1\u06df\u06e2"

    #@13
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    goto :goto_0

    #@18
    :cond_0
    const-string v0, "\u06e8\u06e5"

    #@1a
    goto :goto_1

    #@1b
    :sswitch_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1d
    sput-object v0, Lrn_1/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    #@1f
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@22
    move-result v0

    #@23
    if-ltz v0, :cond_1

    #@25
    const-string v0, "\u06e2\u06df\u06e0"

    #@27
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    :cond_1
    const-string v0, "\u06e7\u06e5"

    #@2e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :sswitch_3
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@35
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@37
    sput-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@39
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@3c
    move-result v0

    #@3d
    if-gtz v0, :cond_2

    #@3f
    const-string v0, "\u06e7\u06e4\u06e7"

    #@41
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@44
    move-result v0

    #@45
    goto :goto_0

    #@46
    :cond_2
    const-string v0, "\u06e7\u06e4\u06e7"

    #@48
    goto :goto_1

    #@49
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        0xdcde -> :sswitch_0
        0xdcfd -> :sswitch_3
        0x1ab243 -> :sswitch_1
        0x1ac5aa -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@4
    const-string v0, "\u06e1\u06e0\u06e0"

    #@6
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@d
    goto :goto_0

    #@e
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@11
    move-result v0

    #@12
    if-gtz v0, :cond_4

    #@14
    const-string v0, "\u06e7\u06df"

    #@16
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :sswitch_1
    const/high16 v0, -0x1000000

    #@1d
    iput v0, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@1f
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@22
    move-result v0

    #@23
    if-ltz v0, :cond_0

    #@25
    const-string v0, "\u06e0\u06e4\u06e8"

    #@27
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    const-string v0, "\u06e3\u06e7\u06e3"

    #@2e
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :sswitch_2
    new-instance v0, Landroid/graphics/Paint;

    #@35
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@38
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@3a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@3d
    move-result v0

    #@3e
    if-gtz v0, :cond_2

    #@40
    :cond_1
    const-string v0, "\u06e1\u06df\u06e3"

    #@42
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    goto :goto_0

    #@47
    :cond_2
    const-string v0, "\u06e8\u06e0\u06e0"

    #@49
    :goto_3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@4c
    move-result v0

    #@4d
    goto :goto_0

    #@4e
    :sswitch_3
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@50
    new-instance v0, Landroid/graphics/RectF;

    #@52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@55
    iput-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@57
    :cond_3
    const-string v0, "\u06e5\u06e5\u06e8"

    #@59
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@5c
    move-result v0

    #@5d
    goto :goto_0

    #@5e
    :cond_4
    const-string v0, "\u06e1\u06e0\u06e0"

    #@60
    goto :goto_1

    #@61
    :sswitch_4
    iput v1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@63
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@66
    move-result v0

    #@67
    if-lez v0, :cond_3

    #@69
    const-string v0, "\u06e0\u06e4\u06e8"

    #@6b
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@6e
    move-result v0

    #@6f
    goto :goto_0

    #@70
    :sswitch_5
    new-instance v0, Landroid/graphics/RectF;

    #@72
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@75
    iput-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@77
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@7a
    move-result v0

    #@7b
    if-ltz v0, :cond_5

    #@7d
    const-string v0, "\u06e8\u06e2\u06df"

    #@7f
    goto :goto_3

    #@80
    :cond_5
    const-string v0, "\u06e0\u06e0\u06e3"

    #@82
    goto :goto_3

    #@83
    :sswitch_6
    invoke-direct {p0}, Lrn_1/CircleImageView;->init()V

    #@86
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@89
    move-result v0

    #@8a
    if-ltz v0, :cond_1

    #@8c
    const-string v0, "\u06e5\u06e2\u06e3"

    #@8e
    goto :goto_2

    #@8f
    :sswitch_7
    new-instance v0, Landroid/graphics/Paint;

    #@91
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@94
    iput-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@96
    const-string v0, "\u06e7\u06e5\u06e7"

    #@98
    :goto_4
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@9b
    move-result v0

    #@9c
    goto/16 :goto_0

    #@9e
    :sswitch_8
    new-instance v0, Landroid/graphics/Paint;

    #@a0
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@a3
    iput-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@a5
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@a8
    move-result v0

    #@a9
    if-gtz v0, :cond_6

    #@ab
    const-string v0, "\u06e1\u06e0\u06e0"

    #@ad
    goto :goto_4

    #@ae
    :cond_6
    const-string v0, "\u06e8\u06e2\u06df"

    #@b0
    goto :goto_3

    #@b1
    :sswitch_9
    iput v1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@b3
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@b6
    move-result v0

    #@b7
    if-gtz v0, :cond_7

    #@b9
    const-string v0, "\u06e1\u06e8"

    #@bb
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@be
    move-result v0

    #@bf
    goto/16 :goto_0

    #@c1
    :cond_7
    const-string v0, "\u06e2\u06e8"

    #@c3
    goto/16 :goto_1

    #@c5
    :sswitch_a
    new-instance v0, Landroid/graphics/Matrix;

    #@c7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@ca
    iput-object v0, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@cc
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@cf
    move-result v0

    #@d0
    if-gtz v0, :cond_8

    #@d2
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@d5
    const-string v0, "\u06e8\u06e0\u06e0"

    #@d7
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@da
    move-result v0

    #@db
    goto/16 :goto_0

    #@dd
    :cond_8
    const-string v0, "\u06e5\u06e2\u06e3"

    #@df
    goto/16 :goto_1

    #@e1
    :sswitch_b
    return-void

    #@e2
    :sswitch_data_0
    .sparse-switch
        0xdc27 -> :sswitch_0
        0xdc46 -> :sswitch_6
        0x1aaae3 -> :sswitch_a
        0x1aab64 -> :sswitch_9
        0x1aae85 -> :sswitch_b
        0x1aaea1 -> :sswitch_3
        0x1ab6ff -> :sswitch_4
        0x1abde6 -> :sswitch_2
        0x1abe48 -> :sswitch_5
        0x1ac5c9 -> :sswitch_1
        0x1ac8e8 -> :sswitch_8
        0x1ac925 -> :sswitch_7
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lrn_1/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    #@0
    const/high16 v2, -0x1000000

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    const-string v0, "\u06e2\u06e4\u06df"

    #@8
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@f
    goto :goto_0

    #@10
    :sswitch_0
    new-instance v0, Landroid/graphics/Paint;

    #@12
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@15
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@17
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1a
    move-result v0

    #@1b
    if-ltz v0, :cond_c

    #@1d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@20
    const-string v0, "\u06e0\u06df\u06e2"

    #@22
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :sswitch_1
    iput v1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@29
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@2c
    move-result v0

    #@2d
    if-gtz v0, :cond_0

    #@2f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@32
    const-string v0, "\u06e7\u06e0\u06e0"

    #@34
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :cond_0
    const-string v0, "\u06e8\u06e3\u06df"

    #@3b
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@3e
    move-result v0

    #@3f
    goto :goto_0

    #@40
    :sswitch_2
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@43
    move-result v0

    #@44
    if-gtz v0, :cond_1

    #@46
    const-string v0, "\u06e5\u06e5\u06e2"

    #@48
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4b
    move-result v0

    #@4c
    goto :goto_0

    #@4d
    :cond_1
    const-string v0, "\u06e2\u06e4\u06df"

    #@4f
    goto :goto_2

    #@50
    :sswitch_3
    iput-boolean v1, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@52
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@55
    move-result v0

    #@56
    if-gtz v0, :cond_2

    #@58
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@5b
    const-string v0, "\u06e2\u06e4\u06df"

    #@5d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@60
    move-result v0

    #@61
    goto :goto_0

    #@62
    :cond_2
    const-string v0, "\u06e7\u06e0\u06e0"

    #@64
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@67
    move-result v0

    #@68
    goto :goto_0

    #@69
    :sswitch_4
    iput v2, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@6b
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@6e
    move-result v0

    #@6f
    if-gtz v0, :cond_3

    #@71
    const-string v0, "\u06df\u06e6"

    #@73
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@76
    move-result v0

    #@77
    goto :goto_0

    #@78
    :cond_3
    const-string v0, "\u06e6\u06e2\u06df"

    #@7a
    goto :goto_2

    #@7b
    :sswitch_5
    new-instance v0, Landroid/graphics/Paint;

    #@7d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@80
    iput-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@82
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@85
    move-result v0

    #@86
    if-gtz v0, :cond_4

    #@88
    const-string v0, "\u06e5\u06df\u06e1"

    #@8a
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@8d
    move-result v0

    #@8e
    goto/16 :goto_0

    #@90
    :cond_4
    const-string v0, "\u06e6\u06e3\u06e8"

    #@92
    goto :goto_1

    #@93
    :sswitch_6
    iput v1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@95
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@98
    move-result v0

    #@99
    if-ltz v0, :cond_5

    #@9b
    const-string v0, "\u06e6\u06e3\u06e8"

    #@9d
    :goto_3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@a0
    move-result v0

    #@a1
    goto/16 :goto_0

    #@a3
    :cond_5
    const-string v0, "\u06e7\u06e3\u06e4"

    #@a5
    goto :goto_3

    #@a6
    :sswitch_7
    new-instance v0, Landroid/graphics/Matrix;

    #@a8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@ab
    iput-object v0, p0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@ad
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@b0
    move-result v0

    #@b1
    if-gtz v0, :cond_6

    #@b3
    const-string v0, "\u06e6\u06e2\u06df"

    #@b5
    :goto_4
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@b8
    move-result v0

    #@b9
    goto/16 :goto_0

    #@bb
    :cond_6
    const-string v0, "\u06df\u06e6"

    #@bd
    goto :goto_2

    #@be
    :sswitch_8
    new-instance v0, Landroid/graphics/RectF;

    #@c0
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@c3
    iput-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@c5
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@c8
    move-result v0

    #@c9
    if-ltz v0, :cond_7

    #@cb
    const-string v0, "\u06e8\u06e0\u06e8"

    #@cd
    goto/16 :goto_1

    #@cf
    :cond_7
    const-string v0, "\u06e5\u06df\u06e1"

    #@d1
    goto :goto_3

    #@d2
    :sswitch_9
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@d4
    new-instance v0, Landroid/graphics/RectF;

    #@d6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@d9
    iput-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@db
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@de
    move-result v0

    #@df
    if-gtz v0, :cond_8

    #@e1
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@e4
    const-string v0, "\u06e5\u06e6\u06e5"

    #@e6
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@e9
    move-result v0

    #@ea
    goto/16 :goto_0

    #@ec
    :cond_8
    const-string v0, "\u06e4\u06e2\u06e4"

    #@ee
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@f1
    move-result v0

    #@f2
    goto/16 :goto_0

    #@f4
    :sswitch_a
    iput v2, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@f6
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@f9
    move-result v0

    #@fa
    if-gtz v0, :cond_9

    #@fc
    const-string v0, "\u06e8\u06e5\u06e3"

    #@fe
    :goto_6
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@101
    move-result v0

    #@102
    goto/16 :goto_0

    #@104
    :cond_9
    const-string v0, "\u06e0\u06df\u06e2"

    #@106
    goto :goto_6

    #@107
    :sswitch_b
    iput v1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@109
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@10c
    move-result v0

    #@10d
    if-ltz v0, :cond_a

    #@10f
    const-string v0, "\u06e8\u06e3\u06df"

    #@111
    goto :goto_5

    #@112
    :cond_a
    const-string v0, "\u06e8\u06e0\u06e8"

    #@114
    goto :goto_3

    #@115
    :sswitch_c
    invoke-direct {p0}, Lrn_1/CircleImageView;->init()V

    #@118
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@11b
    move-result v0

    #@11c
    if-gtz v0, :cond_b

    #@11e
    const-string v0, "\u06e3\u06e4\u06e4"

    #@120
    :goto_7
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@123
    move-result v0

    #@124
    goto/16 :goto_0

    #@126
    :cond_b
    const-string v0, "\u06e3\u06e4\u06e4"

    #@128
    goto :goto_7

    #@129
    :cond_c
    const-string v0, "\u06e8\u06e5\u06e3"

    #@12b
    goto/16 :goto_2

    #@12d
    :sswitch_d
    new-instance v0, Landroid/graphics/Paint;

    #@12f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@132
    iput-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@134
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@137
    move-result v0

    #@138
    if-ltz v0, :cond_d

    #@13a
    const-string v0, "\u06e2\u06e3\u06e5"

    #@13c
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@13f
    move-result v0

    #@140
    goto/16 :goto_0

    #@142
    :cond_d
    const-string v0, "\u06e8\u06e1\u06e6"

    #@144
    goto/16 :goto_1

    #@146
    :sswitch_e
    iput v1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@148
    const-string v0, "\u06e5\u06e6\u06e5"

    #@14a
    goto/16 :goto_4

    #@14c
    :sswitch_f
    return-void

    #@14d
    nop

    #@14e
    :sswitch_data_0
    .sparse-switch
        0xdbe7 -> :sswitch_0
        0x1aaac3 -> :sswitch_3
        0x1ab2c4 -> :sswitch_2
        0x1ab2dd -> :sswitch_9
        0x1ab6a3 -> :sswitch_f
        0x1aba26 -> :sswitch_8
        0x1abd87 -> :sswitch_7
        0x1abe64 -> :sswitch_1
        0x1ac1a3 -> :sswitch_e
        0x1ac1cb -> :sswitch_d
        0x1ac527 -> :sswitch_6
        0x1ac588 -> :sswitch_c
        0x1ac8f0 -> :sswitch_a
        0x1ac90d -> :sswitch_4
        0x1ac944 -> :sswitch_b
        0x1ac986 -> :sswitch_5
    .end sparse-switch
.end method

.method private applyColorFilter()V
    .locals 2

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "\u06e5\u06e7\u06e5"

    #@3
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    :goto_0
    sparse-switch v1, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    iget-object v1, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@d
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@10
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@13
    move-result v1

    #@14
    if-ltz v1, :cond_3

    #@16
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@19
    const-string v1, "\u06e6\u06e2\u06e0"

    #@1b
    invoke-static {v1}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1e
    move-result v1

    #@1f
    goto :goto_0

    #@20
    :sswitch_1
    if-eqz v0, :cond_1

    #@22
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@25
    move-result v1

    #@26
    if-gtz v1, :cond_0

    #@28
    const-string v1, "\u06e5\u06e7\u06e5"

    #@2a
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2d
    move-result v1

    #@2e
    goto :goto_0

    #@2f
    :cond_0
    const-string v1, "\u06e0\u06e6\u06e4"

    #@31
    :goto_1
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@34
    move-result v1

    #@35
    goto :goto_0

    #@36
    :cond_1
    :sswitch_2
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@39
    move-result v1

    #@3a
    if-gtz v1, :cond_2

    #@3c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@3f
    const-string v1, "\u06df\u06e0\u06e3"

    #@41
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@44
    move-result v1

    #@45
    goto :goto_0

    #@46
    :cond_2
    const-string v1, "\u06e8\u06df\u06df"

    #@48
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@4b
    move-result v1

    #@4c
    goto :goto_0

    #@4d
    :cond_3
    const-string v1, "\u06e8\u06df\u06df"

    #@4f
    invoke-static {v1}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@52
    move-result v1

    #@53
    goto :goto_0

    #@54
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@57
    move-result v1

    #@58
    if-ltz v1, :cond_4

    #@5a
    const-string v1, "\u06e0\u06e1"

    #@5c
    goto :goto_1

    #@5d
    :cond_4
    const-string v1, "\u06e5\u06e7\u06e5"

    #@5f
    goto :goto_1

    #@60
    :sswitch_4
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@62
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@64
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@67
    move-result v1

    #@68
    if-gtz v1, :cond_5

    #@6a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@6d
    const-string v1, "\u06e6\u06e1\u06e0"

    #@6f
    invoke-static {v1}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@72
    move-result v1

    #@73
    goto :goto_0

    #@74
    :cond_5
    const-string v1, "\u06e6\u06e1\u06e0"

    #@76
    goto :goto_1

    #@77
    :sswitch_5
    return-void

    #@78
    :sswitch_data_0
    .sparse-switch
        0x1aab9e -> :sswitch_0
        0x1abe83 -> :sswitch_4
        0x1ac185 -> :sswitch_1
        0x1ac1a4 -> :sswitch_3
        0x1ac8c8 -> :sswitch_5
        0x1ac8e9 -> :sswitch_2
    .end sparse-switch
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 10

    #@0
    const/high16 v9, 0x40000000    # 2.0f

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    const-string v1, "\u06e4\u06e6\u06e5"

    #@6
    invoke-static {v1}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@9
    move-result v6

    #@a
    move v3, v0

    #@b
    move v5, v0

    #@c
    move v1, v0

    #@d
    move v7, v8

    #@e
    move v4, v8

    #@f
    move v2, v8

    #@10
    :goto_0
    sparse-switch v6, :sswitch_data_0

    #@13
    goto :goto_0

    #@14
    :sswitch_0
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingTop()I

    #@17
    move-result v0

    #@18
    int-to-float v0, v0

    #@19
    sub-int v6, v5, v3

    #@1b
    int-to-float v6, v6

    #@1c
    div-float/2addr v6, v9

    #@1d
    add-float v7, v0, v6

    #@1f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@22
    move-result v0

    #@23
    if-gtz v0, :cond_5

    #@25
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@28
    const-string v0, "\u06e8\u06e5\u06df"

    #@2a
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2d
    move-result v0

    #@2e
    move v6, v0

    #@2f
    goto :goto_0

    #@30
    :sswitch_1
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@33
    move-result v0

    #@34
    if-ltz v0, :cond_0

    #@36
    const-string v0, "\u06e0\u06df\u06df"

    #@38
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@3b
    move-result v0

    #@3c
    move v6, v0

    #@3d
    goto :goto_0

    #@3e
    :cond_0
    const-string v0, "\u06e4\u06e6\u06e5"

    #@40
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@43
    move-result v0

    #@44
    move v6, v0

    #@45
    goto :goto_0

    #@46
    :sswitch_2
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v3

    #@4a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@4d
    move-result v0

    #@4e
    if-gtz v0, :cond_1

    #@50
    const-string v0, "\u06e2\u06df\u06e1"

    #@52
    :goto_3
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@55
    move-result v0

    #@56
    move v6, v0

    #@57
    goto :goto_0

    #@58
    :cond_1
    const-string v0, "\u06e2\u06df\u06e1"

    #@5a
    goto :goto_3

    #@5b
    :sswitch_3
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingLeft()I

    #@5e
    move-result v0

    #@5f
    int-to-float v0, v0

    #@60
    sub-int v2, v1, v3

    #@62
    int-to-float v2, v2

    #@63
    div-float/2addr v2, v9

    #@64
    add-float/2addr v2, v0

    #@65
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@68
    move-result v0

    #@69
    if-gtz v0, :cond_2

    #@6b
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@6e
    const-string v0, "\u06e6\u06e0\u06e8"

    #@70
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@73
    move-result v0

    #@74
    move v6, v0

    #@75
    goto :goto_0

    #@76
    :cond_2
    const-string v0, "\u06e1\u06e6\u06df"

    #@78
    goto :goto_2

    #@79
    :sswitch_4
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@7b
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getWidth()I

    #@7e
    move-result v0

    #@7f
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingLeft()I

    #@82
    move-result v1

    #@83
    sub-int/2addr v0, v1

    #@84
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingRight()I

    #@87
    move-result v1

    #@88
    sub-int v1, v0, v1

    #@8a
    const-string v0, "\u06e6\u06e0\u06e8"

    #@8c
    goto :goto_2

    #@8d
    :sswitch_5
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getHeight()I

    #@90
    move-result v0

    #@91
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingTop()I

    #@94
    move-result v5

    #@95
    sub-int/2addr v0, v5

    #@96
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getPaddingBottom()I

    #@99
    move-result v5

    #@9a
    sub-int/2addr v0, v5

    #@9b
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@9e
    move-result v5

    #@9f
    if-gtz v5, :cond_3

    #@a1
    const-string v5, "\u06e1\u06e6\u06df"

    #@a3
    invoke-static {v5}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@a6
    move-result v6

    #@a7
    move v5, v0

    #@a8
    goto/16 :goto_0

    #@aa
    :cond_3
    const-string v5, "\u06e3\u06e5\u06e7"

    #@ac
    invoke-static {v5}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@af
    move-result v6

    #@b0
    move v5, v0

    #@b1
    goto/16 :goto_0

    #@b3
    :sswitch_6
    int-to-float v4, v3

    #@b4
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@b7
    move-result v0

    #@b8
    if-gtz v0, :cond_4

    #@ba
    const-string v0, "\u06e4\u06e6\u06e5"

    #@bc
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@bf
    move-result v0

    #@c0
    move v6, v0

    #@c1
    goto/16 :goto_0

    #@c3
    :cond_4
    const-string v0, "\u06e8\u06e5\u06df"

    #@c5
    goto :goto_3

    #@c6
    :sswitch_7
    new-instance v0, Landroid/graphics/RectF;

    #@c8
    add-float v1, v2, v4

    #@ca
    add-float v3, v4, v7

    #@cc
    invoke-direct {v0, v2, v7, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@cf
    return-object v0

    #@d0
    :cond_5
    const-string v0, "\u06e4\u06e8\u06e3"

    #@d2
    goto/16 :goto_1

    #@d4
    :sswitch_data_0
    .sparse-switch
        0x1aaf5a -> :sswitch_0
        0x1ab244 -> :sswitch_3
        0x1ab6c5 -> :sswitch_2
        0x1abaa3 -> :sswitch_4
        0x1abadf -> :sswitch_6
        0x1ac16e -> :sswitch_5
        0x1ac50a -> :sswitch_1
        0x1ac982 -> :sswitch_7
    .end sparse-switch
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10

    #@0
    const/high16 v9, 0x40000000    # 2.0f

    #@2
    const/4 v5, 0x0

    #@3
    const-string v0, "\u06e1\u06e4\u06e4"

    #@5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    move-object v3, v5

    #@a
    move-object v2, v5

    #@b
    move-object v4, v5

    #@c
    move-object v1, v5

    #@d
    move v6, v0

    #@e
    :goto_0
    sparse-switch v6, :sswitch_data_0

    #@11
    goto :goto_0

    #@12
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@15
    move-result v0

    #@16
    if-gtz v0, :cond_5

    #@18
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1b
    const-string v0, "\u06e7\u06e2\u06e7"

    #@1d
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    move v6, v0

    #@22
    goto :goto_0

    #@23
    :cond_0
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@26
    move-result v0

    #@27
    if-gtz v0, :cond_1

    #@29
    const-string v0, "\u06e3\u06e1\u06e4"

    #@2b
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@2e
    move-result v0

    #@2f
    move v6, v0

    #@30
    goto :goto_0

    #@31
    :cond_1
    const-string v0, "\u06e2\u06e0\u06df"

    #@33
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@36
    move-result v0

    #@37
    move v6, v0

    #@38
    goto :goto_0

    #@39
    :sswitch_2
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3c
    move-result v0

    #@3d
    if-ltz v0, :cond_2

    #@3f
    const-string v0, "\u06e3\u06e0\u06e1"

    #@41
    move-object v2, v1

    #@42
    :goto_3
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    move v6, v0

    #@47
    goto :goto_0

    #@48
    :cond_2
    const-string v0, "\u06e2\u06e7\u06e1"

    #@4a
    move-object v2, v1

    #@4b
    :goto_4
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@4e
    move-result v0

    #@4f
    move v6, v0

    #@50
    goto :goto_0

    #@51
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@54
    move-result v0

    #@55
    if-ltz v0, :cond_3

    #@57
    const-string v0, "\u06e4\u06df\u06e8"

    #@59
    goto :goto_4

    #@5a
    :cond_3
    const-string v0, "\u06e1\u06e4\u06e4"

    #@5c
    goto :goto_4

    #@5d
    :sswitch_4
    move-object v2, v5

    #@5e
    :goto_5
    :sswitch_5
    return-object v2

    #@5f
    :sswitch_6
    const/4 v0, 0x2

    #@60
    const/4 v4, 0x2

    #@61
    :try_start_0
    sget-object v6, Lrn_1/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    #@63
    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    move-result-object v4

    #@67
    const-string v0, "\u06e8\u06e7\u06e4"

    #@69
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6c
    move-result v0

    #@6d
    move v6, v0

    #@6e
    goto :goto_0

    #@6f
    :sswitch_7
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    #@71
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@74
    move-result-object v2

    #@75
    goto :goto_5

    #@76
    :sswitch_8
    const/4 v0, 0x0

    #@77
    const/4 v6, 0x0

    #@78
    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    #@7b
    move-result v7

    #@7c
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    #@7f
    move-result v8

    #@80
    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@83
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@86
    move-result v0

    #@87
    if-gtz v0, :cond_4

    #@89
    const-string v0, "\u06e2\u06e0\u06df"

    #@8b
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@8e
    move-result v0

    #@8f
    move v6, v0

    #@90
    goto/16 :goto_0

    #@92
    :cond_4
    const-string v0, "\u06e1\u06e7"

    #@94
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@97
    move-result v0

    #@98
    move v6, v0

    #@99
    goto/16 :goto_0

    #@9b
    :cond_5
    const-string v0, "\u06e2\u06e7\u06e1"

    #@9d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@a0
    move-result v0

    #@a1
    move v6, v0

    #@a2
    goto/16 :goto_0

    #@a4
    :sswitch_9
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@a6
    if-eqz v0, :cond_0

    #@a8
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@ab
    move-result v0

    #@ac
    if-ltz v0, :cond_6

    #@ae
    const-string v0, "\u06e8\u06e5\u06e2"

    #@b0
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@b3
    move-result v0

    #@b4
    move v6, v0

    #@b5
    goto/16 :goto_0

    #@b7
    :cond_6
    const-string v0, "\u06e7\u06e4\u06e1"

    #@b9
    goto/16 :goto_1

    #@bb
    :sswitch_a
    const-string v0, "\u06e3\u06e8\u06e7"

    #@bd
    goto :goto_3

    #@be
    :sswitch_b
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@c1
    move-result v0

    #@c2
    iget v1, p0, Lrn_1/CircleImageView;->mElevation:F

    #@c4
    mul-float/2addr v1, v9

    #@c5
    float-to-int v1, v1

    #@c6
    sub-int/2addr v0, v1

    #@c7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@ca
    move-result v1

    #@cb
    iget v6, p0, Lrn_1/CircleImageView;->mElevation:F

    #@cd
    mul-float/2addr v6, v9

    #@ce
    float-to-int v6, v6

    #@cf
    sub-int/2addr v1, v6

    #@d0
    sget-object v6, Lrn_1/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    #@d2
    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@d5
    move-result-object v1

    #@d6
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d9
    move-result v0

    #@da
    if-gtz v0, :cond_7

    #@dc
    const-string v0, "\u06e3\u06e8\u06e7"

    #@de
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@e1
    move-result v0

    #@e2
    move v6, v0

    #@e3
    goto/16 :goto_0

    #@e5
    :cond_7
    const-string v0, "\u06e1\u06e0\u06e6"

    #@e7
    goto/16 :goto_2

    #@e9
    :sswitch_c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@ec
    move-result v0

    #@ed
    if-gtz v0, :cond_8

    #@ef
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@f2
    const-string v0, "\u06e1\u06e1\u06e7"

    #@f4
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@f7
    move-result v0

    #@f8
    move v6, v0

    #@f9
    goto/16 :goto_0

    #@fb
    :cond_8
    const-string v0, "\u06e3\u06e7\u06e5"

    #@fd
    goto/16 :goto_1

    #@ff
    :catch_0
    move-exception v0

    #@100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@103
    move-object v2, v5

    #@104
    goto/16 :goto_5

    #@106
    :sswitch_d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@109
    move-result v0

    #@10a
    if-ltz v0, :cond_a

    #@10c
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@10f
    move-object v0, v3

    #@110
    move-object v2, v4

    #@111
    :cond_9
    const-string v3, "\u06e5\u06e0\u06e4"

    #@113
    invoke-static {v3}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@116
    move-result v6

    #@117
    move-object v3, v0

    #@118
    goto/16 :goto_0

    #@11a
    :cond_a
    const-string v0, "\u06e1\u06e4\u06e5"

    #@11c
    move-object v2, v4

    #@11d
    :goto_6
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@120
    move-result v0

    #@121
    move v6, v0

    #@122
    goto/16 :goto_0

    #@124
    :cond_b
    :sswitch_e
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@127
    move-result v0

    #@128
    if-ltz v0, :cond_c

    #@12a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@12d
    const-string v0, "\u06e7\u06df"

    #@12f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@132
    move-result v0

    #@133
    move v6, v0

    #@134
    goto/16 :goto_0

    #@136
    :cond_c
    const-string v0, "\u06e8\u06e5\u06e2"

    #@138
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@13b
    move-result v0

    #@13c
    move v6, v0

    #@13d
    goto/16 :goto_0

    #@13f
    :sswitch_f
    :try_start_3
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@142
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@145
    move-result v0

    #@146
    if-gtz v0, :cond_d

    #@148
    const-string v0, "\u06e7\u06e4\u06e1"

    #@14a
    :goto_7
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@14d
    move-result v0

    #@14e
    move v6, v0

    #@14f
    goto/16 :goto_0

    #@151
    :cond_d
    const-string v0, "\u06e3\u06e7\u06e5"

    #@153
    goto :goto_7

    #@154
    :sswitch_10
    :try_start_4
    new-instance v0, Landroid/graphics/Canvas;

    #@156
    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@159
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@15c
    move-result v3

    #@15d
    if-gtz v3, :cond_9

    #@15f
    const-string v3, "\u06e1\u06df\u06e5"

    #@161
    invoke-static {v3}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@164
    move-result v6

    #@165
    move-object v3, v0

    #@166
    goto/16 :goto_0

    #@168
    :sswitch_11
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@16a
    if-nez p1, :cond_e

    #@16c
    const-string v0, "\u06e1\u06df\u06e5"

    #@16e
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@171
    move-result v0

    #@172
    move v6, v0

    #@173
    goto/16 :goto_0

    #@175
    :sswitch_12
    :try_start_5
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@177
    if-eqz v0, :cond_b

    #@179
    const-string v0, "\u06e3\u06e6\u06e3"

    #@17b
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@17e
    move-result v0

    #@17f
    move v6, v0

    #@180
    goto/16 :goto_0

    #@182
    :cond_e
    :sswitch_13
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@185
    move-result v0

    #@186
    if-gtz v0, :cond_f

    #@188
    const-string v0, "\u06e6\u06e2\u06e6"

    #@18a
    goto :goto_6

    #@18b
    :cond_f
    const-string v0, "\u06e6\u06e6\u06e4"

    #@18d
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@190
    move-result v0

    #@191
    move v6, v0

    #@192
    goto/16 :goto_0

    #@194
    :sswitch_data_0
    .sparse-switch
        0xdbe5 -> :sswitch_0
        0xdc26 -> :sswitch_f
        0x1aabb8 -> :sswitch_e
        0x1aae87 -> :sswitch_4
        0x1aaea7 -> :sswitch_2
        0x1aaf21 -> :sswitch_11
        0x1aaf22 -> :sswitch_a
        0x1aaf9a -> :sswitch_1
        0x1ab261 -> :sswitch_12
        0x1ab33c -> :sswitch_10
        0x1ab624 -> :sswitch_c
        0x1ab6e0 -> :sswitch_6
        0x1ab701 -> :sswitch_5
        0x1ab722 -> :sswitch_0
        0x1aba9f -> :sswitch_3
        0x1abda9 -> :sswitch_8
        0x1ac224 -> :sswitch_9
        0x1ac5a4 -> :sswitch_7
        0x1ac985 -> :sswitch_b
        0x1ac9c5 -> :sswitch_d
        0x1ac9c6 -> :sswitch_13
    .end sparse-switch
.end method

.method private init()V
    .locals 1

    #@0
    const-string v0, "\u06e4\u06e7\u06df"

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
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lrn_1/CircleImageView;->mSetupPending:Z

    #@d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@10
    move-result v0

    #@11
    if-ltz v0, :cond_1

    #@13
    const-string v0, "\u06e4\u06e4\u06e8"

    #@15
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :sswitch_1
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Lrn_1/CircleImageView;->mReady:Z

    #@1d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@20
    move-result v0

    #@21
    if-gtz v0, :cond_0

    #@23
    const-string v0, "\u06e6\u06e2\u06df"

    #@25
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    :cond_0
    const-string v0, "\u06e0\u06e3\u06df"

    #@2c
    goto :goto_1

    #@2d
    :cond_1
    const-string v0, "\u06e8\u06e1\u06e5"

    #@2f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    :sswitch_2
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mSetupPending:Z

    #@36
    if-eqz v0, :cond_4

    #@38
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@3b
    move-result v0

    #@3c
    if-ltz v0, :cond_2

    #@3e
    const-string v0, "\u06e0\u06e3\u06df"

    #@40
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@43
    move-result v0

    #@44
    goto :goto_0

    #@45
    :cond_2
    const-string v0, "\u06e6\u06e4\u06e3"

    #@47
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4a
    move-result v0

    #@4b
    goto :goto_0

    #@4c
    :sswitch_3
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@4f
    move-result v0

    #@50
    if-gtz v0, :cond_3

    #@52
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@55
    const-string v0, "\u06e1\u06df\u06e7"

    #@57
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5a
    move-result v0

    #@5b
    goto :goto_0

    #@5c
    :cond_3
    const-string v0, "\u06e4\u06e7\u06df"

    #@5e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@61
    move-result v0

    #@62
    goto :goto_0

    #@63
    :sswitch_4
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@65
    sget-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@67
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@6a
    const-string v0, "\u06e6\u06e2\u06df"

    #@6c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@6f
    move-result v0

    #@70
    goto :goto_0

    #@71
    :sswitch_5
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@74
    const-string v0, "\u06e3\u06e2"

    #@76
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@79
    move-result v0

    #@7a
    goto :goto_0

    #@7b
    :cond_4
    :sswitch_6
    const-string v0, "\u06e8\u06e1\u06e5"

    #@7d
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@80
    move-result v0

    #@81
    goto :goto_0

    #@82
    :sswitch_7
    return-void

    #@83
    nop

    #@84
    :sswitch_data_0
    .sparse-switch
        0xdc5f -> :sswitch_0
        0x1aab3c -> :sswitch_2
        0x1ab9eb -> :sswitch_3
        0x1aba68 -> :sswitch_6
        0x1ababc -> :sswitch_4
        0x1ac1a3 -> :sswitch_1
        0x1ac1e5 -> :sswitch_5
        0x1ac90c -> :sswitch_7
    .end sparse-switch
.end method

.method private initializeBitmap()V
    .locals 1

    #@0
    const-string v0, "\u06e3\u06e1\u06e1"

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
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@d
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@10
    move-result v0

    #@11
    if-gtz v0, :cond_5

    #@13
    const-string v0, "\u06df\u06df\u06e7"

    #@15
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :sswitch_1
    const-string v0, "\u06e3\u06e1\u06e1"

    #@1c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    :sswitch_2
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@24
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@27
    move-result v0

    #@28
    if-gtz v0, :cond_0

    #@2a
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@2d
    const-string v0, "\u06e3\u06e1\u06e1"

    #@2f
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    :cond_0
    const-string v0, "\u06e4\u06e4\u06e4"

    #@36
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@39
    move-result v0

    #@3a
    goto :goto_0

    #@3b
    :sswitch_3
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@3d
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@3f
    if-eqz v0, :cond_1

    #@41
    const-string v0, "\u06df\u06e1"

    #@43
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@46
    move-result v0

    #@47
    goto :goto_0

    #@48
    :cond_1
    :sswitch_4
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@4b
    move-result v0

    #@4c
    if-ltz v0, :cond_2

    #@4e
    const-string v0, "\u06e6\u06df\u06e2"

    #@50
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@53
    move-result v0

    #@54
    goto :goto_0

    #@55
    :cond_2
    const-string v0, "\u06e1\u06e5"

    #@57
    goto :goto_2

    #@58
    :sswitch_5
    const-string v0, "\u06e6\u06e2\u06e3"

    #@5a
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5d
    move-result v0

    #@5e
    goto :goto_0

    #@5f
    :sswitch_6
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@62
    move-result-object v0

    #@63
    invoke-direct {p0, v0}, Lrn_1/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@66
    move-result-object v0

    #@67
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@69
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@6c
    move-result v0

    #@6d
    if-gtz v0, :cond_3

    #@6f
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@72
    const-string v0, "\u06e7\u06e7\u06df"

    #@74
    goto :goto_1

    #@75
    :cond_3
    const-string v0, "\u06e6\u06e2\u06e3"

    #@77
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@7a
    move-result v0

    #@7b
    goto :goto_0

    #@7c
    :sswitch_7
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@7f
    move-result v0

    #@80
    if-gtz v0, :cond_4

    #@82
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@85
    const-string v0, "\u06e4\u06e4\u06e7"

    #@87
    :goto_3
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@8a
    move-result v0

    #@8b
    goto/16 :goto_0

    #@8d
    :cond_4
    const-string v0, "\u06e2\u06e3\u06e3"

    #@8f
    goto :goto_3

    #@90
    :cond_5
    const-string v0, "\u06e4\u06e4\u06e7"

    #@92
    goto :goto_1

    #@93
    :sswitch_8
    return-void

    #@94
    :sswitch_data_0
    .sparse-switch
        0xdbe2 -> :sswitch_0
        0xdc24 -> :sswitch_6
        0x1aa707 -> :sswitch_4
        0x1ab2c2 -> :sswitch_5
        0x1ab643 -> :sswitch_3
        0x1ab6a2 -> :sswitch_1
        0x1aba64 -> :sswitch_8
        0x1aba67 -> :sswitch_7
        0x1ac1a7 -> :sswitch_2
        0x1ac5ff -> :sswitch_5
    .end sparse-switch
.end method

.method private setup()V
    .locals 8

    #@0
    const/high16 v7, 0x3f800000    # 1.0f

    #@2
    const/4 v6, 0x1

    #@3
    const/high16 v5, 0x40000000    # 2.0f

    #@5
    const/4 v1, 0x0

    #@6
    const-string v0, "\u06df\u06e7\u06e4"

    #@8
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@f
    goto :goto_0

    #@10
    :sswitch_0
    new-instance v0, Landroid/graphics/BitmapShader;

    #@12
    iget-object v2, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@14
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@16
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@18
    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@1b
    iput-object v0, p0, Lrn_1/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@1d
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@1f
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@22
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@25
    move-result v0

    #@26
    if-gtz v0, :cond_4

    #@28
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2b
    const-string v0, "\u06df\u06e7\u06e4"

    #@2d
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    goto :goto_0

    #@32
    :sswitch_1
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@34
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@37
    move-result v0

    #@38
    div-float/2addr v0, v5

    #@39
    iget-object v2, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@3b
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@3e
    move-result v2

    #@3f
    div-float/2addr v2, v5

    #@40
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@43
    move-result v0

    #@44
    iput v0, p0, Lrn_1/CircleImageView;->mDrawableRadius:F

    #@46
    invoke-direct {p0}, Lrn_1/CircleImageView;->applyColorFilter()V

    #@49
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@4c
    move-result v0

    #@4d
    if-gtz v0, :cond_0

    #@4f
    const-string v0, "\u06e6\u06e2\u06df"

    #@51
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@54
    move-result v0

    #@55
    goto :goto_0

    #@56
    :cond_0
    const-string v0, "\u06e6\u06e7\u06e8"

    #@58
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@5b
    move-result v0

    #@5c
    goto :goto_0

    #@5d
    :sswitch_2
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@5f
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@62
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@64
    iget v2, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@66
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@69
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@6c
    move-result v0

    #@6d
    if-ltz v0, :cond_2

    #@6f
    :cond_1
    const-string v0, "\u06e4\u06e8\u06e2"

    #@71
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@74
    move-result v0

    #@75
    goto :goto_0

    #@76
    :cond_2
    const-string v0, "\u06df\u06e3\u06e1"

    #@78
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@7b
    move-result v0

    #@7c
    goto :goto_0

    #@7d
    :sswitch_3
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@7f
    int-to-float v2, v1

    #@80
    sub-float/2addr v2, v7

    #@81
    int-to-float v3, v1

    #@82
    sub-float/2addr v3, v7

    #@83
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    #@86
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@89
    move-result v0

    #@8a
    if-ltz v0, :cond_3

    #@8c
    const-string v0, "\u06df\u06e3\u06e2"

    #@8e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@91
    move-result v0

    #@92
    goto/16 :goto_0

    #@94
    :cond_3
    const-string v0, "\u06e4\u06e0\u06e4"

    #@96
    goto :goto_2

    #@97
    :cond_4
    const-string v0, "\u06df\u06e3\u06e2"

    #@99
    goto :goto_1

    #@9a
    :sswitch_4
    iget v1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@9c
    if-lez v1, :cond_f

    #@9e
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@a1
    move-result v0

    #@a2
    if-gtz v0, :cond_5

    #@a4
    const-string v0, "\u06e5\u06e6\u06e5"

    #@a6
    :goto_3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@a9
    move-result v0

    #@aa
    goto/16 :goto_0

    #@ac
    :cond_5
    const-string v0, "\u06e0\u06e7\u06e3"

    #@ae
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@b1
    move-result v0

    #@b2
    goto/16 :goto_0

    #@b4
    :sswitch_5
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@b6
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@b9
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@bb
    iget v2, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@bd
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@c0
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@c3
    move-result v0

    #@c4
    if-gtz v0, :cond_6

    #@c6
    const-string v0, "\u06e3\u06e5\u06e8"

    #@c8
    :goto_4
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@cb
    move-result v0

    #@cc
    goto/16 :goto_0

    #@ce
    :cond_6
    const-string v0, "\u06e1\u06e5\u06df"

    #@d0
    goto :goto_4

    #@d1
    :cond_7
    :sswitch_6
    const-string v0, "\u06e2\u06e8\u06e4"

    #@d3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@d6
    move-result v0

    #@d7
    goto/16 :goto_0

    #@d9
    :cond_8
    :sswitch_7
    const-string v0, "\u06df\u06e1\u06e2"

    #@db
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@de
    move-result v0

    #@df
    goto/16 :goto_0

    #@e1
    :sswitch_8
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@e3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@e6
    move-result v0

    #@e7
    iput v0, p0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@e9
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@eb
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@ee
    move-result v0

    #@ef
    iput v0, p0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@f1
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@f4
    move-result v0

    #@f5
    if-ltz v0, :cond_9

    #@f7
    const-string v0, "\u06e1\u06e5\u06df"

    #@f9
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@fc
    move-result v0

    #@fd
    goto/16 :goto_0

    #@ff
    :cond_9
    const-string v0, "\u06e0\u06e6\u06e4"

    #@101
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@104
    move-result v0

    #@105
    goto/16 :goto_0

    #@107
    :sswitch_9
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@10a
    move-result v0

    #@10b
    if-gtz v0, :cond_a

    #@10d
    const-string v0, "\u06df\u06e0\u06e4"

    #@10f
    goto/16 :goto_2

    #@111
    :cond_a
    const-string v0, "\u06df\u06e7\u06e4"

    #@113
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@116
    move-result v0

    #@117
    goto/16 :goto_0

    #@119
    :sswitch_a
    invoke-direct {p0}, Lrn_1/CircleImageView;->updateShaderMatrix()V

    #@11c
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@11f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@122
    move-result v0

    #@123
    if-ltz v0, :cond_b

    #@125
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@128
    const-string v0, "\u06e8\u06e0\u06e4"

    #@12a
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@12d
    move-result v0

    #@12e
    goto/16 :goto_0

    #@130
    :cond_b
    const-string v0, "\u06e4\u06e4\u06e2"

    #@132
    goto/16 :goto_3

    #@134
    :sswitch_b
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@136
    iget-object v2, p0, Lrn_1/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@138
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@13b
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@13d
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@13f
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@142
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@145
    move-result v0

    #@146
    if-gtz v0, :cond_c

    #@148
    const-string v0, "\u06df\u06e3\u06e1"

    #@14a
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@14d
    move-result v0

    #@14e
    goto/16 :goto_0

    #@150
    :cond_c
    const-string v0, "\u06e3\u06e5\u06e2"

    #@152
    goto :goto_5

    #@153
    :cond_d
    :sswitch_c
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@156
    move-result v0

    #@157
    if-ltz v0, :cond_e

    #@159
    const-string v0, "\u06e3\u06e1\u06e5"

    #@15b
    :goto_6
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@15e
    move-result v0

    #@15f
    goto/16 :goto_0

    #@161
    :cond_e
    const-string v0, "\u06e5\u06e6\u06e5"

    #@163
    goto/16 :goto_2

    #@165
    :sswitch_d
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@167
    if-nez v0, :cond_8

    #@169
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@16c
    const-string v0, "\u06df\u06e5\u06e1"

    #@16e
    goto/16 :goto_2

    #@170
    :cond_f
    :sswitch_e
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@173
    move-result v0

    #@174
    if-ltz v0, :cond_10

    #@176
    const-string v0, "\u06e1\u06df\u06e4"

    #@178
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@17b
    move-result v0

    #@17c
    goto/16 :goto_0

    #@17e
    :cond_10
    const-string v0, "\u06e4\u06e0\u06e4"

    #@180
    goto :goto_6

    #@181
    :sswitch_f
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getWidth()I

    #@184
    move-result v0

    #@185
    if-nez v0, :cond_d

    #@187
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getHeight()I

    #@18a
    move-result v0

    #@18b
    if-nez v0, :cond_d

    #@18d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@190
    move-result v0

    #@191
    if-ltz v0, :cond_11

    #@193
    const-string v0, "\u06e3\u06e3\u06e3"

    #@195
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@198
    move-result v0

    #@199
    goto/16 :goto_0

    #@19b
    :cond_11
    const-string v0, "\u06e0\u06e3\u06e4"

    #@19d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1a0
    move-result v0

    #@1a1
    goto/16 :goto_0

    #@1a3
    :sswitch_10
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@1a5
    invoke-direct {p0}, Lrn_1/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    #@1a8
    move-result-object v2

    #@1a9
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@1ac
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@1ae
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    #@1b1
    move-result v0

    #@1b2
    iget v2, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@1b4
    int-to-float v2, v2

    #@1b5
    sub-float/2addr v0, v2

    #@1b6
    div-float/2addr v0, v5

    #@1b7
    iget-object v2, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@1b9
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    #@1bc
    move-result v2

    #@1bd
    iget v3, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@1bf
    int-to-float v3, v3

    #@1c0
    sub-float/2addr v2, v3

    #@1c1
    div-float/2addr v2, v5

    #@1c2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@1c5
    move-result v0

    #@1c6
    iput v0, p0, Lrn_1/CircleImageView;->mBorderRadius:F

    #@1c8
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1cb
    move-result v0

    #@1cc
    if-ltz v0, :cond_12

    #@1ce
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1d1
    const-string v0, "\u06e4\u06e4\u06e2"

    #@1d3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@1d6
    move-result v0

    #@1d7
    goto/16 :goto_0

    #@1d9
    :cond_12
    const-string v0, "\u06e8\u06e0\u06e4"

    #@1db
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1de
    move-result v0

    #@1df
    goto/16 :goto_0

    #@1e1
    :sswitch_11
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@1e3
    iget v2, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@1e5
    int-to-float v2, v2

    #@1e6
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@1e9
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@1eb
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@1ed
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1f0
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1f3
    move-result v0

    #@1f4
    if-gtz v0, :cond_1

    #@1f6
    const-string v0, "\u06e2\u06e8\u06e4"

    #@1f8
    goto/16 :goto_5

    #@1fa
    :sswitch_12
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@1fc
    iget-object v2, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@1fe
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@201
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@203
    if-nez v0, :cond_f

    #@205
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@208
    move-result v0

    #@209
    if-gtz v0, :cond_13

    #@20b
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@20e
    const-string v0, "\u06e2\u06e0\u06e3"

    #@210
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@213
    move-result v0

    #@214
    goto/16 :goto_0

    #@216
    :cond_13
    const-string v0, "\u06e8\u06e3\u06e5"

    #@218
    goto/16 :goto_5

    #@21a
    :sswitch_13
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@21c
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mReady:Z

    #@21e
    if-nez v0, :cond_7

    #@220
    iput-boolean v6, p0, Lrn_1/CircleImageView;->mSetupPending:Z

    #@222
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@225
    move-result v0

    #@226
    if-gtz v0, :cond_14

    #@228
    const-string v0, "\u06e8\u06e3\u06e5"

    #@22a
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@22d
    move-result v0

    #@22e
    goto/16 :goto_0

    #@230
    :cond_14
    const-string v0, "\u06e2\u06e0\u06e3"

    #@232
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@235
    move-result v0

    #@236
    goto/16 :goto_0

    #@238
    :sswitch_14
    return-void

    #@239
    nop

    #@23a
    :sswitch_data_0
    .sparse-switch
        0x1aa740 -> :sswitch_0
        0x1aa77d -> :sswitch_8
        0x1aa77e -> :sswitch_b
        0x1aa7bb -> :sswitch_14
        0x1aa7fc -> :sswitch_13
        0x1aab41 -> :sswitch_14
        0x1aab9e -> :sswitch_10
        0x1aabbc -> :sswitch_3
        0x1aaf3b -> :sswitch_11
        0x1ab265 -> :sswitch_14
        0x1ab267 -> :sswitch_7
        0x1ab35e -> :sswitch_f
        0x1ab683 -> :sswitch_6
        0x1ab6c0 -> :sswitch_5
        0x1ab6c6 -> :sswitch_c
        0x1ab9e8 -> :sswitch_1
        0x1aba62 -> :sswitch_14
        0x1abade -> :sswitch_2
        0x1abe64 -> :sswitch_d
        0x1ac1a3 -> :sswitch_e
        0x1ac247 -> :sswitch_a
        0x1ac5e7 -> :sswitch_9
        0x1ac8ec -> :sswitch_12
        0x1ac94a -> :sswitch_4
    .end sparse-switch
.end method

.method private updateShaderMatrix()V
    .locals 19

    #@0
    const/4 v10, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    const/4 v7, 0x0

    #@6
    const/4 v11, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v15, 0x0

    #@9
    const/4 v14, 0x0

    #@a
    const/4 v12, 0x0

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v13, 0x0

    #@d
    const-string v6, "\u06e2\u06e1\u06e5"

    #@f
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@12
    move-result v6

    #@13
    move/from16 v16, v6

    #@15
    move/from16 v17, v10

    #@17
    move/from16 v18, v13

    #@19
    :goto_0
    sparse-switch v16, :sswitch_data_0

    #@1c
    goto :goto_0

    #@1d
    :sswitch_0
    move-object/from16 v0, p0

    #@1f
    iget-object v6, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@21
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    #@24
    move-result v6

    #@25
    move-object/from16 v0, p0

    #@27
    iget v10, v0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@29
    int-to-float v10, v10

    #@2a
    div-float v10, v6, v10

    #@2c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2f
    move-result v6

    #@30
    if-gtz v6, :cond_12

    #@32
    const-string v6, "\u06e2\u06e1\u06e5"

    #@34
    :goto_1
    invoke-static {v6}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@37
    move-result v6

    #@38
    move/from16 v16, v6

    #@3a
    move v15, v10

    #@3b
    goto :goto_0

    #@3c
    :sswitch_1
    move-object/from16 v0, p0

    #@3e
    iget-object v6, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@40
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    #@43
    move-result v6

    #@44
    move-object/from16 v0, p0

    #@46
    iget v7, v0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@48
    int-to-float v7, v7

    #@49
    div-float v7, v6, v7

    #@4b
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@4e
    move-result v6

    #@4f
    if-ltz v6, :cond_0

    #@51
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@54
    const-string v6, "\u06e6\u06e5\u06e4"

    #@56
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@59
    move-result v6

    #@5a
    move/from16 v16, v6

    #@5c
    goto :goto_0

    #@5d
    :cond_0
    const-string v6, "\u06e4\u06e7\u06e2"

    #@5f
    :goto_2
    invoke-static {v6}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@62
    move-result v6

    #@63
    move/from16 v16, v6

    #@65
    goto :goto_0

    #@66
    :sswitch_2
    move-object/from16 v0, p0

    #@68
    iget-object v6, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@6a
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    #@6d
    move-result v8

    #@6e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@71
    move-result v6

    #@72
    if-ltz v6, :cond_14

    #@74
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@77
    const-string v6, "\u06e4\u06e7\u06e2"

    #@79
    :goto_3
    invoke-static {v6}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@7c
    move-result v6

    #@7d
    move/from16 v16, v6

    #@7f
    goto :goto_0

    #@80
    :sswitch_3
    const/4 v9, 0x0

    #@81
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@84
    move-result v6

    #@85
    if-ltz v6, :cond_1

    #@87
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@8a
    const-string v6, "\u06e6\u06e1\u06e2"

    #@8c
    :goto_4
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@8f
    move-result v6

    #@90
    move/from16 v16, v6

    #@92
    goto :goto_0

    #@93
    :cond_1
    const-string v6, "\u06e3\u06e3\u06df"

    #@95
    move v10, v5

    #@96
    :goto_5
    invoke-static {v6}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@99
    move-result v6

    #@9a
    move/from16 v16, v6

    #@9c
    move v5, v10

    #@9d
    goto/16 :goto_0

    #@9f
    :sswitch_4
    const-string v4, "\u06e6\u06e4\u06df"

    #@a1
    move-object v6, v4

    #@a2
    move v10, v14

    #@a3
    :goto_6
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@a6
    move-result v6

    #@a7
    move/from16 v16, v6

    #@a9
    move v4, v10

    #@aa
    goto/16 :goto_0

    #@ac
    :sswitch_5
    move-object/from16 v0, p0

    #@ae
    iget v2, v0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@b0
    int-to-float v2, v2

    #@b1
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@b4
    move-result v6

    #@b5
    if-gtz v6, :cond_3

    #@b7
    :cond_2
    const-string v6, "\u06e4\u06e8\u06e4"

    #@b9
    invoke-static {v6}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@bc
    move-result v6

    #@bd
    move/from16 v16, v6

    #@bf
    goto/16 :goto_0

    #@c1
    :cond_3
    const-string v6, "\u06e4\u06e1\u06e6"

    #@c3
    move v10, v15

    #@c4
    goto/16 :goto_1

    #@c6
    :sswitch_6
    move-object/from16 v0, p0

    #@c8
    iget-object v6, v0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@ca
    const/high16 v10, 0x3f000000    # 0.5f

    #@cc
    add-float/2addr v10, v12

    #@cd
    float-to-int v10, v10

    #@ce
    int-to-float v10, v10

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v13, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@d3
    iget v13, v13, Landroid/graphics/RectF;->left:F

    #@d5
    add-float/2addr v10, v13

    #@d6
    const/high16 v13, 0x3f000000    # 0.5f

    #@d8
    add-float/2addr v13, v4

    #@d9
    float-to-int v13, v13

    #@da
    int-to-float v13, v13

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@df
    move-object/from16 v16, v0

    #@e1
    move-object/from16 v0, v16

    #@e3
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@e5
    move/from16 v16, v0

    #@e7
    add-float v13, v13, v16

    #@e9
    invoke-virtual {v6, v10, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@ec
    const-string v6, "\u06e5\u06e3\u06e4"

    #@ee
    invoke-static {v6}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@f1
    move-result v6

    #@f2
    move/from16 v16, v6

    #@f4
    goto/16 :goto_0

    #@f6
    :sswitch_7
    move-object/from16 v0, p0

    #@f8
    iget-object v3, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@fa
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    #@fd
    move-result v3

    #@fe
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@101
    move-result v6

    #@102
    if-gtz v6, :cond_4

    #@104
    :goto_7
    const-string v6, "\u06e2\u06e6\u06e0"

    #@106
    :goto_8
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@109
    move-result v6

    #@10a
    move/from16 v16, v6

    #@10c
    goto/16 :goto_0

    #@10e
    :cond_4
    const-string v6, "\u06e1\u06e7\u06e4"

    #@110
    goto :goto_8

    #@111
    :sswitch_8
    const/4 v10, 0x0

    #@112
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@115
    move-result v5

    #@116
    if-ltz v5, :cond_5

    #@118
    const-string v5, "\u06e2\u06df\u06e4"

    #@11a
    move-object v6, v5

    #@11b
    :goto_9
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@11e
    move-result v6

    #@11f
    move/from16 v16, v6

    #@121
    move v5, v10

    #@122
    goto/16 :goto_0

    #@124
    :cond_5
    const-string v5, "\u06e6\u06e2\u06e7"

    #@126
    move-object v6, v5

    #@127
    goto/16 :goto_5

    #@129
    :sswitch_9
    move-object/from16 v0, p0

    #@12b
    iget-object v6, v0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@12d
    move/from16 v0, v18

    #@12f
    move/from16 v1, v18

    #@131
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    #@134
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@137
    move-result v6

    #@138
    if-gtz v6, :cond_6

    #@13a
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@13d
    const-string v6, "\u06e6\u06e4\u06e7"

    #@13f
    goto/16 :goto_2

    #@141
    :cond_6
    const-string v6, "\u06e0\u06df\u06df"

    #@143
    goto/16 :goto_3

    #@145
    :sswitch_a
    move-object/from16 v0, p0

    #@147
    iget-object v6, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@149
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    #@14c
    move-result v6

    #@14d
    move-object/from16 v0, p0

    #@14f
    iget v10, v0, Lrn_1/CircleImageView;->mBitmapHeight:I

    #@151
    int-to-float v10, v10

    #@152
    mul-float/2addr v10, v15

    #@153
    sub-float/2addr v6, v10

    #@154
    const/high16 v10, 0x3f000000    # 0.5f

    #@156
    mul-float/2addr v6, v10

    #@157
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@15a
    move-result v10

    #@15b
    if-gtz v10, :cond_10

    #@15d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@160
    const-string v10, "\u06e2\u06e5\u06e6"

    #@162
    invoke-static {v10}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@165
    move-result v10

    #@166
    move/from16 v16, v10

    #@168
    move v14, v6

    #@169
    goto/16 :goto_0

    #@16b
    :sswitch_b
    sget-object v6, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@16d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@170
    move-result v6

    #@171
    if-gtz v6, :cond_7

    #@173
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@176
    const-string v6, "\u06e4\u06e1\u06e6"

    #@178
    :goto_a
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@17b
    move-result v6

    #@17c
    move/from16 v16, v6

    #@17e
    goto/16 :goto_0

    #@180
    :cond_7
    const-string v6, "\u06e0\u06e4\u06e7"

    #@182
    goto :goto_a

    #@183
    :sswitch_c
    move-object/from16 v0, p0

    #@185
    iget-object v6, v0, Lrn_1/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v10, v0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@18b
    invoke-virtual {v6, v10}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@18e
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@191
    move-result v6

    #@192
    if-ltz v6, :cond_8

    #@194
    const-string v6, "\u06e4\u06e3\u06e8"

    #@196
    move v10, v5

    #@197
    goto/16 :goto_5

    #@199
    :cond_8
    const-string v6, "\u06e2\u06e5\u06e6"

    #@19b
    :goto_b
    invoke-static {v6}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@19e
    move-result v6

    #@19f
    move/from16 v16, v6

    #@1a1
    goto/16 :goto_0

    #@1a3
    :sswitch_d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1a6
    move-result v6

    #@1a7
    if-gtz v6, :cond_9

    #@1a9
    :cond_9
    const-string v6, "\u06e8\u06df\u06e6"

    #@1ab
    invoke-static {v6}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1ae
    move-result v6

    #@1af
    move/from16 v16, v6

    #@1b1
    move/from16 v18, v7

    #@1b3
    goto/16 :goto_0

    #@1b5
    :sswitch_e
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1b8
    move-result v6

    #@1b9
    if-ltz v6, :cond_2

    #@1bb
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@1be
    const-string v6, "\u06e2\u06e7"

    #@1c0
    invoke-static {v6}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1c3
    move-result v6

    #@1c4
    move/from16 v16, v6

    #@1c6
    goto/16 :goto_0

    #@1c8
    :sswitch_f
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1cb
    move-result v6

    #@1cc
    if-ltz v6, :cond_a

    #@1ce
    const-string v6, "\u06e1\u06e7\u06e4"

    #@1d0
    invoke-static {v6}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@1d3
    move-result v6

    #@1d4
    move/from16 v16, v6

    #@1d6
    goto/16 :goto_0

    #@1d8
    :cond_a
    const-string v6, "\u06e3\u06e6\u06e5"

    #@1da
    invoke-static {v6}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1dd
    move-result v6

    #@1de
    move/from16 v16, v6

    #@1e0
    goto/16 :goto_0

    #@1e2
    :sswitch_10
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1e5
    move-result v6

    #@1e6
    if-ltz v6, :cond_b

    #@1e8
    const-string v6, "\u06df\u06e3\u06e2"

    #@1ea
    goto :goto_b

    #@1eb
    :cond_b
    const-string v6, "\u06e2\u06e1\u06e5"

    #@1ed
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1f0
    move-result v6

    #@1f1
    move/from16 v16, v6

    #@1f3
    goto/16 :goto_0

    #@1f5
    :sswitch_11
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@1f8
    move-result v6

    #@1f9
    if-ltz v6, :cond_c

    #@1fb
    const-string v6, "\u06e8\u06e5\u06e5"

    #@1fd
    invoke-static {v6}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@200
    move-result v6

    #@201
    move/from16 v16, v6

    #@203
    goto/16 :goto_0

    #@205
    :cond_c
    const-string v6, "\u06e7\u06e8\u06e4"

    #@207
    invoke-static {v6}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@20a
    move-result v6

    #@20b
    move/from16 v16, v6

    #@20d
    goto/16 :goto_0

    #@20f
    :cond_d
    :sswitch_12
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@212
    move-result v6

    #@213
    if-ltz v6, :cond_e

    #@215
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@218
    const-string v6, "\u06e4\u06e0\u06e6"

    #@21a
    :goto_c
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@21d
    move-result v6

    #@21e
    move/from16 v16, v6

    #@220
    goto/16 :goto_0

    #@222
    :cond_e
    const-string v6, "\u06e2\u06e7"

    #@224
    goto :goto_c

    #@225
    :sswitch_13
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@228
    move-result v6

    #@229
    if-gtz v6, :cond_f

    #@22b
    move v6, v11

    #@22c
    move v10, v11

    #@22d
    :goto_d
    const-string v11, "\u06e3\u06e3"

    #@22f
    move-object v12, v11

    #@230
    move v13, v6

    #@231
    :goto_e
    invoke-static {v12}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@234
    move-result v6

    #@235
    move/from16 v16, v6

    #@237
    move v11, v13

    #@238
    move v12, v10

    #@239
    goto/16 :goto_0

    #@23b
    :cond_f
    const-string v6, "\u06e1\u06e5\u06e1"

    #@23d
    move-object v12, v6

    #@23e
    move v13, v11

    #@23f
    move v10, v11

    #@240
    goto :goto_e

    #@241
    :sswitch_14
    mul-float v6, v17, v8

    #@243
    mul-float v10, v3, v2

    #@245
    cmpl-float v6, v6, v10

    #@247
    if-lez v6, :cond_d

    #@249
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@24c
    move-result v6

    #@24d
    if-ltz v6, :cond_11

    #@24f
    move v6, v14

    #@250
    :cond_10
    const-string v10, "\u06e3\u06e5\u06e8"

    #@252
    invoke-static {v10}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@255
    move-result v10

    #@256
    move/from16 v16, v10

    #@258
    move v14, v6

    #@259
    goto/16 :goto_0

    #@25b
    :cond_11
    const-string v6, "\u06e2\u06df\u06e4"

    #@25d
    goto/16 :goto_b

    #@25f
    :cond_12
    const-string v6, "\u06e8\u06e2"

    #@261
    invoke-static {v6}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@264
    move-result v6

    #@265
    move/from16 v16, v6

    #@267
    move v15, v10

    #@268
    goto/16 :goto_0

    #@26a
    :sswitch_15
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@26d
    move-result v6

    #@26e
    if-gtz v6, :cond_13

    #@270
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@273
    const-string v6, "\u06e5\u06e3\u06e4"

    #@275
    invoke-static {v6}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@278
    move-result v6

    #@279
    move/from16 v16, v6

    #@27b
    move v12, v9

    #@27c
    goto/16 :goto_0

    #@27e
    :cond_13
    const-string v6, "\u06e6\u06e4\u06e6"

    #@280
    move v10, v5

    #@281
    move v12, v9

    #@282
    goto/16 :goto_9

    #@284
    :sswitch_16
    move-object/from16 v0, p0

    #@286
    iget v6, v0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@288
    int-to-float v10, v6

    #@289
    const-string v6, "\u06e3\u06e3\u06e2"

    #@28b
    invoke-static {v6}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@28e
    move-result v6

    #@28f
    move/from16 v16, v6

    #@291
    move/from16 v17, v10

    #@293
    goto/16 :goto_0

    #@295
    :sswitch_17
    move-object/from16 v0, p0

    #@297
    iget-object v6, v0, Lrn_1/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    #@299
    const/4 v10, 0x0

    #@29a
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@29d
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2a0
    move-result v6

    #@2a1
    if-gtz v6, :cond_15

    #@2a3
    :cond_14
    const-string v6, "\u06e5\u06e0\u06e5"

    #@2a5
    move v10, v4

    #@2a6
    goto/16 :goto_6

    #@2a8
    :cond_15
    const-string v6, "\u06e6\u06e4\u06e7"

    #@2aa
    goto/16 :goto_4

    #@2ac
    :sswitch_18
    move-object/from16 v0, p0

    #@2ae
    iget-object v6, v0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@2b0
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    #@2b3
    move-result v6

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    iget v10, v0, Lrn_1/CircleImageView;->mBitmapWidth:I

    #@2b8
    int-to-float v10, v10

    #@2b9
    mul-float/2addr v10, v7

    #@2ba
    sub-float/2addr v6, v10

    #@2bb
    const/high16 v10, 0x3f000000    # 0.5f

    #@2bd
    mul-float/2addr v6, v10

    #@2be
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@2c1
    move-result v10

    #@2c2
    if-ltz v10, :cond_16

    #@2c4
    const-string v10, "\u06e7\u06e8\u06e4"

    #@2c6
    invoke-static {v10}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2c9
    move-result v10

    #@2ca
    move/from16 v16, v10

    #@2cc
    move v11, v6

    #@2cd
    goto/16 :goto_0

    #@2cf
    :cond_16
    move v10, v12

    #@2d0
    goto/16 :goto_d

    #@2d2
    :sswitch_19
    move v4, v5

    #@2d3
    goto/16 :goto_7

    #@2d5
    :sswitch_1a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2d8
    move-result v6

    #@2d9
    if-gtz v6, :cond_17

    #@2db
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2de
    const-string v6, "\u06e1\u06e5\u06e1"

    #@2e0
    invoke-static {v6}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@2e3
    move-result v6

    #@2e4
    move/from16 v16, v6

    #@2e6
    move/from16 v18, v15

    #@2e8
    goto/16 :goto_0

    #@2ea
    :cond_17
    const-string v6, "\u06e7\u06e8\u06e4"

    #@2ec
    invoke-static {v6}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2ef
    move-result v6

    #@2f0
    move/from16 v16, v6

    #@2f2
    move/from16 v18, v15

    #@2f4
    goto/16 :goto_0

    #@2f6
    :sswitch_1b
    return-void

    #@2f7
    nop

    #@2f8
    :sswitch_data_0
    .sparse-switch
        0xdc45 -> :sswitch_0
        0xdc60 -> :sswitch_8
        0xdcfa -> :sswitch_a
        0x1aaac0 -> :sswitch_6
        0x1aab63 -> :sswitch_e
        0x1aaf3d -> :sswitch_f
        0x1aaf7e -> :sswitch_5
        0x1ab247 -> :sswitch_1
        0x1ab286 -> :sswitch_b
        0x1ab303 -> :sswitch_1b
        0x1ab31c -> :sswitch_13
        0x1ab67f -> :sswitch_14
        0x1ab682 -> :sswitch_2
        0x1ab6c6 -> :sswitch_15
        0x1ab6e2 -> :sswitch_11
        0x1aba09 -> :sswitch_3
        0x1aba49 -> :sswitch_11
        0x1ababf -> :sswitch_18
        0x1abae0 -> :sswitch_17
        0x1abdaa -> :sswitch_7
        0x1abe06 -> :sswitch_c
        0x1ac187 -> :sswitch_10
        0x1ac1ab -> :sswitch_d
        0x1ac1e1 -> :sswitch_1a
        0x1ac1e8 -> :sswitch_4
        0x1ac1e9 -> :sswitch_16
        0x1ac205 -> :sswitch_12
        0x1ac623 -> :sswitch_9
        0x1ac8cf -> :sswitch_19
    .end sparse-switch
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    #@0
    iget v0, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@2
    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    #@0
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    iget-object v0, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget v0, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@2
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    #@0
    sget-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@2
    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    #@0
    const-string v0, "\u06e4\u06e0\u06e7"

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
    :cond_0
    :sswitch_0
    const-string v0, "\u06e2\u06e6\u06e4"

    #@c
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0

    #@11
    :cond_1
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@14
    move-result v0

    #@15
    if-gtz v0, :cond_2

    #@17
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1a
    const-string v0, "\u06e4\u06e2\u06e0"

    #@1c
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    :cond_2
    const-string v0, "\u06e6\u06e6"

    #@23
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    :sswitch_2
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@2a
    if-lez v0, :cond_8

    #@2c
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2f
    move-result v0

    #@30
    if-gtz v0, :cond_3

    #@32
    const-string v0, "\u06e4\u06e0\u06e7"

    #@34
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :cond_3
    const-string v0, "\u06e8\u06e6\u06e2"

    #@3b
    :goto_3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@3e
    move-result v0

    #@3f
    goto :goto_0

    #@40
    :cond_4
    :sswitch_3
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@43
    move-result v0

    #@44
    if-gtz v0, :cond_5

    #@46
    const-string v0, "\u06e0\u06e6\u06e7"

    #@48
    :goto_4
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4b
    move-result v0

    #@4c
    goto :goto_0

    #@4d
    :cond_5
    const-string v0, "\u06e4\u06e6\u06e7"

    #@4f
    goto :goto_1

    #@50
    :sswitch_4
    iget-object v0, p0, Lrn_1/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    #@52
    if-nez v0, :cond_0

    #@54
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@57
    move-result v0

    #@58
    if-ltz v0, :cond_6

    #@5a
    const-string v0, "\u06e4\u06e6\u06e8"

    #@5c
    goto :goto_3

    #@5d
    :cond_6
    const-string v0, "\u06df\u06e3\u06e3"

    #@5f
    :goto_5
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@62
    move-result v0

    #@63
    goto :goto_0

    #@64
    :sswitch_5
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@66
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@68
    if-eqz v0, :cond_4

    #@6a
    const-string v0, "\u06e5\u06df\u06e7"

    #@6c
    goto :goto_2

    #@6d
    :sswitch_6
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@6f
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@72
    move-result v0

    #@73
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@75
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@78
    move-result v1

    #@79
    iget v2, p0, Lrn_1/CircleImageView;->mDrawableRadius:F

    #@7b
    iget v3, p0, Lrn_1/CircleImageView;->mElevation:F

    #@7d
    sub-float/2addr v2, v3

    #@7e
    iget-object v3, p0, Lrn_1/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    #@80
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@83
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@86
    move-result v0

    #@87
    if-gtz v0, :cond_7

    #@89
    const-string v0, "\u06df\u06e4\u06e2"

    #@8b
    :goto_6
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@8e
    move-result v0

    #@8f
    goto/16 :goto_0

    #@91
    :cond_7
    const-string v0, "\u06e4\u06e6\u06e8"

    #@93
    goto :goto_5

    #@94
    :cond_8
    :sswitch_7
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@97
    move-result v0

    #@98
    if-gtz v0, :cond_9

    #@9a
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@9d
    const-string v0, "\u06e6\u06e4\u06e8"

    #@9f
    :goto_7
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@a2
    move-result v0

    #@a3
    goto/16 :goto_0

    #@a5
    :cond_9
    const-string v0, "\u06df\u06e4\u06e2"

    #@a7
    goto :goto_4

    #@a8
    :sswitch_8
    iget v0, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@aa
    if-eqz v0, :cond_1

    #@ac
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@af
    move-result v0

    #@b0
    if-gtz v0, :cond_a

    #@b2
    const-string v0, "\u06e0\u06e8\u06e1"

    #@b4
    goto :goto_5

    #@b5
    :cond_a
    const-string v0, "\u06e3\u06e1\u06e1"

    #@b7
    goto :goto_7

    #@b8
    :sswitch_9
    iget-object v0, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@ba
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@bd
    move-result v0

    #@be
    iget-object v1, p0, Lrn_1/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    #@c0
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@c3
    move-result v1

    #@c4
    iget v2, p0, Lrn_1/CircleImageView;->mDrawableRadius:F

    #@c6
    iget v3, p0, Lrn_1/CircleImageView;->mElevation:F

    #@c8
    sub-float/2addr v2, v3

    #@c9
    iget-object v3, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@cb
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@ce
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d1
    move-result v0

    #@d2
    if-gtz v0, :cond_b

    #@d4
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d7
    const-string v0, "\u06e7\u06e8\u06e1"

    #@d9
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@dc
    move-result v0

    #@dd
    goto/16 :goto_0

    #@df
    :cond_b
    const-string v0, "\u06e6\u06e6"

    #@e1
    goto :goto_6

    #@e2
    :sswitch_a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    #@e5
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@e8
    move-result v0

    #@e9
    if-gtz v0, :cond_c

    #@eb
    const-string v0, "\u06e8\u06e6\u06e2"

    #@ed
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@f0
    move-result v0

    #@f1
    goto/16 :goto_0

    #@f3
    :cond_c
    const-string v0, "\u06e4\u06e2\u06df"

    #@f5
    goto/16 :goto_2

    #@f7
    :sswitch_b
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@f9
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    #@fc
    move-result v0

    #@fd
    iget-object v1, p0, Lrn_1/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    #@ff
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    #@102
    move-result v1

    #@103
    iget v2, p0, Lrn_1/CircleImageView;->mBorderRadius:F

    #@105
    iget v3, p0, Lrn_1/CircleImageView;->mElevation:F

    #@107
    sub-float/2addr v2, v3

    #@108
    iget-object v3, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@10a
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@10d
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@110
    move-result v0

    #@111
    if-gtz v0, :cond_d

    #@113
    const-string v0, "\u06e0\u06e2\u06e7"

    #@115
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@118
    move-result v0

    #@119
    goto/16 :goto_0

    #@11b
    :cond_d
    const-string v0, "\u06df\u06e4\u06e2"

    #@11d
    goto :goto_7

    #@11e
    :sswitch_c
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@121
    move-result v0

    #@122
    if-ltz v0, :cond_e

    #@124
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@127
    const-string v0, "\u06e7\u06e6"

    #@129
    goto/16 :goto_1

    #@12b
    :cond_e
    const-string v0, "\u06e4\u06e0\u06e7"

    #@12d
    goto/16 :goto_1

    #@12f
    :sswitch_d
    return-void

    #@130
    :sswitch_data_0
    .sparse-switch
        0xdc23 -> :sswitch_0
        0xdcc0 -> :sswitch_6
        0x1aa77f -> :sswitch_d
        0x1aa79d -> :sswitch_d
        0x1aa819 -> :sswitch_7
        0x1aab25 -> :sswitch_3
        0x1aabd9 -> :sswitch_c
        0x1ab320 -> :sswitch_8
        0x1ab643 -> :sswitch_9
        0x1ab9eb -> :sswitch_5
        0x1aba21 -> :sswitch_d
        0x1abaa5 -> :sswitch_4
        0x1abaa6 -> :sswitch_2
        0x1abd8d -> :sswitch_a
        0x1ac620 -> :sswitch_1
        0x1ac9a4 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    #@0
    const-string v0, "\u06df\u06e6\u06e2"

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
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    #@f
    const-string v0, "\u06e4\u06e2\u06e7"

    #@11
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    goto :goto_0

    #@16
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@19
    move-result v0

    #@1a
    if-gtz v0, :cond_0

    #@1c
    const-string v0, "\u06df\u06df\u06df"

    #@1e
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    goto :goto_0

    #@23
    :cond_0
    const-string v0, "\u06df\u06e6\u06e2"

    #@25
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    :sswitch_2
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@2d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@30
    move-result v0

    #@31
    if-gtz v0, :cond_1

    #@33
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@36
    const-string v0, "\u06e3\u06df\u06e6"

    #@38
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@3b
    move-result v0

    #@3c
    goto :goto_0

    #@3d
    :cond_1
    const-string v0, "\u06e3\u06df\u06e6"

    #@3f
    goto :goto_1

    #@40
    :sswitch_3
    return-void

    #@41
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x1aa7db -> :sswitch_0
        0x1ab60a -> :sswitch_3
        0x1aba05 -> :sswitch_1
        0x1aba29 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2

    #@0
    const-string v0, "\u06e4\u06e3"

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
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@c
    if-nez p1, :cond_0

    #@e
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@11
    move-result v0

    #@12
    if-gtz v0, :cond_2

    #@14
    const-string v0, "\u06e4\u06e3"

    #@16
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :sswitch_1
    const-string v0, "\u06e4\u06e3"

    #@1d
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :cond_0
    :sswitch_2
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@25
    move-result v0

    #@26
    if-ltz v0, :cond_1

    #@28
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@2b
    const-string v0, "\u06df\u06df\u06e1"

    #@2d
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    goto :goto_0

    #@32
    :cond_1
    const-string v0, "\u06df\u06e6\u06e3"

    #@34
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :cond_2
    const-string v0, "\u06e6\u06df\u06e8"

    #@3b
    goto :goto_1

    #@3c
    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string v1, "adjustViewBounds not supported."

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    :sswitch_4
    return-void

    #@45
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0xdc7f -> :sswitch_0
        0x1aa7dc -> :sswitch_3
        0x1abe7d -> :sswitch_1
        0x1ac14f -> :sswitch_4
        0x1ac52d -> :sswitch_2
    .end sparse-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1

    #@0
    const-string v0, "\u06e2\u06df\u06e8"

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
    return-void

    #@b
    :sswitch_1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@e
    move-result v0

    #@f
    if-ltz v0, :cond_0

    #@11
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@14
    const-string v0, "\u06e4\u06e2\u06e6"

    #@16
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    const-string v0, "\u06e2\u06df\u06e8"

    #@1d
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :sswitch_2
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@24
    invoke-virtual {p0, p1}, Lrn_1/CircleImageView;->setFillColor(I)V

    #@27
    const-string v0, "\u06e8\u06e3"

    #@29
    goto :goto_1

    #@2a
    :sswitch_data_0
    .sparse-switch
        0xdcfb -> :sswitch_0
        0x1aa784 -> :sswitch_1
        0x1ab24b -> :sswitch_2
    .end sparse-switch
.end method

.method public setBorderColor(I)V
    .locals 1

    #@0
    const-string v0, "\u06e2\u06e5\u06e3"

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
    return-void

    #@b
    :sswitch_1
    iget-object v0, p0, Lrn_1/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@10
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@13
    move-result v0

    #@14
    if-gtz v0, :cond_0

    #@16
    const-string v0, "\u06e8\u06e7\u06e0"

    #@18
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    :cond_0
    const-string v0, "\u06e0\u06e6\u06e4"

    #@1f
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    goto :goto_0

    #@24
    :sswitch_2
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@27
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@2a
    move-result v0

    #@2b
    if-ltz v0, :cond_1

    #@2d
    const-string v0, "\u06e2\u06e1"

    #@2f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    :cond_1
    const-string v0, "\u06df\u06e5"

    #@36
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@39
    move-result v0

    #@3a
    goto :goto_0

    #@3b
    :cond_2
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3e
    move-result v0

    #@3f
    if-ltz v0, :cond_3

    #@41
    const-string v0, "\u06e7\u06e3\u06e6"

    #@43
    goto :goto_1

    #@44
    :cond_3
    const-string v0, "\u06e5\u06e7\u06e1"

    #@46
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@49
    move-result v0

    #@4a
    goto :goto_0

    #@4b
    :sswitch_4
    iput p1, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@4d
    const-string v0, "\u06e8\u06e7\u06e0"

    #@4f
    goto :goto_1

    #@50
    :sswitch_5
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@53
    move-result v0

    #@54
    if-gtz v0, :cond_4

    #@56
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@59
    const-string v0, "\u06e2\u06e1\u06e1"

    #@5b
    goto :goto_2

    #@5c
    :cond_4
    const-string v0, "\u06e2\u06e5\u06e3"

    #@5e
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@61
    move-result v0

    #@62
    goto :goto_0

    #@63
    :sswitch_6
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@65
    iget v0, p0, Lrn_1/CircleImageView;->mBorderColor:I

    #@67
    if-ne p1, v0, :cond_2

    #@69
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@6c
    move-result v0

    #@6d
    if-gtz v0, :cond_5

    #@6f
    const-string v0, "\u06e4\u06e5\u06df"

    #@71
    :goto_3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@74
    move-result v0

    #@75
    goto :goto_0

    #@76
    :cond_5
    const-string v0, "\u06e4\u06e2"

    #@78
    goto :goto_3

    #@79
    nop

    #@7a
    :sswitch_data_0
    .sparse-switch
        0xdbe6 -> :sswitch_0
        0xdc3f -> :sswitch_3
        0xdc7e -> :sswitch_0
        0x1aab9e -> :sswitch_2
        0x1ab300 -> :sswitch_6
        0x1aba7e -> :sswitch_5
        0x1abe7f -> :sswitch_4
        0x1ac9c1 -> :sswitch_1
    .end sparse-switch
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "\u06e2\u06e6\u06e1"

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
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@c
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@17
    move-result v0

    #@18
    invoke-virtual {p0, v0}, Lrn_1/CircleImageView;->setBorderColor(I)V

    #@1b
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1e
    move-result v0

    #@1f
    if-gtz v0, :cond_0

    #@21
    const-string v0, "\u06e5\u06e8\u06e2"

    #@23
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    :cond_0
    const-string v0, "\u06e5\u06e8\u06e2"

    #@2a
    goto :goto_1

    #@2b
    :sswitch_1
    const-string v0, "\u06e2\u06e6\u06e1"

    #@2d
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

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
        0x1ab31d -> :sswitch_0
        0x1abe9f -> :sswitch_2
        0x1ac92e -> :sswitch_1
    .end sparse-switch
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    #@0
    const-string v0, "\u06e0\u06df\u06e1"

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
    return-void

    #@b
    :sswitch_1
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@e
    move-result v0

    #@f
    if-ltz v0, :cond_0

    #@11
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@14
    const-string v0, "\u06e8\u06e5"

    #@16
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    const-string v0, "\u06e0\u06df\u06e1"

    #@1d
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :sswitch_2
    iput-boolean p1, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@24
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@27
    move-result v0

    #@28
    if-gtz v0, :cond_1

    #@2a
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@2d
    :cond_1
    const-string v0, "\u06e8\u06e8\u06e2"

    #@2f
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    :cond_2
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@37
    move-result v0

    #@38
    if-ltz v0, :cond_3

    #@3a
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3d
    const-string v0, "\u06e0\u06e8\u06e5"

    #@3f
    :goto_2
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@42
    move-result v0

    #@43
    goto :goto_0

    #@44
    :cond_3
    const-string v0, "\u06e7\u06e6\u06e1"

    #@46
    goto :goto_2

    #@47
    :sswitch_4
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@4a
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@4d
    move-result v0

    #@4e
    if-ltz v0, :cond_4

    #@50
    const-string v0, "\u06e7\u06e6\u06e1"

    #@52
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@55
    move-result v0

    #@56
    goto :goto_0

    #@57
    :cond_4
    const-string v0, "\u06e6\u06e3"

    #@59
    goto :goto_2

    #@5a
    :sswitch_5
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@5c
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mBorderOverlay:Z

    #@5e
    if-ne p1, v0, :cond_2

    #@60
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@63
    move-result v0

    #@64
    if-gtz v0, :cond_5

    #@66
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@69
    const-string v0, "\u06e6\u06e3"

    #@6b
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@6e
    move-result v0

    #@6f
    goto :goto_0

    #@70
    :cond_5
    const-string v0, "\u06e0\u06e1\u06e3"

    #@72
    goto :goto_1

    #@73
    nop

    #@74
    :sswitch_data_0
    .sparse-switch
        0xdcbd -> :sswitch_0
        0x1aaac2 -> :sswitch_5
        0x1aab02 -> :sswitch_0
        0x1aabbc -> :sswitch_3
        0x1abdca -> :sswitch_1
        0x1ac5e2 -> :sswitch_2
        0x1ac9e2 -> :sswitch_4
    .end sparse-switch
.end method

.method public setBorderWidth(I)V
    .locals 1

    #@0
    const-string v0, "\u06e2\u06df\u06e4"

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
    invoke-direct {p0}, Lrn_1/CircleImageView;->setup()V

    #@d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@10
    move-result v0

    #@11
    if-ltz v0, :cond_3

    #@13
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@16
    const-string v0, "\u06e3\u06e5\u06e0"

    #@18
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    :sswitch_1
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@1f
    iget v0, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@21
    if-ne p1, v0, :cond_1

    #@23
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@26
    move-result v0

    #@27
    if-gtz v0, :cond_0

    #@29
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@2c
    const-string v0, "\u06df\u06e5\u06e6"

    #@2e
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :cond_0
    const-string v0, "\u06e1\u06e4\u06e1"

    #@35
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@38
    move-result v0

    #@39
    goto :goto_0

    #@3a
    :cond_1
    :sswitch_2
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@3d
    move-result v0

    #@3e
    if-ltz v0, :cond_2

    #@40
    const-string v0, "\u06e0\u06df\u06e2"

    #@42
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    goto :goto_0

    #@47
    :cond_2
    const-string v0, "\u06e8\u06e1\u06e8"

    #@49
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@4c
    move-result v0

    #@4d
    goto :goto_0

    #@4e
    :cond_3
    const-string v0, "\u06e3\u06e5\u06e0"

    #@50
    goto :goto_2

    #@51
    :sswitch_3
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@54
    move-result v0

    #@55
    if-ltz v0, :cond_4

    #@57
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@5a
    const-string v0, "\u06e3\u06e5\u06e2"

    #@5c
    :goto_3
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@5f
    move-result v0

    #@60
    goto :goto_0

    #@61
    :cond_4
    const-string v0, "\u06e2\u06df\u06e4"

    #@63
    goto :goto_3

    #@64
    :sswitch_4
    iput p1, p0, Lrn_1/CircleImageView;->mBorderWidth:I

    #@66
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@69
    move-result v0

    #@6a
    if-gtz v0, :cond_5

    #@6c
    const-string v0, "\u06e2\u06e5\u06e0"

    #@6e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@71
    move-result v0

    #@72
    goto :goto_0

    #@73
    :cond_5
    const-string v0, "\u06df\u06e5\u06e6"

    #@75
    goto :goto_1

    #@76
    :sswitch_5
    return-void

    #@77
    nop

    #@78
    :sswitch_data_0
    .sparse-switch
        0x1aa7c0 -> :sswitch_0
        0x1aaf1e -> :sswitch_5
        0x1ab247 -> :sswitch_1
        0x1ab2fd -> :sswitch_3
        0x1ab6be -> :sswitch_5
        0x1ac90f -> :sswitch_4
        0x1ac928 -> :sswitch_2
    .end sparse-switch
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    #@0
    const-string v0, "\u06e5\u06e7\u06df"

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
    invoke-direct {p0}, Lrn_1/CircleImageView;->applyColorFilter()V

    #@d
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@10
    move-result v0

    #@11
    if-gtz v0, :cond_3

    #@13
    const-string v0, "\u06e6\u06e1\u06e8"

    #@15
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :sswitch_1
    iput-object p1, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@1c
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1f
    move-result v0

    #@20
    if-gtz v0, :cond_0

    #@22
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@25
    const-string v0, "\u06e8\u06e7\u06e8"

    #@27
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    const-string v0, "\u06e1\u06e0\u06e2"

    #@2e
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :sswitch_2
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@36
    move-result v0

    #@37
    if-ltz v0, :cond_1

    #@39
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@3c
    const-string v0, "\u06e8\u06df\u06e0"

    #@3e
    goto :goto_1

    #@3f
    :cond_1
    const-string v0, "\u06e5\u06e7\u06df"

    #@41
    goto :goto_1

    #@42
    :sswitch_3
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@44
    iget-object v0, p0, Lrn_1/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@46
    if-ne p1, v0, :cond_4

    #@48
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@4b
    move-result v0

    #@4c
    if-gtz v0, :cond_2

    #@4e
    const-string v0, "\u06e1\u06e7\u06e7"

    #@50
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@53
    move-result v0

    #@54
    goto :goto_0

    #@55
    :cond_2
    const-string v0, "\u06e8\u06e7\u06e8"

    #@57
    goto :goto_2

    #@58
    :sswitch_4
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@5b
    const-string v0, "\u06e6\u06e1\u06e8"

    #@5d
    :goto_3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@60
    move-result v0

    #@61
    goto :goto_0

    #@62
    :cond_3
    const-string v0, "\u06e5\u06e4\u06e0"

    #@64
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@67
    move-result v0

    #@68
    goto :goto_0

    #@69
    :cond_4
    :sswitch_5
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@6c
    move-result v0

    #@6d
    if-ltz v0, :cond_5

    #@6f
    const-string v0, "\u06e2\u06e2\u06e5"

    #@71
    goto :goto_3

    #@72
    :cond_5
    const-string v0, "\u06e1\u06e7\u06e7"

    #@74
    goto :goto_1

    #@75
    :sswitch_6
    return-void

    #@76
    :sswitch_data_0
    .sparse-switch
        0x1aaea3 -> :sswitch_0
        0x1aaf5a -> :sswitch_5
        0x1aaf81 -> :sswitch_1
        0x1abe21 -> :sswitch_4
        0x1abe7d -> :sswitch_3
        0x1ac149 -> :sswitch_2
        0x1ac18d -> :sswitch_6
        0x1ac9c9 -> :sswitch_6
    .end sparse-switch
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    #@0
    const-string v0, "\u06e6\u06df\u06e7"

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
    return-void

    #@b
    :sswitch_1
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@d
    iget-boolean v0, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@f
    if-ne v0, p1, :cond_1

    #@11
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@14
    move-result v0

    #@15
    if-gtz v0, :cond_0

    #@17
    const-string v0, "\u06e2\u06e5\u06e1"

    #@19
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    goto :goto_0

    #@1e
    :cond_0
    const-string v0, "\u06e1\u06e0\u06e1"

    #@20
    goto :goto_1

    #@21
    :cond_1
    :sswitch_2
    const-string v0, "\u06e2\u06e5\u06e1"

    #@23
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    :sswitch_3
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2b
    move-result v0

    #@2c
    if-gtz v0, :cond_2

    #@2e
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@31
    const-string v0, "\u06e1\u06df\u06e5"

    #@33
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@36
    move-result v0

    #@37
    goto :goto_0

    #@38
    :cond_2
    const-string v0, "\u06e6\u06df\u06e7"

    #@3a
    goto :goto_2

    #@3b
    :sswitch_4
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@3e
    const-string v0, "\u06df\u06e3\u06e6"

    #@40
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@43
    move-result v0

    #@44
    goto :goto_0

    #@45
    :sswitch_5
    iput-boolean p1, p0, Lrn_1/CircleImageView;->mDisableCircularTransformation:Z

    #@47
    const-string v0, "\u06e3\u06e2\u06e6"

    #@49
    goto :goto_2

    #@4a
    :sswitch_data_0
    .sparse-switch
        0x1aa782 -> :sswitch_0
        0x1aaea2 -> :sswitch_0
        0x1ab2fe -> :sswitch_5
        0x1ab359 -> :sswitch_3
        0x1ab667 -> :sswitch_4
        0x1ac14e -> :sswitch_1
        0x1ac9c8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setElevation2(F)V
    .locals 4

    #@0
    const-string v0, "\u06e8\u06df\u06df"

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
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@10
    move-result v0

    #@11
    if-ltz v0, :cond_0

    #@13
    const-string v0, "\u06e8\u06df\u06df"

    #@15
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    goto :goto_0

    #@1a
    :cond_0
    const-string v0, "\u06e5\u06e1\u06e3"

    #@1c
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    goto :goto_0

    #@21
    :sswitch_1
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@23
    iput p1, p0, Lrn_1/CircleImageView;->mElevation:F

    #@25
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@28
    move-result v0

    #@29
    if-gtz v0, :cond_1

    #@2b
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@2e
    const-string v0, "\u06e5\u06e0\u06e0"

    #@30
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@33
    move-result v0

    #@34
    goto :goto_0

    #@35
    :cond_1
    const-string v0, "\u06e8\u06e8\u06e0"

    #@37
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@3a
    move-result v0

    #@3b
    goto :goto_0

    #@3c
    :sswitch_2
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@3e
    const/4 v1, 0x0

    #@3f
    const/high16 v2, 0x40000000    # 2.0f

    #@41
    div-float v2, p1, v2

    #@43
    const/high16 v3, -0x1000000

    #@45
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@48
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@4b
    move-result v0

    #@4c
    if-gtz v0, :cond_2

    #@4e
    const-string v0, "\u06e5\u06e1\u06e3"

    #@50
    goto :goto_1

    #@51
    :cond_2
    const-string v0, "\u06e4\u06e7\u06e7"

    #@53
    :goto_2
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@56
    move-result v0

    #@57
    goto :goto_0

    #@58
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@5b
    move-result v0

    #@5c
    if-ltz v0, :cond_3

    #@5e
    const-string v0, "\u06e2\u06e7\u06e2"

    #@60
    goto :goto_2

    #@61
    :cond_3
    const-string v0, "\u06e8\u06df\u06df"

    #@63
    goto :goto_2

    #@64
    :sswitch_4
    return-void

    #@65
    nop

    #@66
    :sswitch_data_0
    .sparse-switch
        0x1abac4 -> :sswitch_0
        0x1abda5 -> :sswitch_3
        0x1abdc7 -> :sswitch_4
        0x1ac8c8 -> :sswitch_1
        0x1ac9e0 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "\u06e0\u06e2\u06e6"

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
    :cond_0
    :sswitch_0
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_2

    #@10
    const-string v0, "\u06e6\u06e5\u06e8"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@1a
    move-result v0

    #@1b
    if-gtz v0, :cond_1

    #@1d
    const-string v0, "\u06df\u06e3\u06e2"

    #@1f
    :goto_2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@22
    move-result v0

    #@23
    goto :goto_0

    #@24
    :cond_1
    const-string v0, "\u06e0\u06e2\u06e6"

    #@26
    goto :goto_2

    #@27
    :cond_2
    const-string v0, "\u06df\u06e6\u06e3"

    #@29
    goto :goto_1

    #@2a
    :sswitch_2
    sget-object v0, Lrn_1/ۣ۟ۧۤۦ;->۟۠ۡۨۧ:[S

    #@2c
    iget v0, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@2e
    if-ne p1, v0, :cond_0

    #@30
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@33
    move-result v0

    #@34
    if-ltz v0, :cond_3

    #@36
    const-string v0, "\u06df\u06e6\u06e3"

    #@38
    :goto_3
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@3b
    move-result v0

    #@3c
    goto :goto_0

    #@3d
    :cond_3
    const-string v0, "\u06e7\u06e4\u06e5"

    #@3f
    goto :goto_3

    #@40
    :sswitch_3
    invoke-virtual {p0}, Lrn_1/CircleImageView;->invalidate()V

    #@43
    const-string v0, "\u06e5\u06e7\u06e1"

    #@45
    goto :goto_2

    #@46
    :sswitch_4
    iput p1, p0, Lrn_1/CircleImageView;->mFillColor:I

    #@48
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@4b
    move-result v0

    #@4c
    if-ltz v0, :cond_4

    #@4e
    const-string v0, "\u06e0\u06e2\u06e6"

    #@50
    :goto_4
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@53
    move-result v0

    #@54
    goto :goto_0

    #@55
    :cond_4
    const-string v0, "\u06e2\u06e8\u06e2"

    #@57
    goto :goto_4

    #@58
    :sswitch_5
    iget-object v0, p0, Lrn_1/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    #@5a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@5d
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@60
    move-result v0

    #@61
    if-gtz v0, :cond_5

    #@63
    const-string v0, "\u06e2\u06e8\u06e2"

    #@65
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@68
    move-result v0

    #@69
    goto :goto_0

    #@6a
    :cond_5
    const-string v0, "\u06e0\u06e6\u06e2"

    #@6c
    goto :goto_1

    #@6d
    :sswitch_6
    return-void

    #@6e
    :sswitch_data_0
    .sparse-switch
        0xdc84 -> :sswitch_0
        0x1aa7dc -> :sswitch_4
        0x1aab24 -> :sswitch_2
        0x1aab9c -> :sswitch_3
        0x1ab35c -> :sswitch_5
        0x1abac5 -> :sswitch_1
        0x1abe7f -> :sswitch_6
        0x1ac5a8 -> :sswitch_6
    .end sparse-switch
.end method

.method public setFillColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "\u06e6\u06e5"

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
    invoke-virtual {p0}, Lrn_1/CircleImageView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@17
    move-result v0

    #@18
    invoke-virtual {p0, v0}, Lrn_1/CircleImageView;->setFillColor(I)V

    #@1b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@1e
    move-result v0

    #@1f
    if-ltz v0, :cond_0

    #@21
    const-string v0, "\u06e6\u06e5"

    #@23
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    :sswitch_1
    const-string v0, "\u06e6\u06e5"

    #@2a
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@2d
    move-result v0

    #@2e
    goto :goto_0

    #@2f
    :cond_0
    const-string v0, "\u06e5\u06e8\u06e4"

    #@31
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    goto :goto_0

    #@36
    :sswitch_2
    return-void

    #@37
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        0xdcbf -> :sswitch_0
        0x1aba65 -> :sswitch_1
        0x1abea1 -> :sswitch_2
    .end sparse-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    #@0
    const-string v0, "\u06df\u06e6\u06df"

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
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@f
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@12
    move-result v0

    #@13
    if-gtz v0, :cond_0

    #@15
    const-string v0, "\u06e2\u06e2\u06e7"

    #@17
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    const-string v0, "\u06e2\u06e2\u06e7"

    #@1e
    goto :goto_1

    #@1f
    :sswitch_1
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@22
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@25
    move-result v0

    #@26
    if-ltz v0, :cond_1

    #@28
    const-string v0, "\u06e0\u06e5\u06e6"

    #@2a
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@2d
    move-result v0

    #@2e
    goto :goto_0

    #@2f
    :cond_1
    const-string v0, "\u06e0\u06e5\u06e6"

    #@31
    goto :goto_2

    #@32
    :sswitch_2
    const-string v0, "\u06df\u06e6\u06df"

    #@34
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :sswitch_3
    return-void

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x1aa7d8 -> :sswitch_0
        0x1aab81 -> :sswitch_3
        0x1ab2a7 -> :sswitch_1
        0x1ac98b -> :sswitch_2
    .end sparse-switch
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    #@0
    const-string v0, "\u06e4\u06e6\u06e1"

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
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@12
    move-result v0

    #@13
    if-gtz v0, :cond_0

    #@15
    const-string v0, "\u06e7\u06e1\u06e4"

    #@17
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    const-string v0, "\u06e7\u06e1\u06e4"

    #@1e
    goto :goto_1

    #@1f
    :sswitch_1
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@22
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@25
    move-result v0

    #@26
    if-ltz v0, :cond_1

    #@28
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@2b
    const-string v0, "\u06e7\u06e6\u06e0"

    #@2d
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    goto :goto_0

    #@32
    :cond_1
    const-string v0, "\u06e7\u06e6\u06e0"

    #@34
    goto :goto_2

    #@35
    :sswitch_2
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@38
    move-result v0

    #@39
    if-ltz v0, :cond_2

    #@3b
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@3e
    const-string v0, "\u06e2\u06df\u06e7"

    #@40
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@43
    move-result v0

    #@44
    goto :goto_0

    #@45
    :cond_2
    const-string v0, "\u06e4\u06e6\u06e1"

    #@47
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4a
    move-result v0

    #@4b
    goto :goto_0

    #@4c
    :sswitch_3
    return-void

    #@4d
    nop

    #@4e
    :sswitch_data_0
    .sparse-switch
        0x1aba9f -> :sswitch_0
        0x1ac246 -> :sswitch_2
        0x1ac54a -> :sswitch_1
        0x1ac5e1 -> :sswitch_3
    .end sparse-switch
.end method

.method public setImageResource(I)V
    .locals 1

    #@0
    const-string v0, "\u06e3\u06e6\u06e6"

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
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_1

    #@10
    const-string v0, "\u06e5\u06e3\u06df"

    #@12
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@19
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@1c
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@1f
    move-result v0

    #@20
    if-gtz v0, :cond_0

    #@22
    const-string v0, "\u06e0\u06e7\u06e6"

    #@24
    :goto_1
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    :cond_0
    const-string v0, "\u06e3\u06e7\u06df"

    #@2b
    goto :goto_1

    #@2c
    :sswitch_2
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@2f
    const-string v0, "\u06e0\u06e7\u06e6"

    #@31
    goto :goto_1

    #@32
    :cond_1
    const-string v0, "\u06e3\u06e6\u06e6"

    #@34
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :sswitch_3
    return-void

    #@3a
    :sswitch_data_0
    .sparse-switch
        0xdcdb -> :sswitch_0
        0x1aabbf -> :sswitch_3
        0x1ab6e3 -> :sswitch_1
        0x1ab6fb -> :sswitch_2
    .end sparse-switch
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    #@0
    const-string v0, "\u06e1\u06e8\u06e7"

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
    invoke-direct {p0}, Lrn_1/CircleImageView;->initializeBitmap()V

    #@d
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@10
    move-result v0

    #@11
    if-ltz v0, :cond_0

    #@13
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@16
    const-string v0, "\u06e1\u06e8\u06e7"

    #@18
    :goto_1
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    goto :goto_0

    #@1d
    :sswitch_1
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@1f
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@22
    const-string v0, "\u06e1\u06e4\u06e6"

    #@24
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    :cond_0
    const-string v0, "\u06e7\u06e8\u06df"

    #@2b
    goto :goto_1

    #@2c
    :sswitch_2
    const-string v0, "\u06e1\u06e8\u06e7"

    #@2e
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    :sswitch_3
    return-void

    #@34
    :sswitch_data_0
    .sparse-switch
        0x1aaf23 -> :sswitch_0
        0x1aaf42 -> :sswitch_2
        0x1aafa0 -> :sswitch_1
        0x1ac61e -> :sswitch_3
    .end sparse-switch
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    #@0
    const-string v0, "\u06df\u06e0\u06e2"

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
    return-void

    #@b
    :sswitch_1
    sget-object v0, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۠۠۠:[S

    #@d
    sget-object v0, Lrn_1/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    #@f
    if-ne p1, v0, :cond_1

    #@11
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@14
    move-result v0

    #@15
    if-ltz v0, :cond_0

    #@17
    const-string v0, "\u06e2\u06e6\u06e5"

    #@19
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    goto :goto_0

    #@1e
    :cond_0
    const-string v0, "\u06df\u06e0"

    #@20
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string v1, "ScaleType %s not supported."

    #@29
    const/4 v2, 0x1

    #@2a
    new-array v2, v2, [Ljava/lang/Object;

    #@2c
    const/4 v3, 0x0

    #@2d
    aput-object p1, v2, v3

    #@2f
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_1
    :sswitch_3
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@3a
    move-result v0

    #@3b
    if-ltz v0, :cond_2

    #@3d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@40
    const-string v0, "\u06e6\u06e7\u06e3"

    #@42
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@45
    move-result v0

    #@46
    goto :goto_0

    #@47
    :cond_2
    const-string v0, "\u06e4\u06e7"

    #@49
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@4c
    move-result v0

    #@4d
    goto :goto_0

    #@4e
    :sswitch_4
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@51
    move-result v0

    #@52
    if-gtz v0, :cond_3

    #@54
    invoke-static {}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->۟ۥۥۨۡ()I

    #@57
    const-string v0, "\u06e5\u06e4\u06e0"

    #@59
    goto :goto_1

    #@5a
    :cond_3
    const-string v0, "\u06df\u06e0\u06e2"

    #@5c
    goto :goto_1

    #@5d
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0xdbe1 -> :sswitch_0
        0xdc83 -> :sswitch_2
        0x1aa721 -> :sswitch_1
        0x1ab321 -> :sswitch_4
        0x1ac244 -> :sswitch_3
    .end sparse-switch
.end method
