.class public Lrn_34/rn_35/rn_36/rn_3804;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final rn_3805(Landroid/content/Context;I)I
    .locals 2

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "\u06e0\u06e8\u06e8"

    #@3
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    sget-object v0, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۣ۟ۢ۠۟:[S

    #@d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@14
    move-result-object v0

    #@15
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@17
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@1a
    move-result v0

    #@1b
    if-gtz v0, :cond_0

    #@1d
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@20
    :cond_0
    const-string v0, "\u06e8\u06e7\u06e8"

    #@22
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :sswitch_1
    int-to-float v0, p1

    #@28
    mul-float/2addr v0, v1

    #@29
    const/high16 v1, 0x3f000000    # 0.5f

    #@2b
    add-float/2addr v0, v1

    #@2c
    float-to-int v0, v0

    #@2d
    return v0

    #@2e
    :sswitch_2
    const-string v0, "\u06e0\u06e8\u06e8"

    #@30
    invoke-static {v0}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۢ۠ۢ(Ljava/lang/Object;)I

    #@33
    move-result v0

    #@34
    goto :goto_0

    #@35
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x1aabe0 -> :sswitch_0
        0x1aaea5 -> :sswitch_2
        0x1ac9c9 -> :sswitch_1
    .end sparse-switch
.end method
