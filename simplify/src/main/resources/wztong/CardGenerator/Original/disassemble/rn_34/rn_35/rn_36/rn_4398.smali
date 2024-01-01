.class public Lrn_34/rn_35/rn_36/rn_4398;
.super Lrn_34/rn_35/rn_36/rn_4206;
.source "rn_4398.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 7
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_4206;-><init>(Landroid/content/Context;)V

    #@3
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 5
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4398;->getView()Landroid/widget/ImageView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Landroid/widget/ImageView;
    .locals 1

    #@0
    .line 18
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4398;->view:Landroid/view/View;

    #@2
    check-cast v0, Landroid/widget/ImageView;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 5
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4398;->onCreateView(Landroid/content/Context;)Landroid/widget/ImageView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    #@0
    .line 12
    new-instance v0, Landroid/widget/ImageView;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@5
    .line 13
    return-object v0
.end method

.method public final rn_4399(I)V
    .locals 1

    #@0
    .line 22
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4398;->getView()Landroid/widget/ImageView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@7
    .line 23
    return-void
.end method
