.class public Lrn_1592/rn_1593/rn_1594/rn_1602;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static rn_1670([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    #@0
    const/4 v1, 0x0

    #@1
    const-string v0, "\u06e8\u06e5\u06e2"

    #@3
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@a
    goto :goto_0

    #@b
    :sswitch_0
    move-object v0, v1

    #@c
    :goto_1
    return-object v0

    #@d
    :sswitch_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@f
    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    invoke-static {}, Lrn_1/ۣ۟ۧۤۦ;->ۣ۟ۢۨۢ()I

    #@15
    move-result v0

    #@16
    if-gtz v0, :cond_0

    #@18
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@1b
    const-string v0, "\u06e3\u06e3\u06e3"

    #@1d
    :goto_2
    invoke-static {v0}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    :cond_0
    const-string v0, "\u06e3\u06e2"

    #@24
    goto :goto_2

    #@25
    :catch_0
    move-exception v0

    #@26
    new-instance v0, Ljava/lang/String;

    #@28
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    #@2b
    goto :goto_1

    #@2c
    :sswitch_2
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@2f
    move-result v0

    #@30
    if-gtz v0, :cond_1

    #@32
    const-string v0, "\u06e1\u06e6\u06df"

    #@34
    :goto_3
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@37
    move-result v0

    #@38
    goto :goto_0

    #@39
    :cond_1
    const-string v0, "\u06df\u06e1\u06e2"

    #@3b
    :goto_4
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@3e
    move-result v0

    #@3f
    goto :goto_0

    #@40
    :sswitch_3
    const-string v0, "\u06e3\u06e2"

    #@42
    goto :goto_3

    #@43
    :sswitch_4
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@45
    const-string v0, "\u06df\u06e1\u06e2"

    #@47
    goto :goto_4

    #@48
    :sswitch_5
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@4b
    move-result v0

    #@4c
    if-ltz v0, :cond_2

    #@4e
    invoke-static {}, Ltdr/util/ۥۢ۠۟;->۟ۧۥۣ۟()I

    #@51
    const-string v0, "\u06df\u06e5\u06e5"

    #@53
    goto :goto_4

    #@54
    :cond_2
    const-string v0, "\u06e8\u06e5\u06e2"

    #@56
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@59
    move-result v0

    #@5a
    goto :goto_0

    #@5b
    nop

    #@5c
    :sswitch_data_0
    .sparse-switch
        0xdc5f -> :sswitch_0
        0x1aa740 -> :sswitch_1
        0x1ab683 -> :sswitch_2
        0x1ac23f -> :sswitch_5
        0x1ac985 -> :sswitch_4
        0x1ac9c7 -> :sswitch_3
    .end sparse-switch
.end method
