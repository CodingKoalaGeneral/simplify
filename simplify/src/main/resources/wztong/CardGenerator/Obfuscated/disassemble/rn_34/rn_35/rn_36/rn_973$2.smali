.class final Lrn_34/rn_35/rn_36/rn_973$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrn_34/rn_35/rn_36/rn_973;->setSsl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    const-string v0, "\u06e5\u06e7\u06e2"

    #@2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۨۨۦۥ()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06e8\u06e2\u06e1"

    #@12
    :goto_1
    invoke-static {v0}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->۟ۦ۟ۢۢ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :cond_0
    const-string v0, "\u06e5\u06e7\u06e2"

    #@19
    goto :goto_1

    #@1a
    :sswitch_1
    sget-object v0, Ltdr/util/ۥۢ۠۟;->ۣ۟ۢۦۥ:[S

    #@1c
    return-void

    #@1d
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x1ab342 -> :sswitch_0
        0x1abe80 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    const-string v0, "\u06e6\u06e8\u06e4"

    #@2
    invoke-static {v0}, Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;->ۣۣ۟ۧۧ(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@9
    goto :goto_0

    #@a
    :sswitch_0
    invoke-static {}, Lrn_65/rn_66/rn_67/ۣۢۢۤ;->ۡۡۧ۠()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    const-string v0, "\u06e3\u06e0"

    #@12
    :goto_1
    invoke-static {v0}, Ltdr/util/ۥۢ۠۟;->۟ۢۡۨۡ(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    :sswitch_1
    sget-object v0, Lrn_65/rn_66/rn_67/۠ۨۨۦ;->ۢۡ۟ۥ:[S

    #@19
    return-void

    #@1a
    :cond_0
    const-string v0, "\u06e6\u06e8\u06e4"

    #@1c
    goto :goto_1

    #@1d
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x1abe67 -> :sswitch_0
        0x1ac262 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    #@3
    return-object v0
.end method
