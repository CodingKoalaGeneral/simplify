.class public Lrn_34/rn_35/rn_36/rn_653;
.super Lrn_34/rn_35/rn_36/rn_521;
.source "rn_653.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 7
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_521;-><init>(Landroid/content/Context;)V

    #@3
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 5
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_653;->getView()Lrn_1/CardView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .line 5
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_653;->getView()Lrn_1/CardView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Lrn_1/CardView;
    .locals 1

    #@0
    .line 18
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_653;->view:Landroid/view/View;

    #@2
    check-cast v0, Lrn_1/CardView;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 5
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_653;->onCreateView(Landroid/content/Context;)Lrn_1/CardView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0

    #@0
    .line 5
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_653;->onCreateView(Landroid/content/Context;)Lrn_1/CardView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Lrn_1/CardView;
    .locals 1

    #@0
    .line 12
    new-instance v0, Lrn_1/CardView;

    #@2
    invoke-direct {v0, p1}, Lrn_1/CardView;-><init>(Landroid/content/Context;)V

    #@5
    .line 13
    return-object v0
.end method

.method public final rn_654(I)V
    .locals 1

    #@0
    .line 22
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_653;->getView()Lrn_1/CardView;

    #@3
    move-result-object v0

    #@4
    int-to-float p1, p1

    #@5
    invoke-virtual {v0, p1}, Lrn_1/CardView;->setRadius(F)V

    #@8
    .line 23
    return-void
.end method

.method public final rn_656(I)V
    .locals 1

    #@0
    .line 26
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_653;->getView()Lrn_1/CardView;

    #@3
    move-result-object v0

    #@4
    int-to-float p1, p1

    #@5
    invoke-virtual {v0, p1}, Lrn_1/CardView;->setCardElevation(F)V

    #@8
    .line 27
    return-void
.end method
