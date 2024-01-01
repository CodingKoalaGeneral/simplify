.class public Lrn_65/rn_66/rn_67/ۣۢۢۤ;
.super Ljava/lang/Object;


# static fields
.field public static ۣ۟ۢ۠۟:[S = null

.field public static ۤۨۦۢ:I = -0xa


# direct methods
.method public static ۟۠ۤ۠ۧ(Ljava/lang/String;)Ljava/lang/String;
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
    move-result-object v3

    #@20
    array-length v4, v3

    #@21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@24
    move-result v5

    #@25
    move v0, v1

    #@26
    :goto_2
    if-lt v0, v4, :cond_2

    #@28
    :goto_3
    array-length v0, v3

    #@29
    if-lt v1, v0, :cond_3

    #@2b
    new-instance v0, Ljava/lang/String;

    #@2d
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #@30
    return-object v0

    #@31
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    new-instance v4, Ljava/lang/StringBuffer;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@4b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {}, Ljava/lang/Math;->random()D

    #@52
    move-result-wide v4

    #@53
    const/16 v6, 0xa

    #@55
    int-to-double v6, v6

    #@56
    mul-double/2addr v4, v6

    #@57
    double-to-int v4, v4

    #@58
    xor-int/2addr v4, v0

    #@59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v5

    #@68
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@6b
    move-result v5

    #@6c
    shl-int/lit8 v5, v5, 0x4

    #@6e
    add-int/lit8 v6, v0, 0x1

    #@70
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v6

    #@74
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@77
    move-result v6

    #@78
    or-int/2addr v5, v6

    #@79
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7c
    add-int/lit8 v0, v0, 0x2

    #@7e
    goto :goto_1

    #@7f
    :cond_2
    aget-byte v6, v3, v0

    #@81
    rem-int v7, v0, v5

    #@83
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    #@86
    move-result v7

    #@87
    xor-int/2addr v6, v7

    #@88
    int-to-byte v6, v6

    #@89
    aput-byte v6, v3, v0

    #@8b
    add-int/lit8 v0, v0, 0x1

    #@8d
    goto :goto_2

    #@8e
    :cond_3
    const-string v0, ""

    #@90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@93
    move-result v0

    #@94
    add-int/lit8 v1, v0, 0x1

    #@96
    goto :goto_3
.end method

.method public static ۣ۟ۡۧ۟([SIII)Ljava/lang/String;
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

.method public static ۟ۦ۟ۢۢ(Ljava/lang/Object;)I
    .locals 1

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static ۡۡۧ۠()I
    .locals 2

    #@0
    const v0, 0x1aaed0

    #@3
    const-string v1, "\u06e1\u06e2\u06e3"

    #@5
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    xor-int v0, v0, v1

    #@b
    return v0
.end method
