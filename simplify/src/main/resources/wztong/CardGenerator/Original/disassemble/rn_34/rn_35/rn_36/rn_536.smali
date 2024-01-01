.class public abstract Lrn_34/rn_35/rn_36/rn_536;
.super Lrn_34/rn_35/rn_36/rn_521;
.source "rn_536.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 10
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_521;-><init>(Landroid/content/Context;)V

    #@3
    .line 11
    return-void
.end method


# virtual methods
.method public final rn_552(Lrn_34/rn_35/rn_36/rn_4206;I)V
    .locals 2

    #@0
    .line 14
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 16
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 17
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    .line 18
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_536;->context:Landroid/content/Context;

    #@10
    invoke-static {v1, p2}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@13
    move-result p2

    #@14
    .line 19
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    #@17
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1a
    .line 22
    :cond_0
    return-void
.end method

.method public final rn_555(Lrn_34/rn_35/rn_36/rn_4206;I)V
    .locals 2

    #@0
    .line 25
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 27
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 28
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    .line 29
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_536;->context:Landroid/content/Context;

    #@10
    invoke-static {v1, p2}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@13
    move-result p2

    #@14
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@16
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 32
    :cond_0
    return-void
.end method

.method public final rn_558(Lrn_34/rn_35/rn_36/rn_4206;I)V
    .locals 2

    #@0
    .line 35
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 37
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 38
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    .line 39
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_536;->context:Landroid/content/Context;

    #@10
    invoke-static {v1, p2}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@13
    move-result p2

    #@14
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@16
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 42
    :cond_0
    return-void
.end method

.method public final rn_561(Lrn_34/rn_35/rn_36/rn_4206;I)V
    .locals 2

    #@0
    .line 45
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 47
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 48
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    .line 49
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_536;->context:Landroid/content/Context;

    #@10
    invoke-static {v1, p2}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@13
    move-result p2

    #@14
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@16
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 52
    :cond_0
    return-void
.end method

.method public final rn_564(Lrn_34/rn_35/rn_36/rn_4206;I)V
    .locals 2

    #@0
    .line 55
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 57
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 58
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    .line 59
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_536;->context:Landroid/content/Context;

    #@10
    invoke-static {v1, p2}, Lrn_34/rn_35/rn_36/rn_3804;->rn_3805(Landroid/content/Context;I)I

    #@13
    move-result p2

    #@14
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@16
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 62
    :cond_0
    return-void
.end method
