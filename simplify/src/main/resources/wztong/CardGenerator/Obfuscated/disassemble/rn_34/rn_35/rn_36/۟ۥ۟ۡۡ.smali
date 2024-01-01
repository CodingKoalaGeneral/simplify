.class public Lrn_34/rn_35/rn_36/۟ۥ۟ۡۡ;
.super Ljava/lang/Object;


# static fields
.field public static ۠۠۠:[S = null

.field public static ۥۦ۟ۦ:I = -0x4b


# direct methods
.method public static ۣ۟ۢۢۤ(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-string v3, ""

    #@3
    const-string v2, ""

    #@5
    move v0, v1

    #@6
    :goto_0
    const/16 v4, 0xf

    #@8
    if-lt v0, v4, :cond_0

    #@a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    div-int/lit8 v0, v0, 0x2

    #@12
    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@15
    move v0, v1

    #@16
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    if-lt v0, v5, :cond_1

    #@1c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1f
    move-result-object v0

    #@20
    array-length v3, v0

    #@21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@24
    move-result v4

    #@25
    :goto_2
    if-gtz v3, :cond_2

    #@27
    :goto_3
    array-length v2, v0

    #@28
    if-lt v1, v2, :cond_3

    #@2a
    new-instance v1, Ljava/lang/String;

    #@2c
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    #@2f
    return-object v1

    #@30
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    move-result-object v3

    #@39
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    new-instance v4, Ljava/lang/StringBuffer;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@4a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {}, Ljava/lang/Math;->random()D

    #@51
    move-result-wide v4

    #@52
    const/16 v6, 0xa

    #@54
    int-to-double v6, v6

    #@55
    mul-double/2addr v4, v6

    #@56
    double-to-int v4, v4

    #@57
    xor-int/2addr v4, v0

    #@58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    add-int/lit8 v0, v0, 0x1

    #@62
    goto :goto_0

    #@63
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@66
    move-result v5

    #@67
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@6a
    move-result v5

    #@6b
    shl-int/lit8 v5, v5, 0x4

    #@6d
    add-int/lit8 v6, v0, 0x1

    #@6f
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@72
    move-result v6

    #@73
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@76
    move-result v6

    #@77
    or-int/2addr v5, v6

    #@78
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7b
    add-int/lit8 v0, v0, 0x2

    #@7d
    goto :goto_1

    #@7e
    :cond_2
    const/4 v5, -0x1

    #@7f
    aget-byte v6, v0, v5

    #@81
    rem-int v7, v5, v4

    #@83
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    #@86
    move-result v7

    #@87
    xor-int/2addr v6, v7

    #@88
    int-to-byte v6, v6

    #@89
    aput-byte v6, v0, v5

    #@8b
    goto :goto_2

    #@8c
    :cond_3
    const-string v1, ""

    #@8e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@91
    move-result v1

    #@92
    add-int/lit8 v1, v1, 0x1

    #@94
    goto :goto_3
.end method

.method public static ۣۣ۟ۧۧ(Ljava/lang/Object;)I
    .locals 1

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static ۟ۥۥۨۡ()I
    .locals 2

    #@0
    const v0, -0x1ac5ce

    #@3
    const-string v1, "\u06e7\u06e5\u06e0"

    #@5
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    xor-int v0, v0, v1

    #@b
    return v0
.end method

.method public static ۨ۟ۡۧ([SIII)Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 25
    new-array v1, p2, [C

    #@2
    .line 26
    const/4 v0, 0x0

    #@3
    :goto_0
    if-ge v0, p2, :cond_0

    #@5
    .line 27
    add-int v2, p1, v0

    #@7
    aget-short v2, p0, v2

    #@9
    xor-int/2addr v2, p3

    #@a
    int-to-char v2, v2

    #@b
    aput-char v2, v1, v0

    #@d
    .line 26
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@12
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@15
    return-object v0
.end method
