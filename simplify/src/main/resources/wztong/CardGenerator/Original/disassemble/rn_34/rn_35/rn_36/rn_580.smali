.class public Lrn_34/rn_35/rn_36/rn_580;
.super Lrn_34/rn_35/rn_36/rn_536;
.source "rn_580.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 9
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_536;-><init>(Landroid/content/Context;)V

    #@3
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 7
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_580;->getView()Landroid/widget/LinearLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .line 7
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_580;->getView()Landroid/widget/LinearLayout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .locals 1

    #@0
    .line 20
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_580;->view:Landroid/view/View;

    #@2
    check-cast v0, Landroid/widget/LinearLayout;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 7
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_580;->onCreateView(Landroid/content/Context;)Landroid/widget/LinearLayout;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0

    #@0
    .line 7
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_580;->onCreateView(Landroid/content/Context;)Landroid/widget/LinearLayout;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 1

    #@0
    .line 14
    new-instance v0, Landroid/widget/LinearLayout;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 15
    return-object v0
.end method

.method public final rn_270(I)V
    .locals 1

    #@0
    .line 24
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_580;->getView()Landroid/widget/LinearLayout;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@7
    .line 25
    return-void
.end method

.method public final rn_582(Z)V
    .locals 1

    #@0
    .line 28
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_580;->getView()Landroid/widget/LinearLayout;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@7
    .line 29
    return-void
.end method
