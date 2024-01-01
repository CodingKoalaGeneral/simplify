.class public Lrn_34/rn_35/rn_36/rn_4577;
.super Landroid/app/Application;
.source "rn_4577.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 4
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 6
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 7
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->onPreInit()V

    #@6
    .line 8
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->rn_4578()V

    #@9
    .line 9
    return-void
.end method

.method public onCreate()V
    .locals 0

    #@0
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #@3
    .line 13
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->onInit()V

    #@6
    .line 14
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4577;->rn_4579()V

    #@9
    .line 15
    return-void
.end method

.method public onInit()V
    .locals 0

    #@0
    .line 21
    return-void
.end method

.method public onPreInit()V
    .locals 0

    #@0
    .line 18
    return-void
.end method

.method public rn_4578()V
    .locals 0

    #@0
    .line 24
    return-void
.end method

.method public rn_4579()V
    .locals 0

    #@0
    .line 27
    return-void
.end method
