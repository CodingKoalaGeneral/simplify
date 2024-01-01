.class public Lrn_34/rn_35/rn_36/rn_3572;
.super Ljava/lang/Object;
.source "rn_3572.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final rn_3573(Landroid/content/Context;)I
    .locals 1

    #@0
    .line 19
    const-string v0, "window"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/view/WindowManager;

    #@8
    .line 20
    new-instance v0, Landroid/util/DisplayMetrics;

    #@a
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@d
    .line 21
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@14
    .line 22
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@16
    return p0
.end method

.method public static final rn_3575(Landroid/content/Context;)I
    .locals 1

    #@0
    .line 26
    const-string v0, "window"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/view/WindowManager;

    #@8
    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    #@a
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@d
    .line 28
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@14
    .line 29
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@16
    return p0
.end method

.method public static final rn_3579(Landroid/content/Context;)I
    .locals 5

    #@0
    .line 33
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3587(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 34
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3575(Landroid/content/Context;)I

    #@9
    move-result v0

    #@a
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3583(Landroid/content/Context;)I

    #@d
    move-result p0

    #@e
    sub-int/2addr v0, p0

    #@f
    return v0

    #@10
    .line 36
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    #@12
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@15
    .line 37
    const-string v1, "window"

    #@17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/view/WindowManager;

    #@1d
    .line 38
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@24
    .line 39
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@26
    .line 40
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3583(Landroid/content/Context;)I

    #@29
    move-result v1

    #@2a
    .line 41
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@2c
    const-string v3, "Xiaomi"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@37
    move-result-object v2

    #@38
    const/4 v3, 0x0

    #@39
    const-string v4, "force_fsg_nav_bar"

    #@3b
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 42
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3585(Landroid/content/Context;)I

    #@44
    move-result p0

    #@45
    add-int/2addr v0, p0

    #@46
    sub-int/2addr v0, v1

    #@47
    return v0

    #@48
    .line 44
    :cond_1
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3585(Landroid/content/Context;)I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v2, v0

    #@4d
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3575(Landroid/content/Context;)I

    #@50
    move-result p0

    #@51
    if-ge v2, p0, :cond_2

    #@53
    .line 45
    add-int/2addr v0, v1

    #@54
    .line 47
    :cond_2
    sub-int/2addr v0, v1

    #@55
    return v0
.end method

.method public static final rn_3583(Landroid/content/Context;)I
    .locals 3

    #@0
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const-string v1, "status_bar_height"

    #@4
    const/16 v2, 0x1d

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 53
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    #@a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@29
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    return p0

    #@2b
    .line 55
    :catch_0
    move-exception p0

    #@2c
    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@2f
    .line 57
    const/4 p0, 0x0

    #@30
    return p0

    #@31
    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object p0

    #@35
    .line 61
    const-string v0, "dimen"

    #@37
    const-string v2, "android"

    #@39
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@40
    move-result p0

    #@41
    return p0
.end method

.method public static final rn_3585(Landroid/content/Context;)I
    .locals 3

    #@0
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x11

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 67
    const/4 p0, 0x0

    #@7
    return p0

    #@8
    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object p0

    #@c
    .line 70
    const-string v0, "navigation_bar_height"

    #@e
    const-string v1, "dimen"

    #@10
    const-string v2, "android"

    #@12
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@19
    move-result p0

    #@1a
    return p0
.end method

.method public static final rn_3587(Landroid/content/Context;)Z
    .locals 4

    #@0
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/4 v1, 0x0

    #@3
    const/16 v2, 0x11

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 75
    return v1

    #@8
    .line 77
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@a
    const-string v2, "Xiaomi"

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v0

    #@16
    const-string v2, "force_fsg_nav_bar"

    #@18
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 78
    return v1

    #@1f
    .line 80
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    #@21
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@24
    .line 81
    const-string v2, "window"

    #@26
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/view/WindowManager;

    #@2c
    .line 82
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    #@33
    .line 83
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@35
    .line 84
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@3c
    .line 85
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@3e
    sub-int/2addr v3, v0

    #@3f
    invoke-static {p0}, Lrn_34/rn_35/rn_36/rn_3572;->rn_3583(Landroid/content/Context;)I

    #@42
    move-result p0

    #@43
    sub-int/2addr v3, p0

    #@44
    if-lez v3, :cond_2

    #@46
    .line 86
    const/4 p0, 0x1

    #@47
    return p0

    #@48
    .line 88
    :cond_2
    return v1
.end method

.method public static final rn_3589(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    #@0
    .line 92
    const-string v0, "clipboard"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/content/ClipboardManager;

    #@8
    .line 93
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 94
    return-void
.end method
