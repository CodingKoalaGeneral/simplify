.class public Lrn_34/rn_35/rn_36/rn_4206;
.super Lrn_34/rn_35/rn_36/rn_4182;
.source "rn_4206.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn_34/rn_35/rn_36/rn_4206$rn_4299_r;,
        Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;,
        Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;
    }
.end annotation


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private rn_4295_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;

.field private rn_4297_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;

.field private rn_4299_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4299_r;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 20
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_4182;-><init>(Landroid/content/Context;)V

    #@3
    .line 21
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4206;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@9
    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@c
    .line 23
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4210()V

    #@f
    .line 24
    return-void
.end method

.method static synthetic access$000(Lrn_34/rn_35/rn_36/rn_4206;)Landroid/view/GestureDetector;
    .locals 0

    #@0
    .line 15
    iget-object p0, p0, Lrn_34/rn_35/rn_36/rn_4206;->detector:Landroid/view/GestureDetector;

    #@2
    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .line 32
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    #@0
    .line 27
    new-instance v0, Landroid/view/View;

    #@2
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@5
    .line 28
    return-object v0
.end method

.method public final rn_272(I)V
    .locals 1

    #@0
    .line 57
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 58
    if-nez v0, :cond_0

    #@8
    .line 59
    return-void

    #@9
    .line 61
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b
    .line 62
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@d
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@10
    .line 63
    return-void
.end method

.method public final rn_274(I)V
    .locals 1

    #@0
    .line 39
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 40
    if-nez v0, :cond_0

    #@8
    .line 41
    return-void

    #@9
    .line 43
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@b
    .line 44
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@d
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@10
    .line 45
    return-void
.end method

.method public final rn_278(I)V
    .locals 1

    #@0
    .line 91
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    #@5
    .line 92
    return-void
.end method

.method public final rn_280(I)V
    .locals 1

    #@0
    .line 87
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    #@5
    .line 88
    return-void
.end method

