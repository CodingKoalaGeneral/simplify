.class public Lrn_34/rn_35/rn_36/rn_4657;
.super Landroid/app/Activity;
.source "rn_4657.java"


# instance fields
.field private root:Lrn_34/rn_35/rn_36/rn_4206;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    #@0
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4671(IILandroid/content/Intent;)V

    #@6
    .line 86
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    #@0
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    #@3
    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    #@0
    .line 17
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4658()V

    #@3
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@6
    .line 19
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->onInit()V

    #@9
    .line 20
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4659()V

    #@c
    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    #@0
    .line 68
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4666(Landroid/view/Menu;)V

    #@3
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

.method protected onDestroy()V
    .locals 0

    #@0
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    .line 63
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4665()V

    #@6
    .line 64
    return-void
.end method

.method public onInit()V
    .locals 0

    #@0
    .line 23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    #@0
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    #@3
    move-result v0

    #@4
    const v1, 0x102002c

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 75
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4670()V

    #@c
    goto :goto_0

    #@d
    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4668(Landroid/view/MenuItem;)V

    #@10
    .line 79
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method protected onPause()V
    .locals 0

    #@0
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    .line 51
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4662()V

    #@6
    .line 52
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    #@0
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    #@3
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4675(I[Ljava/lang/String;[I)V

    #@6
    .line 92
    return-void
.end method

.method protected onRestart()V
    .locals 0

    #@0
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    .line 39
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4661()V

    #@6
    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    #@0
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    .line 57
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4664()V

    #@6
    .line 58
    return-void
.end method

.method protected onStart()V
    .locals 0

    #@0
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    .line 33
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4660()V

    #@6
    .line 34
    return-void
.end method

.method protected onStop()V
    .locals 0

    #@0
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@3
    .line 45
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4657;->rn_4663()V

    #@6
    .line 46
    return-void
.end method

.method public rn_4658()V
    .locals 0

    #@0
    .line 95
    return-void
.end method

.method public rn_4659()V
    .locals 0

    #@0
    .line 98
    return-void
.end method

.method public rn_4660()V
    .locals 0

    #@0
    .line 101
    return-void
.end method

.method public rn_4661()V
    .locals 0

    #@0
    .line 104
    return-void
.end method

.method public rn_4662()V
    .locals 0

    #@0
    .line 107
    return-void
.end method

.method public rn_4663()V
    .locals 0

    #@0
    .line 110
    return-void
.end method

.method public rn_4664()V
    .locals 0

    #@0
    .line 113
    return-void
.end method

.method public rn_4665()V
    .locals 0

    #@0
    .line 116
    return-void
.end method

.method public rn_4666(Landroid/view/Menu;)V
    .locals 0

    #@0
    .line 119
    return-void
.end method

.method public rn_4668(Landroid/view/MenuItem;)V
    .locals 0

    #@0
    .line 122
    return-void
.end method

.method public rn_4670()V
    .locals 0

    #@0
    .line 125
    return-void
.end method

.method public rn_4671(IILandroid/content/Intent;)V
    .locals 0

    #@0
    .line 128
    return-void
.end method

.method public rn_4675(I[Ljava/lang/String;[I)V
    .locals 0

    #@0
    .line 131
    return-void
.end method

.method protected setLayout(Lrn_34/rn_35/rn_36/rn_4206;)V
    .locals 0

    #@0
    .line 26
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4657;->root:Lrn_34/rn_35/rn_36/rn_4206;

    #@2
    .line 27
    invoke-virtual {p1}, Lrn_34/rn_35/rn_36/rn_4206;->getView()Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4657;->setContentView(Landroid/view/View;)V

    #@9
    .line 28
    return-void
.end method
