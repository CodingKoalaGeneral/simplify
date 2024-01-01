.class public abstract Lrn_34/rn_35/rn_36/rn_521;
.super Lrn_34/rn_35/rn_36/rn_4206;
.source "rn_521.java"


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
.method public addComponent(Lrn_34/rn_35/rn_36/rn_4206;)V
    .locals 1

    #@0
    .line 14
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_521;->getView()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@b
    .line 15
    return-void
.end method

.method public addComponent(Lrn_34/rn_35/rn_36/rn_4206;II)V
    .locals 1

    #@0
    .line 18
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_521;->getView()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    #@b
    .line 19
    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 5
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_521;->getView()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract getView()Landroid/view/ViewGroup;
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 5
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_521;->onCreateView(Landroid/content/Context;)Landroid/view/ViewGroup;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public abstract onCreateView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end method

.method public rn_522(Lrn_34/rn_35/rn_36/rn_4206;)V
    .locals 0

    #@0
    .line 22
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_521;->addComponent(Lrn_34/rn_35/rn_36/rn_4206;)V

    #@3
    .line 23
    return-void
.end method
