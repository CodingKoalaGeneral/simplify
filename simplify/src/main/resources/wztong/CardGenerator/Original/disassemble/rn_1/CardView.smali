.class public Lrn_1/CardView;
.super Landroid/widget/LinearLayout;
.source "CardView.java"

# interfaces
.implements Lrn_1/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn_1/CardView$CardViewJellybeanMr1;,
        Lrn_1/CardView$CardViewEclairMr1;,
        Lrn_1/CardView$CardViewApi21;
    }
.end annotation


# static fields
.field private static final IMPL:Lrn_1/CardViewImpl;


# instance fields
.field private dm:Landroid/util/DisplayMetrics;

.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 79
    new-instance v0, Lrn_1/CardView$CardViewApi21;

    #@8
    invoke-direct {v0}, Lrn_1/CardView$CardViewApi21;-><init>()V

    #@b
    sput-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@d
    goto :goto_0

    #@e
    .line 80
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0x11

    #@12
    if-lt v0, v1, :cond_1

    #@14
    .line 81
    new-instance v0, Lrn_1/CardView$CardViewJellybeanMr1;

    #@16
    invoke-direct {v0}, Lrn_1/CardView$CardViewJellybeanMr1;-><init>()V

    #@19
    sput-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@1b
    goto :goto_0

    #@1c
    .line 83
    :cond_1
    new-instance v0, Lrn_1/CardView$CardViewEclairMr1;

    #@1e
    invoke-direct {v0}, Lrn_1/CardView$CardViewEclairMr1;-><init>()V

    #@21
    sput-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@23
    .line 85
    :goto_0
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@25
    invoke-interface {v0}, Lrn_1/CardViewImpl;->initStatic()V

    #@28
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    #@0
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 92
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@a
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lrn_1/CardView;->mShadowBounds:Landroid/graphics/Rect;

    #@11
    .line 99
    const/4 v0, 0x0

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {p0, p1, v0, v1}, Lrn_1/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@16
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    #@0
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 92
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@a
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lrn_1/CardView;->mShadowBounds:Landroid/graphics/Rect;

    #@11
    .line 104
    const/4 v0, 0x0

    #@12
    invoke-direct {p0, p1, p2, v0}, Lrn_1/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@15
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    #@0
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 92
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@a
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lrn_1/CardView;->mShadowBounds:Landroid/graphics/Rect;

    #@11
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lrn_1/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@14
    .line 110
    return-void
.end method

