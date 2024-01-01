.class public final Ltdr/util/HotLoader;
.super Ljava/lang/Object;
.source "HotLoader.java"


# static fields
.field private static final APK_SUFFIX:Ljava/lang/String; = ".apk"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final FIELD_DEX_ELEMENTS:Ljava/lang/String; = "dexElements"

.field private static final FIELD_PATH_LIST:Ljava/lang/String; = "pathList"

.field private static final JAR_SUFFIX:Ljava/lang/String; = ".jar"

.field private static final LIB_DIR_NAME:Ljava/lang/String; = "native_lib"

.field private static final NAME_BASE_DEX_CLASS_LOADER:Ljava/lang/String; = "dalvik.system.BaseDexClassLoader"

.field private static final OPTIMIZE_DEX_DIR:Ljava/lang/String; = "odex"

.field private static final RES_APK_NAME:Ljava/lang/String; = "res.ap_"

.field private static final TAG:Ljava/lang/String; = "Tiecode HotLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static combineElementArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "pathElements"    # Ljava/lang/Object;
    .param p1, "dexElements"    # Ljava/lang/Object;

    #@0
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 200
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    .line 201
    .local v1, "i":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    .line 202
    .local v2, "j":I
    add-int v3, v1, v2

    #@12
    .line 203
    .local v3, "k":I
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    .line 204
    .local v4, "result":Ljava/lang/Object;
    const/4 v5, 0x0

    #@17
    invoke-static {p1, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 205
    invoke-static {p0, v5, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 206
    return-object v4
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    goto/16 :goto_5

    #@e
    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@11
    move-result-object v0

    #@12
    .line 87
    .local v0, "parentDir":Ljava/io/File;
    if-nez v0, :cond_1

    #@14
    .line 88
    return-void

    #@15
    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 91
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1e
    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_3

    #@24
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    #@27
    .line 96
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@29
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .local v1, "fileIns":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    #@2e
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    #@31
    .local v2, "fileOuts":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@34
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    #@35
    .local v3, "source":Ljava/nio/channels/FileChannel;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@38
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@39
    move-object v10, v4

    #@3a
    .line 97
    .local v10, "destination":Ljava/nio/channels/FileChannel;
    const-wide/16 v6, 0x0

    #@3c
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    #@3f
    move-result-wide v8

    #@40
    move-object v4, v10

    #@41
    move-object v5, v3

    #@42
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@45
    .line 98
    if-eqz v10, :cond_4

    #@47
    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@4a
    .end local v10    # "destination":Ljava/nio/channels/FileChannel;
    :cond_4
    if-eqz v3, :cond_5

    #@4c
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@4f
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    #@52
    .end local v2    # "fileOuts":Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    #@55
    .line 100
    .end local v1    # "fileIns":Ljava/io/FileInputStream;
    goto :goto_4

    #@56
    .line 96
    .restart local v1    # "fileIns":Ljava/io/FileInputStream;
    .restart local v2    # "fileOuts":Ljava/io/FileOutputStream;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v10    # "destination":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v4

    #@57
    if-eqz v10, :cond_6

    #@59
    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@5c
    goto :goto_0

    #@5d
    :catchall_1
    move-exception v5

    #@5e
    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@61
    .end local v0    # "parentDir":Ljava/io/File;
    .end local v1    # "fileIns":Ljava/io/FileInputStream;
    .end local v2    # "fileOuts":Ljava/io/FileOutputStream;
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :cond_6
    :goto_0
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@62
    .end local v10    # "destination":Ljava/nio/channels/FileChannel;
    .restart local v0    # "parentDir":Ljava/io/File;
    .restart local v1    # "fileIns":Ljava/io/FileInputStream;
    .restart local v2    # "fileOuts":Ljava/io/FileOutputStream;
    .restart local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catchall_2
    move-exception v4

    #@63
    if-eqz v3, :cond_7

    #@65
    :try_start_b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@68
    goto :goto_1

    #@69
    :catchall_3
    move-exception v5

    #@6a
    :try_start_c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@6d
    .end local v0    # "parentDir":Ljava/io/File;
    .end local v1    # "fileIns":Ljava/io/FileInputStream;
    .end local v2    # "fileOuts":Ljava/io/FileOutputStream;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :cond_7
    :goto_1
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@6e
    .end local v3    # "source":Ljava/nio/channels/FileChannel;
    .restart local v0    # "parentDir":Ljava/io/File;
    .restart local v1    # "fileIns":Ljava/io/FileInputStream;
    .restart local v2    # "fileOuts":Ljava/io/FileOutputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catchall_4
    move-exception v3

    #@6f
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    #@72
    goto :goto_2

    #@73
    :catchall_5
    move-exception v4

    #@74
    :try_start_e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@77
    .end local v0    # "parentDir":Ljava/io/File;
    .end local v1    # "fileIns":Ljava/io/FileInputStream;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :goto_2
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    #@78
    .end local v2    # "fileOuts":Ljava/io/FileOutputStream;
    .restart local v0    # "parentDir":Ljava/io/File;
    .restart local v1    # "fileIns":Ljava/io/FileInputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catchall_6
    move-exception v2

    #@79
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    #@7c
    goto :goto_3

    #@7d
    :catchall_7
    move-exception v3

    #@7e
    :try_start_10
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@81
    .end local v0    # "parentDir":Ljava/io/File;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :goto_3
    throw v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    #@82
    .line 98
    .end local v1    # "fileIns":Ljava/io/FileInputStream;
    .restart local v0    # "parentDir":Ljava/io/File;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catch_0
    move-exception v1

    #@83
    .line 99
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@86
    .line 101
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    #@87
    .line 84
    .end local v0    # "parentDir":Ljava/io/File;
    :cond_8
    :goto_5
    return-void
.end method

.method private static getDexElements(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .line 216
    const-string v0, "dalvik.system.BaseDexClassLoader"

    #@2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 218
    .local v0, "BaseDexClassLoaderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "pathList"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@b
    move-result-object v1

    #@c
    .line 219
    .local v1, "pathListField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@10
    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 223
    .local v3, "dexPathList":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v4

    #@18
    const-string v5, "dexElements"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1d
    move-result-object v4

    #@1e
    .line 224
    .local v4, "dexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@21
    .line 226
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    return-object v2
.end method

.method private static getPatchDexPath([Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "listFiles"    # [Ljava/io/File;

    #@0
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@7
    if-ge v1, v2, :cond_3

    #@9
    .line 177
    aget-object v2, p0, v1

    #@b
    .line 178
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const-string v4, ".dex"

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_0

    #@17
    .line 179
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    const-string v4, ".apk"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    .line 180
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    const-string v4, ".jar"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 181
    :cond_0
    if-eqz v1, :cond_1

    #@31
    array-length v3, p0

    #@32
    add-int/lit8 v3, v3, -0x1

    #@34
    if-eq v1, v3, :cond_1

    #@36
    .line 183
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 185
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 175
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 188
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method

.method private static getSupportedABI()Ljava/lang/String;
    .locals 6

    #@0
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_2

    #@6
    .line 108
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@8
    .line 109
    .local v0, "abis":[Ljava/lang/String;
    array-length v1, v0

    #@9
    const/4 v2, 0x0

    #@a
    const/4 v3, 0x0

    #@b
    :goto_0
    if-ge v3, v1, :cond_1

    #@d
    aget-object v4, v0, v3

    #@f
    .line 110
    .local v4, "abi":Ljava/lang/String;
    const-string v5, "64"

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 111
    return-object v4

    #@18
    .line 109
    .end local v4    # "abi":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 114
    :cond_1
    aget-object v1, v0, v2

    #@1d
    return-object v1

    #@1e
    .line 116
    .end local v0    # "abis":[Ljava/lang/String;
    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@20
    return-object v0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchDirPath"    # Ljava/lang/String;

    #@0
    .line 45
    if-nez p0, :cond_0

    #@2
    .line 46
    return-void

    #@3
    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 50
    .local v0, "patchDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 51
    const-string v1, "Tiecode HotLoader"

    #@10
    const-string v2, "Hot load failed!"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 52
    return-void

    #@16
    .line 55
    :cond_1
    :try_start_0
    invoke-static {p0, v0}, Ltdr/util/HotLoader;->updateNativeLib(Landroid/content/Context;Ljava/io/File;)V

    #@19
    .line 56
    invoke-static {p0, v0}, Ltdr/util/HotLoader;->updateResources(Landroid/content/Context;Ljava/io/File;)V

    #@1c
    .line 57
    invoke-static {p0, v0}, Ltdr/util/HotLoader;->updateDex(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 60
    goto :goto_0

    #@20
    .line 58
    :catch_0
    move-exception v1

    #@21
    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@24
    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static setDexElements(Ljava/lang/ClassLoader;Ljava/lang/Object;)V
    .locals 6
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .line 237
    const-string v0, "dalvik.system.BaseDexClassLoader"

    #@2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 239
    .local v0, "BaseDexClassLoaderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "pathList"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@b
    move-result-object v1

    #@c
    .line 240
    .local v1, "pathListField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@10
    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 244
    .local v3, "dexPathList":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v4

    #@18
    const-string v5, "dexElements"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1d
    move-result-object v4

    #@1e
    .line 245
    .local v4, "dexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@21
    .line 247
    invoke-virtual {v4, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@24
    .line 248
    return-void
.end method

.method private static updateDex(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .line 144
    const-string v0, "odex"

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 145
    .local v0, "odexDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@10
    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@13
    move-result-object v1

    #@14
    .line 149
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    #@16
    array-length v2, v1

    #@17
    if-nez v2, :cond_1

    #@19
    goto :goto_0

    #@1a
    .line 152
    :cond_1
    invoke-static {v1}, Ltdr/util/HotLoader;->getPatchDexPath([Ljava/io/File;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 153
    .local v2, "dexPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 155
    .local v3, "odexPath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Ldalvik/system/PathClassLoader;

    #@28
    .line 157
    .local v4, "pathClassLoader":Ldalvik/system/PathClassLoader;
    new-instance v5, Ldalvik/system/DexClassLoader;

    #@2a
    const/4 v6, 0x0

    #@2b
    invoke-direct {v5, v2, v3, v6, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@2e
    .line 159
    .local v5, "dexClassLoader":Ldalvik/system/DexClassLoader;
    invoke-static {v4}, Ltdr/util/HotLoader;->getDexElements(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@31
    move-result-object v6

    #@32
    .line 161
    .local v6, "pathElements":Ljava/lang/Object;
    invoke-static {v5}, Ltdr/util/HotLoader;->getDexElements(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    .line 163
    .local v7, "dexElements":Ljava/lang/Object;
    invoke-static {v6, v7}, Ltdr/util/HotLoader;->combineElementArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v8

    #@3a
    .line 165
    .local v8, "combineElementArray":Ljava/lang/Object;
    invoke-static {v4, v8}, Ltdr/util/HotLoader;->setDexElements(Ljava/lang/ClassLoader;Ljava/lang/Object;)V

    #@3d
    .line 166
    return-void

    #@3e
    .line 150
    .end local v2    # "dexPath":Ljava/lang/String;
    .end local v3    # "odexPath":Ljava/lang/String;
    .end local v4    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v5    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "pathElements":Ljava/lang/Object;
    .end local v7    # "dexElements":Ljava/lang/Object;
    .end local v8    # "combineElementArray":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void
.end method

.method public static updateNativeLib(Landroid/content/Context;Ljava/io/File;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchDir"    # Ljava/io/File;

    #@0
    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@6
    .line 69
    .local v0, "libraryDirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v3, "native_lib"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    invoke-static {}, Ltdr/util/HotLoader;->getSupportedABI()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25
    .line 70
    .local v1, "newLibDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@28
    move-result-object v2

    #@29
    .line 71
    .local v2, "libFiles":[Ljava/io/File;
    if-nez v2, :cond_0

    #@2b
    .line 72
    return-void

    #@2c
    .line 74
    :cond_0
    array-length v3, v2

    #@2d
    const/4 v4, 0x0

    #@2e
    :goto_0
    if-ge v4, v3, :cond_1

    #@30
    aget-object v5, v2, v4

    #@32
    .line 75
    .local v5, "libFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    #@34
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    invoke-static {v5, v6}, Ltdr/util/HotLoader;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 74
    .end local v5    # "libFile":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    #@40
    goto :goto_0

    #@41
    .line 79
    .end local v0    # "libraryDirPath":Ljava/lang/String;
    .end local v1    # "newLibDir":Ljava/io/File;
    .end local v2    # "libFiles":[Ljava/io/File;
    :cond_1
    goto :goto_1

    #@42
    .line 77
    :catch_0
    move-exception v0

    #@43
    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@46
    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static updateResources(Landroid/content/Context;Ljava/io/File;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchDir"    # Ljava/io/File;

    #@0
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@3
    move-result-object v0

    #@4
    .line 126
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    const-string v2, "addAssetPath"

    #@a
    const/4 v3, 0x1

    #@b
    new-array v4, v3, [Ljava/lang/Class;

    #@d
    const-class v5, Ljava/lang/String;

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v1

    #@16
    .line 127
    .local v1, "addAssetPath":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    const-string v4, "res.ap_"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    aput-object v3, v2, v6

    #@30
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 135
    nop

    #@34
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "addAssetPath":Ljava/lang/reflect/Method;
    goto :goto_0

    #@35
    .line 133
    :catch_0
    move-exception v0

    #@36
    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@39
    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
