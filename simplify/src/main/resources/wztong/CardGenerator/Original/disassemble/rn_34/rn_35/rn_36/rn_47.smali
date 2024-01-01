.class public Lrn_34/rn_35/rn_36/rn_47;
.super Lrn_34/rn_35/rn_36/rn_4398;
.source "rn_47.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 6
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_4398;-><init>(Landroid/content/Context;)V

    #@3
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 4
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_47;->getView()Lrn_1/CircleImageView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getView()Landroid/widget/ImageView;
    .locals 1

    #@0
    .line 4
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_47;->getView()Lrn_1/CircleImageView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Lrn_1/CircleImageView;
    .locals 1

    #@0
    .line 17
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_47;->view:Landroid/view/View;

    #@2
    check-cast v0, Lrn_1/CircleImageView;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 4
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_47;->onCreateView(Landroid/content/Context;)Lrn_1/CircleImageView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 0

    #@0
    .line 4
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_47;->onCreateView(Landroid/content/Context;)Lrn_1/CircleImageView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Lrn_1/CircleImageView;
    .locals 1

    #@0
    .line 11
    new-instance v0, Lrn_1/CircleImageView;

    #@2
    invoke-direct {v0, p1}, Lrn_1/CircleImageView;-><init>(Landroid/content/Context;)V

    #@5
    .line 12
    return-object v0
.end method
