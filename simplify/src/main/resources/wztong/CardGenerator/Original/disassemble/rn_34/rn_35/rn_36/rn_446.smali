.class public Lrn_34/rn_35/rn_36/rn_446;
.super Ljava/lang/Object;
.source "rn_446.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static rn_450(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method
