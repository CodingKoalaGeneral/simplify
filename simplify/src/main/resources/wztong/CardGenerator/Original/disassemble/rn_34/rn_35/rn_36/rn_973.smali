.class public Lrn_34/rn_35/rn_36/rn_973;
.super Ljava/lang/Object;
.source "rn_973.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn_34/rn_35/rn_36/rn_973$rn_1085_r;
    }
.end annotation


# instance fields
.field private rn_1085_v:Lrn_34/rn_35/rn_36/rn_973$rn_1085_r;

.field private rn_974:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rn_975:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lrn_34/rn_35/rn_36/rn_973;->rn_974:Ljava/util/HashMap;

    #@a
    .line 89
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lrn_34/rn_35/rn_36/rn_973;->rn_975:Z

    #@d
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 10

    #@0
    .line 21
    nop

    #@1
    .line 22
    nop

    #@2
    .line 23
    const/high16 v0, 0x100000

    #@4
    const/4 v1, 0x0

    #@5
    :try_start_0
    new-array v0, v0, [B

    #@7
    const/4 v2, 0x0

    #@8
    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    #@b
    move-result v3

    #@c
    const/4 v4, -0x1

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 25
    add-int/2addr v2, v3

    #@10
    .line 26
    int-to-double v4, v2

    #@11
    long-to-double v6, p3

    #@12
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@14
    mul-double v6, v6, v8

    #@16
    div-double/2addr v4, v6

    #@17
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    #@19
    mul-double v4, v4, v6

    #@1b
    .line 27
    invoke-virtual {p0, v4, v5}, Lrn_34/rn_35/rn_36/rn_973;->rn_1085(D)V

    #@1e
    .line 28
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 29
    goto :goto_0

    #@22
    .line 34
    :cond_0
    nop

    #@23
    .line 35
    const/4 p1, 0x1

    #@24
    return p1

    #@25
    .line 32
    :catch_0
    move-exception p1

    #@26
    .line 33
    return v1
.end method

.method private static formatData(Ljava/lang/Object;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 39
    nop

    #@1
    .line 40
    instance-of v0, p0, Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 41
    check-cast p0, Ljava/lang/String;

    #@7
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@a
    move-result-object p0

    #@b
    goto :goto_0

    #@c
    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 43
    check-cast p0, [B

    #@1a
    check-cast p0, [B

    #@1c
    goto :goto_0

    #@1d
    .line 44
    :cond_1
    instance-of v0, p0, Ljava/io/File;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 45
    new-instance p1, Ljava/io/FileInputStream;

    #@23
    check-cast p0, Ljava/io/File;

    #@25
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@28
    invoke-static {p1}, Lrn_34/rn_35/rn_36/rn_973;->readAll(Ljava/io/InputStream;)[B

    #@2b
    move-result-object p0

    #@2c
    goto :goto_0

    #@2d
    .line 47
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object p0

    #@31
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@34
    move-result-object p0

    #@35
    .line 48
    :goto_0
    return-object p0
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    const/16 v1, 0x1000

    #@4
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@7
    .line 53
    const/16 v1, 0x22

    #@9
    new-array v1, v1, [B

    #@b
    .line 54
    nop

    #@c
    .line 55
    :goto_0
    const/4 v2, -0x1

    #@d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@10
    move-result v3

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 56
    const/4 v2, 0x0

    #@14
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@17
    goto :goto_0

    #@18
    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object p0

    #@1c
    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    #@1f
    .line 60
    return-object p0
.end method

.method private final rn_1026(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;
    .locals 8

    #@0
    .line 109
    const-string v2, "POST"

    #@2
    const/4 v3, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p3

    #@7
    move v6, p4

    #@8
    move-object v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Lrn_34/rn_35/rn_36/rn_973;->rn_1062(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    return-object p1
.end method

.method private final rn_1062(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;
    .locals 18

    #@0
    .line 114
    move-object/from16 v1, p0

    #@2
    move-object/from16 v0, p1

    #@4
    move-object/from16 v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    move-object/from16 v4, p4

    #@a
    move-object/from16 v5, p5

    #@c
    move/from16 v6, p6

    #@e
    move-object/from16 v7, p7

    #@10
    const-string v8, "Accept-Charset"

    #@12
    const-string v9, "https://"

    #@14
    :try_start_0
    new-instance v11, Ljava/net/URL;

    #@16
    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@19
    .line 117
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 118
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    #@25
    .line 119
    invoke-static {}, Lrn_34/rn_35/rn_36/rn_973;->setSsl()V

    #@28
    goto :goto_0

    #@29
    .line 121
    :cond_0
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/net/HttpURLConnection;

    #@2f
    .line 123
    :goto_0
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@32
    .line 124
    const/4 v12, 0x1

    #@33
    invoke-static {v12}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    #@36
    .line 125
    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    #@39
    .line 127
    invoke-virtual {v0, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 129
    const-string v13, "Cookie"

    #@3e
    if-eqz v5, :cond_1

    #@40
    .line 130
    :try_start_1
    invoke-virtual {v0, v13, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 133
    :cond_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@46
    .line 135
    iget-object v14, v1, Lrn_34/rn_35/rn_36/rn_973;->rn_974:Ljava/util/HashMap;

    #@48
    if-eqz v14, :cond_2

    #@4a
    .line 136
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@4d
    move-result-object v14

    #@4e
    .line 137
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v14

    #@52
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v15

    #@56
    if-eqz v15, :cond_2

    #@58
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v15

    #@5c
    check-cast v15, Ljava/util/Map$Entry;

    #@5e
    .line 138
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@61
    move-result-object v16

    #@62
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@69
    move-result-object v15

    #@6a
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@6d
    move-result-object v15

    #@6e
    invoke-virtual {v0, v10, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@71
    .line 139
    goto :goto_1

    #@72
    .line 142
    :cond_2
    nop

    #@73
    .line 143
    const-string v10, ""

    #@75
    const-string v14, "Content-length"

    #@77
    if-eqz v4, :cond_3

    #@79
    .line 144
    :try_start_2
    invoke-static {v4, v7}, Lrn_34/rn_35/rn_36/rn_973;->formatData(Ljava/lang/Object;Ljava/lang/String;)[B

    #@7c
    move-result-object v4

    #@7d
    .line 145
    if-eqz v4, :cond_4

    #@7f
    .line 146
    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@82
    .line 147
    new-instance v15, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    array-length v12, v4

    #@8b
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v0, v14, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 148
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@98
    move-result-object v12

    #@99
    .line 149
    invoke-virtual {v12, v4}, Ljava/io/OutputStream;->write([B)V

    #@9c
    goto :goto_2

    #@9d
    .line 143
    :cond_3
    const/4 v4, 0x0

    #@9e
    .line 152
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@a1
    .line 154
    const-string v12, "GET"

    #@a3
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@a7
    const-string v15, ";"

    #@a9
    move-object/from16 v16, v14

    #@ab
    const-string v14, "Set-Cookie"

    #@ad
    move-object/from16 v17, v10

    #@af
    const/4 v10, 0x0

    #@b0
    if-eqz v12, :cond_7

    #@b2
    if-eqz v3, :cond_7

    #@b4
    .line 155
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    #@b7
    move-result-wide v4

    #@b8
    .line 156
    new-instance v2, Ljava/io/File;

    #@ba
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@bd
    .line 157
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@c4
    move-result v3

    #@c5
    if-nez v3, :cond_5

    #@c7
    .line 158
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@ce
    .line 160
    :cond_5
    new-instance v3, Ljava/io/FileOutputStream;

    #@d0
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@d3
    .line 161
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@d6
    move-result-object v2

    #@d7
    .line 162
    invoke-direct {v1, v2, v3, v4, v5}, Lrn_34/rn_35/rn_36/rn_973;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    #@da
    .line 163
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@dd
    move-result-object v0

    #@de
    .line 164
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    move-result-object v0

    #@e2
    check-cast v0, Ljava/util/List;

    #@e4
    .line 165
    new-instance v2, Ljava/lang/StringBuffer;

    #@e6
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@e9
    .line 166
    if-eqz v0, :cond_6

    #@eb
    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@ee
    move-result-object v0

    #@ef
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f2
    move-result v3

    #@f3
    if-eqz v3, :cond_6

    #@f5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f8
    move-result-object v3

    #@f9
    check-cast v3, Ljava/lang/String;

    #@fb
    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v3

    #@10a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10d
    .line 169
    goto :goto_3

    #@10e
    .line 171
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@111
    move-result-object v0

    #@112
    .line 172
    const/4 v2, 0x1

    #@113
    new-array v2, v2, [Ljava/lang/Object;

    #@115
    aput-object v0, v2, v10

    #@117
    return-object v2

    #@118
    .line 174
    :cond_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@11b
    move-result v3

    #@11c
    .line 176
    iget-boolean v12, v1, Lrn_34/rn_35/rn_36/rn_973;->rn_975:Z

    #@11e
    if-eqz v12, :cond_d

    #@120
    const/16 v12, 0x12e

    #@122
    if-eq v3, v12, :cond_8

    #@124
    const/16 v12, 0x12d

    #@126
    if-eq v3, v12, :cond_8

    #@128
    const/16 v12, 0x12f

    #@12a
    if-ne v3, v12, :cond_d

    #@12c
    .line 179
    :cond_8
    const-string v3, "Location"

    #@12e
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@131
    move-result-object v3

    #@132
    .line 180
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@135
    .line 181
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@138
    move-result v0

    #@139
    if-eqz v0, :cond_9

    #@13b
    .line 182
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@13e
    move-result-object v0

    #@13f
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    #@141
    .line 183
    invoke-static {}, Lrn_34/rn_35/rn_36/rn_973;->setSsl()V

    #@144
    goto :goto_4

    #@145
    .line 185
    :cond_9
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@148
    move-result-object v0

    #@149
    check-cast v0, Ljava/net/HttpURLConnection;

    #@14b
    .line 187
    :goto_4
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@14e
    .line 188
    const/4 v3, 0x1

    #@14f
    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    #@152
    .line 189
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    #@155
    .line 190
    invoke-virtual {v0, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@158
    .line 191
    if-eqz v5, :cond_a

    #@15a
    .line 192
    invoke-virtual {v0, v13, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@15d
    .line 193
    :cond_a
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@160
    .line 194
    iget-object v2, v1, Lrn_34/rn_35/rn_36/rn_973;->rn_974:Ljava/util/HashMap;

    #@162
    if-eqz v2, :cond_b

    #@164
    .line 195
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@167
    move-result-object v2

    #@168
    .line 196
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16b
    move-result-object v2

    #@16c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16f
    move-result v3

    #@170
    if-eqz v3, :cond_b

    #@172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@175
    move-result-object v3

    #@176
    check-cast v3, Ljava/util/Map$Entry;

    #@178
    .line 197
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17b
    move-result-object v5

    #@17c
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@17f
    move-result-object v5

    #@180
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@183
    move-result-object v3

    #@184
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@187
    move-result-object v3

    #@188
    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@18b
    .line 198
    goto :goto_5

    #@18c
    .line 200
    :cond_b
    if-eqz v4, :cond_c

    #@18e
    .line 201
    const/4 v2, 0x1

    #@18f
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@192
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    move-object/from16 v3, v17

    #@199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    array-length v3, v4

    #@19d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v2

    #@1a4
    move-object/from16 v3, v16

    #@1a6
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1a9
    .line 203
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@1ac
    move-result-object v2

    #@1ad
    .line 204
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    #@1b0
    .line 206
    :cond_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@1b3
    .line 207
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@1b6
    move-result v3

    #@1b7
    .line 210
    :cond_d
    const/16 v2, 0xc8

    #@1b9
    if-lt v3, v2, :cond_10

    #@1bb
    const/16 v2, 0x190

    #@1bd
    if-ge v3, v2, :cond_10

    #@1bf
    .line 211
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@1c2
    move-result-object v2

    #@1c3
    .line 212
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c6
    move-result-object v2

    #@1c7
    check-cast v2, Ljava/util/List;

    #@1c9
    .line 213
    new-instance v3, Ljava/lang/StringBuffer;

    #@1cb
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@1ce
    .line 214
    if-eqz v2, :cond_e

    #@1d0
    .line 215
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d3
    move-result-object v2

    #@1d4
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d7
    move-result v4

    #@1d8
    if-eqz v4, :cond_e

    #@1da
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1dd
    move-result-object v4

    #@1de
    check-cast v4, Ljava/lang/String;

    #@1e0
    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v4

    #@1ef
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f2
    .line 217
    goto :goto_6

    #@1f3
    .line 219
    :cond_e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@1f5
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1f8
    .line 220
    const/16 v4, 0x400

    #@1fa
    new-array v4, v4, [B

    #@1fc
    .line 222
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@1ff
    move-result-object v0

    #@200
    .line 223
    :goto_7
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    #@203
    move-result v5

    #@204
    const/4 v6, -0x1

    #@205
    if-eq v5, v6, :cond_f

    #@207
    .line 224
    invoke-virtual {v2, v4, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@20a
    goto :goto_7

    #@20b
    .line 226
    :cond_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@20e
    move-result-object v4

    #@20f
    .line 227
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    #@212
    .line 228
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@215
    .line 229
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@218
    move-result-object v0

    #@219
    .line 230
    const/4 v2, 0x2

    #@21a
    new-array v2, v2, [Ljava/lang/Object;

    #@21c
    aput-object v4, v2, v10

    #@21e
    const/4 v3, 0x1

    #@21f
    aput-object v0, v2, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@221
    return-object v2

    #@222
    .line 234
    :cond_10
    goto :goto_8

    #@223
    .line 232
    :catch_0
    move-exception v0

    #@224
    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@227
    .line 235
    :goto_8
    const/4 v2, 0x0

    #@228
    return-object v2
.end method

.method private static setSsl()V
    .locals 5

    #@0
    .line 65
    :try_start_0
    new-instance v0, Lrn_34/rn_35/rn_36/rn_973$1;

    #@2
    invoke-direct {v0}, Lrn_34/rn_35/rn_36/rn_973$1;-><init>()V

    #@5
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    #@8
    .line 70
    const-string v0, "TLS"

    #@a
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    #@d
    move-result-object v0

    #@e
    .line 71
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    #@12
    const/4 v3, 0x0

    #@13
    new-instance v4, Lrn_34/rn_35/rn_36/rn_973$2;

    #@15
    invoke-direct {v4}, Lrn_34/rn_35/rn_36/rn_973$2;-><init>()V

    #@18
    aput-object v4, v2, v3

    #@1a
    new-instance v3, Ljava/security/SecureRandom;

    #@1c
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@22
    .line 82
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@25
    move-result-object v0

    #@26
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 85
    goto :goto_0

    #@2a
    .line 83
    :catch_0
    move-exception v0

    #@2b
    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@2e
    .line 86
    :goto_0
    return-void
.end method


# virtual methods
.method public final rn_1013(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    .line 92
    invoke-virtual/range {p0 .. p5}, Lrn_34/rn_35/rn_36/rn_973;->rn_1020(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)[B

    #@3
    move-result-object p1

    #@4
    .line 93
    if-nez p1, :cond_0

    #@6
    .line 94
    const-string p1, ""

    #@8
    return-object p1

    #@9
    .line 96
    :cond_0
    invoke-static {p1, p5}, Lrn_1592/rn_1593/rn_1594/rn_1602;->rn_1670([BLjava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    return-object p1
.end method

.method public final rn_1020(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)[B
    .locals 0

    #@0
    .line 101
    invoke-direct/range {p0 .. p5}, Lrn_34/rn_35/rn_36/rn_973;->rn_1026(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .line 102
    const/4 p2, 0x0

    #@5
    if-nez p1, :cond_0

    #@7
    .line 103
    new-array p1, p2, [B

    #@9
    return-object p1

    #@a
    .line 105
    :cond_0
    aget-object p1, p1, p2

    #@c
    check-cast p1, [B

    #@e
    check-cast p1, [B

    #@10
    return-object p1
.end method

.method public final rn_1085(D)V
    .locals 1

    #@0
    .line 246
    iget-object v0, p0, Lrn_34/rn_35/rn_36/rn_973;->rn_1085_v:Lrn_34/rn_35/rn_36/rn_973$rn_1085_r;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 247
    invoke-interface {v0, p1, p2}, Lrn_34/rn_35/rn_36/rn_973$rn_1085_r;->dispatch(D)V

    #@7
    .line 249
    :cond_0
    return-void
.end method

.method public final rn_1085_s(Lrn_34/rn_35/rn_36/rn_973$rn_1085_r;)V
    .locals 0

    #@0
    .line 243
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_973;->rn_1085_v:Lrn_34/rn_35/rn_36/rn_973$rn_1085_r;

    #@2
    .line 244
    return-void
.end method