.method public final rn_418(Z)V
    .locals 1

    #@0
    .line 122
    if-eqz p1, :cond_1

    #@2
    .line 123
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->detector:Landroid/view/GestureDetector;

    #@4
    if-nez p1, :cond_0

    #@6
    .line 124
    new-instance p1, Lrn_34/rn_35/rn_36/rn_4206$2;

    #@8
    invoke-direct {p1, p0}, Lrn_34/rn_35/rn_36/rn_4206$2;-><init>(Lrn_34/rn_35/rn_36/rn_4206;)V

    #@b
    .line 160
    new-instance v0, Landroid/view/GestureDetector;

    #@d
    invoke-direct {v0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    #@10
    iput-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->detector:Landroid/view/GestureDetector;

    #@12
    .line 162
    :cond_0
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@14
    new-instance v0, Lrn_34/rn_35/rn_36/rn_4206$3;

    #@16
    invoke-direct {v0, p0}, Lrn_34/rn_35/rn_36/rn_4206$3;-><init>(Lrn_34/rn_35/rn_36/rn_4206;)V

    #@19
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@1c
    goto :goto_0

    #@1d
    .line 170
    :cond_1
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@1f
    const/4 v0, 0x0

    #@20
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@23
    .line 172
    :goto_0
    return-void
.end method

.method public rn_4210()V
    .locals 0

    #@0
    .line 36
    return-void
.end method

.method public final rn_4213(I)V
    .locals 2

    #@0
    .line 48
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 49
    if-nez v0, :cond_0

    #@8
    .line 50
    return-void

    #@9
    .line 52
    :cond_0
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_4206;->context:Landroid/content/Context;

    #@b
    invoke-static {v1, p1}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@e
    move-result p1

    #@f
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@11
    .line 53
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@13
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 54
    return-void
.end method

.method public final rn_4216(I)V
    .locals 2

    #@0
    .line 66
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 67
    if-nez v0, :cond_0

    #@8
    .line 68
    return-void

    #@9
    .line 70
    :cond_0
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_4206;->context:Landroid/content/Context;

    #@b
    invoke-static {v1, p1}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@e
    move-result p1

    #@f
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@11
    .line 71
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@13
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 72
    return-void
.end method

.method public final rn_4242(I)V
    .locals 4

    #@0
    .line 75
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_4206;->context:Landroid/content/Context;

    #@4
    invoke-static {v1, p1}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@7
    move-result p1

    #@8
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    #@d
    move-result v1

    #@e
    iget-object v2, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@10
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    #@13
    move-result v2

    #@14
    iget-object v3, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@16
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    #@1d
    .line 76
    return-void
.end method

.method public final rn_4250(I)V
    .locals 4

    #@0
    .line 79
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@8
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    #@b
    move-result v2

    #@c
    iget-object v3, p0, Lrn_34/rn_35/rn_36/rn_4206;->context:Landroid/content/Context;

    #@e
    invoke-static {v3, p1}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@11
    move-result p1

    #@12
    iget-object v3, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@14
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    #@1b
    .line 80
    return-void
.end method

.method public final rn_4256(I)V
    .locals 1

    #@0
    .line 83
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    int-to-float p1, p1

    #@3
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    #@6
    .line 84
    return-void
.end method

.method public final rn_4271(Z)V
    .locals 4

    #@0
    .line 95
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 96
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->context:Landroid/content/Context;

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object p1

    #@9
    .line 97
    new-instance v1, Landroid/util/TypedValue;

    #@b
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@e
    .line 98
    const v2, 0x101030e

    #@11
    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@14
    .line 99
    new-array v0, v0, [I

    #@16
    const/4 v3, 0x0

    #@17
    aput v2, v0, v3

    #@19
    .line 100
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    #@1b
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@1e
    move-result-object p1

    #@1f
    .line 101
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@21
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@28
    .line 102
    goto :goto_0

    #@29
    .line 103
    :cond_0
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2b
    const/4 v0, 0x0

    #@2c
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@2f
    .line 105
    :goto_0
    return-void
.end method

.method public final rn_4284(Z)V
    .locals 1

    #@0
    .line 108
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    #@5
    .line 109
    if-eqz p1, :cond_0

    #@7
    .line 110
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@9
    new-instance v0, Lrn_34/rn_35/rn_36/rn_4206$1;

    #@b
    invoke-direct {v0, p0}, Lrn_34/rn_35/rn_36/rn_4206$1;-><init>(Lrn_34/rn_35/rn_36/rn_4206;)V

    #@e
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@11
    goto :goto_0

    #@12
    .line 117
    :cond_0
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->view:Landroid/view/View;

    #@14
    const/4 v0, 0x0

    #@15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@18
    .line 119
    :goto_0
    return-void
.end method

.method public final rn_4295()V
    .locals 1

    #@0
    .line 182
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->rn_4295_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 183
    invoke-interface {v0}, Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;->dispatch()V

    #@7
    .line 185
    :cond_0
    return-void
.end method

.method public final rn_4295_s(Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;)V
    .locals 0

    #@0
    .line 179
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->rn_4295_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4295_r;

    #@2
    .line 180
    return-void
.end method

.method public final rn_4297(Landroid/view/MotionEvent;)Z
    .locals 1

    #@0
    .line 195
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->rn_4297_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 196
    invoke-interface {v0, p1}, Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;->dispatch(Landroid/view/MotionEvent;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    .line 198
    :cond_0
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public final rn_4297_s(Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;)V
    .locals 0

    #@0
    .line 192
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->rn_4297_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;

    #@2
    .line 193
    return-void
.end method

.method public final rn_4299(I)V
    .locals 1

    #@0
    .line 209
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4299_r;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 210
    invoke-interface {v0, p1}, Lrn_34/rn_35/rn_36/rn_4206$rn_4299_r;->dispatch(I)V

    #@7
    .line 212
    :cond_0
    return-void
.end method

.method public final rn_4299_s(Lrn_34/rn_35/rn_36/rn_4206$rn_4299_r;)V
    .locals 0

    #@0
    .line 206
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299_v:Lrn_34/rn_35/rn_36/rn_4206$rn_4299_r;

    #@2
    .line 207
    return-void
.end method
