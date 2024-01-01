.class public Lrn_34/rn_35/rn_36/rn_567;
.super Lrn_34/rn_35/rn_36/rn_521;
.source "rn_567.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 11
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_521;-><init>(Landroid/content/Context;)V

    #@3
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 9
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_567;->getView()Landroid/widget/AbsoluteLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .line 9
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_567;->getView()Landroid/widget/AbsoluteLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Landroid/widget/AbsoluteLayout;
    .locals 1

    #@0
    .line 22
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_567;->view:Landroid/view/View;

    #@2
    check-cast v0, Landroid/widget/AbsoluteLayout;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 9
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_567;->onCreateView(Landroid/content/Context;)Landroid/widget/AbsoluteLayout;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0

    #@0
    .line 9
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_567;->onCreateView(Landroid/content/Context;)Landroid/widget/AbsoluteLayout;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/AbsoluteLayout;
    .locals 1

    #@0
    .line 16
    new-instance v0, Landroid/widget/AbsoluteLayout;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 17
    return-object v0
.end method

.method public final rn_574(Lrn_34/rn_35/rn_36/rn_4206;D)V
    .locals 3

    #@0
    .line 26
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 27
    nop

    #@5
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@b
    .line 29
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_567;->context:Landroid/content/Context;

    #@d
    invoke-static {v1}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3573(Landroid/content/Context;)I

    #@10
    move-result v1

    #@11
    int-to-double v1, v1

    #@12
    mul-double v1, v1, p2

    #@14
    double-to-int p2, v1

    #@15
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    #@17
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1a
    .line 31
    return-void
.end method

.method public final rn_577(Lrn_34/rn_35/rn_36/rn_4206;D)V
    .locals 3

    #@0
    .line 34
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 35
    nop

    #@5
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    #@b
    .line 37
    iget-object v1, p0, Lrn_34/rn_35/rn_36/rn_567;->context:Landroid/content/Context;

    #@d
    invoke-static {v1}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3579(Landroid/content/Context;)I

    #@10
    move-result v1

    #@11
    int-to-double v1, v1

    #@12
    mul-double v1, v1, p2

    #@14
    double-to-int p2, v1

    #@15
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    #@17
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1a
    .line 39
    return-void
.end method
