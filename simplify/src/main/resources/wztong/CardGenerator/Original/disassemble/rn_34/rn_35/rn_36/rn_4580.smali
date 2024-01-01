.class public Lrn_34/rn_35/rn_36/rn_4580;
.super Ljava/lang/Object;
.source "rn_4580.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 15
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@5
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@8
    .line 17
    return-void
.end method

.method public static newActivity2(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    #@0
    .line 21
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@3
    .line 22
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@6
    .line 23
    return-void
.end method

.method public static newActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    #@0
    .line 26
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@5
    .line 27
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@8
    .line 28
    return-void
.end method

.method public static newActivityForResult2(Landroid/app/Activity;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    #@0
    .line 32
    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@3
    .line 33
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@6
    .line 34
    return-void
.end method

.method public static rn_4586(Landroid/app/Activity;Z)V
    .locals 0

    #@0
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@3
    move-result-object p0

    #@4
    .line 38
    if-nez p0, :cond_0

    #@6
    .line 39
    return-void

    #@7
    .line 41
    :cond_0
    if-eqz p1, :cond_1

    #@9
    .line 42
    invoke-virtual {p0}, Landroid/app/ActionBar;->show()V

    #@c
    goto :goto_0

    #@d
    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    #@10
    .line 46
    :goto_0
    return-void
.end method

.method public static rn_4632(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0

    #@0
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static rn_4636(Landroid/app/Activity;Ljava/lang/Object;Z)V
    .locals 0

    #@0
    .line 53
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    #@b
    .line 54
    return-void
.end method

.method public static rn_4642(Landroid/app/Activity;I)V
    .locals 3

    #@0
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/16 v2, 0x1000

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@d
    move-result-object v0

    #@e
    .line 60
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@10
    .line 61
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 64
    goto :goto_0

    #@14
    .line 62
    :catch_0
    move-exception p0

    #@15
    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@18
    .line 65
    :goto_0
    return-void
.end method
