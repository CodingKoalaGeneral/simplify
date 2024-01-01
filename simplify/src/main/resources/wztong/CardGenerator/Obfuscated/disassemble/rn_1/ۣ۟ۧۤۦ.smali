.class public Lrn_1/ۣ۟ۧۤۦ;
.super Ljava/lang/Object;


# static fields
.field public static ۟۠ۡۨۧ:[S = null

.field public static ۟ۤۤۢۧ:Z = true


# direct methods
.method public static ۟۟۠ۥۡ(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-string v3, ""

    #@3
    const-string v2, ""

    #@5
    move v1, v0

    #@6
    :goto_0
    const/16 v4, 0xf

    #@8
    if-lt v1, v4, :cond_0

    #@a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    div-int/lit8 v4, v4, 0x2

    #@12
    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@15
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v4

    #@19
    if-gtz v4, :cond_1

    #@1b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1e
    move-result-object v1

    #@1f
    array-length v3, v1

    #@20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@23
    move-result v4

    #@24
    :goto_2
    if-lt v0, v3, :cond_2

    #@26
    new-instance v0, Ljava/lang/String;

    #@28
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@2b
    return-object v0

    #@2c
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@31
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v3

    #@35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    new-instance v4, Ljava/lang/StringBuffer;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    move-result-object v2

    #@4a
    invoke-static {}, Ljava/lang/Math;->random()D

    #@4d
    move-result-wide v4

    #@4e
    const/16 v6, 0xa

    #@50
    int-to-double v6, v6

    #@51
    mul-double/2addr v4, v6

    #@52
    double-to-int v4, v4

    #@53
    xor-int/2addr v4, v1

    #@54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_0

    #@5f
    :cond_1
    const/4 v4, -0x2

    #@60
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v4

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@67
    move-result v4

    #@68
    shl-int/lit8 v4, v4, 0x4

    #@6a
    const/4 v5, -0x1

    #@6b
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@6e
    move-result v5

    #@6f
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@72
    move-result v5

    #@73
    or-int/2addr v4, v5

    #@74
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@77
    goto :goto_1

    #@78
    :cond_2
    aget-byte v5, v1, v0

    #@7a
    rem-int v6, v0, v4

    #@7c
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v6

    #@80
    xor-int/2addr v5, v6

    #@81
    int-to-byte v5, v5

    #@82
    aput-byte v5, v1, v0

    #@84
    add-int/lit8 v0, v0, 0x1

    #@86
    goto :goto_2
.end method

.method public static ۣ۟ۢۨۢ()I
    .locals 2

    #@0
    const v0, 0x1aa771

    #@3
    const-string v1, "\u06df\u06e0\u06e7"

    #@5
    invoke-static {v1}, Lrn_1/ۣ۟ۧۤۦ;->ۨۥ۟ۦ(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    xor-int v0, v0, v1

    #@b
    return v0
.end method

.method public static ۥۤ۠ۨ([SIII)Ljava/lang/String;
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

.method public static ۨۥ۟ۦ(Ljava/lang/Object;)I
    .locals 1

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method