.method private dp(F)F
    .locals 2

    #@0
    .line 252
    iget-object v0, p0, Lrn_1/CardView;->dm:Landroid/util/DisplayMetrics;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@6
    move-result p1

    #@7
    return p1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    #@0
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p2

    #@4
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object p2

    #@8
    iput-object p2, p0, Lrn_1/CardView;->dm:Landroid/util/DisplayMetrics;

    #@a
    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@d
    move-result-object p2

    #@e
    const/4 p3, 0x1

    #@f
    new-array v0, p3, [I

    #@11
    const v1, 0x1010031

    #@14
    const/4 v2, 0x0

    #@15
    aput v1, v0, v2

    #@17
    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object p2

    #@1b
    .line 211
    const v0, -0x50506

    #@1e
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@21
    move-result v6

    #@22
    .line 212
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@25
    .line 219
    const/high16 p2, 0x40000000    # 2.0f

    #@27
    invoke-direct {p0, p2}, Lrn_1/CardView;->dp(F)F

    #@2a
    move-result v7

    #@2b
    .line 221
    invoke-direct {p0, p2}, Lrn_1/CardView;->dp(F)F

    #@2e
    move-result v8

    #@2f
    .line 223
    invoke-direct {p0, p2}, Lrn_1/CardView;->dp(F)F

    #@32
    move-result p2

    #@33
    .line 225
    iput-boolean v2, p0, Lrn_1/CardView;->mCompatPadding:Z

    #@35
    .line 227
    iput-boolean p3, p0, Lrn_1/CardView;->mPreventCornerOverlap:Z

    #@37
    .line 229
    nop

    #@38
    .line 231
    iget-object p3, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@3a
    iput v2, p3, Landroid/graphics/Rect;->left:I

    #@3c
    .line 234
    iget-object p3, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@3e
    iput v2, p3, Landroid/graphics/Rect;->top:I

    #@40
    .line 237
    iget-object p3, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@42
    iput v2, p3, Landroid/graphics/Rect;->right:I

    #@44
    .line 240
    iget-object p3, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@46
    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    #@48
    .line 243
    cmpl-float p3, v8, p2

    #@4a
    if-lez p3, :cond_0

    #@4c
    .line 244
    move v9, v8

    #@4d
    goto :goto_0

    #@4e
    .line 243
    :cond_0
    move v9, p2

    #@4f
    .line 247
    :goto_0
    sget-object v3, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@51
    move-object v4, p0

    #@52
    move-object v5, p1

    #@53
    invoke-interface/range {v3 .. v9}, Lrn_1/CardViewImpl;->initialize(Lrn_1/CardViewDelegate;Landroid/content/Context;IFFF)V

    #@56
    .line 248
    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    #@0
    .line 359
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0}, Lrn_1/CardViewImpl;->getElevation(Lrn_1/CardViewDelegate;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    #@0
    .line 303
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4
    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    #@0
    .line 276
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    #@0
    .line 285
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    #@0
    .line 294
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    #@0
    .line 385
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0}, Lrn_1/CardViewImpl;->getMaxElevation(Lrn_1/CardViewDelegate;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    #@0
    .line 397
    iget-boolean v0, p0, Lrn_1/CardView;->mPreventCornerOverlap:Z

    #@2
    return v0
.end method

.method public getRadius()F
    .locals 1

    #@0
    .line 324
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0}, Lrn_1/CardViewImpl;->getRadius(Lrn_1/CardViewDelegate;)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    #@0
    .line 129
    iget-boolean v0, p0, Lrn_1/CardView;->mCompatPadding:Z

    #@2
    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    #@0
    .line 180
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    instance-of v1, v0, Lrn_1/CardView$CardViewApi21;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 181
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v1

    #@a
    .line 182
    sparse-switch v1, :sswitch_data_0

    #@d
    goto :goto_0

    #@e
    .line 185
    :sswitch_0
    invoke-interface {v0, p0}, Lrn_1/CardViewImpl;->getMinWidth(Lrn_1/CardViewDelegate;)F

    #@11
    move-result v2

    #@12
    float-to-double v2, v2

    #@13
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@16
    move-result-wide v2

    #@17
    double-to-int v2, v2

    #@18
    .line 186
    nop

    #@19
    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1c
    move-result p1

    #@1d
    .line 186
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    #@20
    move-result p1

    #@21
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@24
    move-result p1

    #@25
    .line 191
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@28
    move-result v1

    #@29
    .line 192
    sparse-switch v1, :sswitch_data_1

    #@2c
    goto :goto_1

    #@2d
    .line 195
    :sswitch_1
    invoke-interface {v0, p0}, Lrn_1/CardViewImpl;->getMinHeight(Lrn_1/CardViewDelegate;)F

    #@30
    move-result v0

    #@31
    float-to-double v2, v0

    #@32
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@35
    move-result-wide v2

    #@36
    double-to-int v0, v2

    #@37
    .line 196
    nop

    #@38
    .line 197
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3b
    move-result p2

    #@3c
    .line 196
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result p2

    #@40
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@43
    move-result p2

    #@44
    .line 200
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@47
    .line 201
    goto :goto_2

    #@48
    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@4b
    .line 204
    :goto_2
    return-void

    #@4c
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    #@56
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1

    #@0
    .line 267
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0, p1}, Lrn_1/CardViewImpl;->setBackgroundColor(Lrn_1/CardViewDelegate;I)V

    #@5
    .line 268
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    #@0
    .line 263
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0, p1}, Lrn_1/CardViewImpl;->setBackgroundColor(Lrn_1/CardViewDelegate;I)V

    #@5
    .line 264
    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    #@0
    .line 348
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0, p1}, Lrn_1/CardViewImpl;->setElevation(Lrn_1/CardViewDelegate;F)V

    #@5
    .line 349
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    #@0
    .line 173
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 174
    sget-object p1, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@7
    invoke-interface {p1, p0}, Lrn_1/CardViewImpl;->updatePadding(Lrn_1/CardViewDelegate;)V

    #@a
    .line 175
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    #@0
    .line 374
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0, p1}, Lrn_1/CardViewImpl;->setMaxElevation(Lrn_1/CardViewDelegate;F)V

    #@5
    .line 375
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    #@0
    .line 115
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    #@0
    .line 119
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    #@0
    .line 414
    iget-boolean v0, p0, Lrn_1/CardView;->mPreventCornerOverlap:Z

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 415
    return-void

    #@5
    .line 417
    :cond_0
    iput-boolean p1, p0, Lrn_1/CardView;->mPreventCornerOverlap:Z

    #@7
    .line 418
    sget-object p1, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@9
    invoke-interface {p1, p0}, Lrn_1/CardViewImpl;->onPreventCornerOverlapChanged(Lrn_1/CardViewDelegate;)V

    #@c
    .line 419
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    #@0
    .line 314
    sget-object v0, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@2
    invoke-interface {v0, p0, p1}, Lrn_1/CardViewImpl;->setRadius(Lrn_1/CardViewDelegate;F)V

    #@5
    .line 315
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 1

    #@0
    .line 334
    iget-object v0, p0, Lrn_1/CardView;->mShadowBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 335
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@7
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@9
    add-int/2addr p1, v0

    #@a
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@e
    add-int/2addr p2, v0

    #@f
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@11
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@13
    add-int/2addr p3, v0

    #@14
    iget-object v0, p0, Lrn_1/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@16
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@18
    add-int/2addr p4, v0

    #@19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    #@1c
    .line 337
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    #@0
    .line 149
    iget-boolean v0, p0, Lrn_1/CardView;->mCompatPadding:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 150
    return-void

    #@5
    .line 152
    :cond_0
    iput-boolean p1, p0, Lrn_1/CardView;->mCompatPadding:Z

    #@7
    .line 153
    sget-object p1, Lrn_1/CardView;->IMPL:Lrn_1/CardViewImpl;

    #@9
    invoke-interface {p1, p0}, Lrn_1/CardViewImpl;->onCompatPaddingChanged(Lrn_1/CardViewDelegate;)V

    #@c
    .line 154
    return-void
.end method
