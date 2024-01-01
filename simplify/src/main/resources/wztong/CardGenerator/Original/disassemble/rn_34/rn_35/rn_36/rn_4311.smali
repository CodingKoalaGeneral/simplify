.class public Lrn_34/rn_35/rn_36/rn_4311;
.super Lrn_34/rn_35/rn_36/rn_4206;
.source "rn_4311.java"


# instance fields
.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    #@0
    .line 14
    invoke-direct {p0, p1}, Lrn_34/rn_35/rn_36/rn_4206;-><init>(Landroid/content/Context;)V

    #@3
    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    #@0
    .line 10
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getView()Landroid/widget/TextView;
    .locals 1

    #@0
    .line 25
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_4311;->view:Landroid/view/View;

    #@2
    check-cast v0, Landroid/widget/TextView;

    #@4
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    #@0
    .line 10
    invoke-virtual {p0, p1}, Lrn_34/rn_35/rn_36/rn_4311;->onCreateView(Landroid/content/Context;)Landroid/widget/TextView;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1

    #@0
    .line 19
    new-instance v0, Landroid/widget/TextView;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@5
    .line 20
    return-object v0
.end method

.method public final rn_270(I)V
    .locals 1

    #@0
    .line 29
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    #@7
    .line 30
    return-void
.end method

.method public final rn_378()Ljava/lang/String;
    .locals 1

    #@0
    .line 37
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final rn_378(Ljava/lang/String;)V
    .locals 1

    #@0
    .line 33
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 34
    return-void
.end method

.method public final rn_384(I)V
    .locals 1

    #@0
    .line 58
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    int-to-float p1, p1

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    #@8
    .line 59
    return-void
.end method

.method public final rn_386(I)V
    .locals 1

    #@0
    .line 62
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@7
    .line 63
    return-void
.end method

.method public final rn_4316(Z)V
    .locals 1

    #@0
    .line 41
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    #@7
    move-result-object v0

    #@8
    .line 42
    if-eqz p1, :cond_1

    #@a
    .line 43
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_0

    #@10
    .line 44
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@13
    move-result-object p1

    #@14
    const/4 v0, 0x3

    #@15
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@1c
    goto :goto_0

    #@1d
    .line 46
    :cond_0
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@20
    move-result-object p1

    #@21
    const/4 v0, 0x1

    #@22
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@29
    goto :goto_0

    #@2a
    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    #@2d
    move-result p1

    #@2e
    if-eqz p1, :cond_2

    #@30
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    #@33
    move-result p1

    #@34
    if-eqz p1, :cond_2

    #@36
    .line 50
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@39
    move-result-object p1

    #@3a
    const/4 v0, 0x2

    #@3b
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@42
    goto :goto_0

    #@43
    .line 52
    :cond_2
    invoke-virtual {p0}, Lrn_34/rn_35/rn_36/rn_4311;->getView()Landroid/widget/TextView;

    #@46
    move-result-object p1

    #@47
    const/4 v0, 0x0

    #@48
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@4f
    .line 55
    :goto_0
    return-void
.end method
