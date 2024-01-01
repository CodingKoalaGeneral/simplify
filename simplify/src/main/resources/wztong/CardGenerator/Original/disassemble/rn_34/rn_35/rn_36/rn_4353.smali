.class public Lrn_34/rn_35/rn_36/rn_4353;
.super Lrn_34/rn_35/rn_36/rn_4311;
.source "rn_4353.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 8
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_4311;-><init>(Landroid/content/Context;)V

    #@3
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 6
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4353;->getView()Landroid/widget/EditText;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Landroid/widget/EditText;
    .locals 1

    #@0
    .line 19
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4353;->view:Landroid/view/View;

    #@2
    check-cast v0, Landroid/widget/EditText;

    #@4
    return-object v0
.end method

.method public bridge synthetic getView()Landroid/widget/TextView;
    .locals 1

    #@0
    .line 6
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4353;->getView()Landroid/widget/EditText;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 6
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4353;->onCreateView(Landroid/content/Context;)Landroid/widget/EditText;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/EditText;
    .locals 1

    #@0
    .line 13
    new-instance v0, Landroid/widget/EditText;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #@5
    .line 14
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 0

    #@0
    .line 6
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4353;->onCreateView(Landroid/content/Context;)Landroid/widget/EditText;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public final rn_380(Ljava/lang/String;)V
    .locals 1

    #@0
    .line 23
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4353;->getView()Landroid/widget/EditText;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    #@7
    .line 24
    return-void
.end method

.method public final rn_4366(Z)V
    .locals 1

    #@0
    .line 27
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4353;->getView()Landroid/widget/EditText;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    #@7
    .line 28
    return-void
.end method
