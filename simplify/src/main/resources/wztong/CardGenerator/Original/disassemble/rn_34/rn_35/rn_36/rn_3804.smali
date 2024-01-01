.class public Lrn_34/rn_35/rn_36/rn_3804;
.super Ljava/lang/Object;
.source "rn_3804.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final rn_3805(Landroid/content/Context;I)I
    .locals 0

    #@0
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object p0

    #@8
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    #@a
    .line 9
    int-to-float p1, p1

    #@b
    mul-float p1, p1, p0

    #@d
    const/high16 p0, 0x3f000000    # 0.5f

    #@f
    add-float/2addr p1, p0

    #@10
    float-to-int p0, p1

    #@11
    return p0
.end method
