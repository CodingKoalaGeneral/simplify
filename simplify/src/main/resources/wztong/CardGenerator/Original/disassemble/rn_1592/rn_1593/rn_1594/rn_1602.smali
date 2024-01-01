.class public Lrn_1592/rn_1593/rn_1594/rn_1602;
.super Ljava/lang/Object;
.source "rn_1602.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static rn_1670([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    #@0
    .line 9
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v0

    #@6
    .line 10
    :catch_0
    move-exception p1

    #@7
    .line 11
    new-instance p1, Ljava/lang/String;

    #@9
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    #@c
    return-object p1
.end method
