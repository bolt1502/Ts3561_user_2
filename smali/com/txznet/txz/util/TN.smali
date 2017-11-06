.class public Lcom/txznet/txz/util/TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/txz/util/TN$T;,
        Lcom/txznet/txz/util/TN$T3;
    }
.end annotation


# direct methods
.method static synthetic T(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/txznet/txz/util/TN;->T3(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static T(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p0, "arrayLhs"    # Ljava/lang/Object;
    .param p1, "arrayRhs"    # Ljava/lang/Object;

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 168
    .local v5, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 169
    .local v1, "i":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    add-int v3, v1, v11

    .line 170
    .local v3, "j":I
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    .line 171
    .local v10, "result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 172
    if-ge v4, v1, :cond_0

    .line 173
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v4, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 171
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    sub-int v11, v4, v1

    invoke-static {p1, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v4, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 180
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "result":Ljava/lang/Object;
    :cond_1
    instance-of v11, p0, Ljava/util/List;

    if-eqz v11, :cond_2

    .line 182
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    .line 183
    .restart local v10    # "result":Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    .line 184
    .local v7, "lstResult":Ljava/util/List;
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 185
    .local v6, "lstLhs":Ljava/util/List;
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    .line 186
    .local v8, "lstRhs":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 187
    .local v9, "o":Ljava/lang/Object;
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "lstLhs":Ljava/util/List;
    .end local v7    # "lstResult":Ljava/util/List;
    .end local v8    # "lstRhs":Ljava/util/List;
    .end local v9    # "o":Ljava/lang/Object;
    .end local v10    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v11

    :cond_2
    move-object v10, p1

    .line 197
    :cond_3
    return-object v10

    .line 189
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "lstLhs":Ljava/util/List;
    .restart local v7    # "lstResult":Ljava/util/List;
    .restart local v8    # "lstRhs":Ljava/util/List;
    .restart local v10    # "result":Ljava/lang/Object;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 190
    .restart local v9    # "o":Ljava/lang/Object;
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public static T(Ljava/lang/String;[Lcom/txznet/txz/util/TN$T3;J)Ljava/util/List;
    .locals 17
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "options"    # [Lcom/txznet/txz/util/TN$T3;
    .param p2, "delayCheck"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/txznet/txz/util/TN$T3;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v15, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/HandlerThread;

    const-string v6, "checkThread"

    invoke-direct {v9, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 599
    .local v9, "checkThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 600
    new-instance v2, Lcom/txznet/txz/util/TN$T;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/txznet/txz/util/TN$T;-><init>(Landroid/os/Looper;)V

    .line 602
    .local v2, "checkHandler":Lcom/txznet/txz/util/TN$T;
    new-instance v3, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 603
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    .line 604
    .local v11, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 605
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 606
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v8, p1

    .local v8, "arr$":[Lcom/txznet/txz/util/TN$T3;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v14, v8, v12

    .line 607
    .local v14, "opt":Lcom/txznet/txz/util/TN$T3;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/txznet/txz/util/TN$T3;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "unzipFile":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 606
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-wide/from16 v6, p2

    .line 610
    invoke-static/range {v2 .. v7}, Lcom/txznet/txz/util/TN;->T(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)Z

    .line 612
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 633
    .end local v2    # "checkHandler":Lcom/txznet/txz/util/TN$T;
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "unzipFile":Ljava/lang/String;
    .end local v8    # "arr$":[Lcom/txznet/txz/util/TN$T3;
    .end local v9    # "checkThread":Landroid/os/HandlerThread;
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "opt":Lcom/txznet/txz/util/TN$T3;
    .end local v15    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 635
    .local v10, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/txznet/T/T;->TG()V

    .line 637
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Load app error: unzip ["

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "] files error: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 615
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "checkHandler":Lcom/txznet/txz/util/TN$T;
    .restart local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "checkThread":Landroid/os/HandlerThread;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v15    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    new-instance v6, Lcom/txznet/txz/util/TN$2;

    invoke-direct {v6, v3, v2, v9}, Lcom/txznet/txz/util/TN$2;-><init>(Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;Landroid/os/HandlerThread;)V

    move-wide/from16 v0, p2

    invoke-virtual {v2, v6, v0, v1}, Lcom/txznet/txz/util/TN$T;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 632
    return-object v15
.end method

.method public static T(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "dest"    # Ljava/lang/ClassLoader;
    .param p2, "libPath"    # Ljava/lang/String;

    .prologue
    .line 213
    if-ne p1, p0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 216
    :cond_0
    :try_start_0
    const-class v3, Ldalvik/system/BaseDexClassLoader;

    const-string v4, "pathList"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 218
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "pathList_loader":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "pathList_dest":Ljava/lang/Object;
    const-string v3, "dexElements"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string v3, "nativeLibraryPathElements"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    const-string v3, "nativeLibraryDirectories"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string v3, "systemNativeLibraryDirectories"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {p0, p2}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "pathList_dest":Ljava/lang/Object;
    .end local v2    # "pathList_loader":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static T(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 13
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "libpath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v10, "nativeLibraryDirectories"

    invoke-static {p0, v10, p1}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v10, "systemNativeLibraryDirectories"

    invoke-static {p0, v10, p1}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_0
    const-class v10, Ldalvik/system/BaseDexClassLoader;

    const-string v11, "pathList"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 123
    .local v5, "f":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 125
    .local v9, "pathList":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "nativeLibraryPathElements"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 127
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 129
    .local v3, "elems":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "elems_new":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v1, v10, v11

    .line 133
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 134
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "elem":Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-static {v4, v10, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 136
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 137
    add-int/lit8 v10, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v10, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v5, v9, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v3    # "elems":Ljava/lang/Object;
    .end local v4    # "elems_new":Ljava/lang/Object;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "i":I
    .end local v9    # "pathList":Ljava/lang/Object;
    :goto_2
    :try_start_1
    const-class v10, Ldalvik/system/DexClassLoader;

    const-string v11, "mLibPaths"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 147
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 149
    .local v7, "mLibPaths":[Ljava/lang/String;
    array-length v10, v7

    add-int/lit8 v10, v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 150
    .local v8, "mLibPaths_new":[Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 151
    const/4 v10, 0x0

    aput-object p1, v8, v10

    .line 155
    :goto_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    array-length v10, v7

    if-ge v6, v10, :cond_3

    .line 156
    add-int/lit8 v10, v6, 0x1

    aget-object v11, v7, v6

    aput-object v11, v8, v10

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 153
    .end local v6    # "i":I
    :cond_2
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 159
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "mLibPaths":[Ljava/lang/String;
    .end local v8    # "mLibPaths_new":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 162
    :goto_5
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "i":I
    .restart local v7    # "mLibPaths":[Ljava/lang/String;
    .restart local v8    # "mLibPaths_new":[Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 140
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "i":I
    .end local v7    # "mLibPaths":[Ljava/lang/String;
    .end local v8    # "mLibPaths_new":[Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public static T(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "libpath"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    const-class v7, Ldalvik/system/BaseDexClassLoader;

    const-string v8, "pathList"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 76
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 78
    .local v6, "pathList":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "fsobj":Ljava/lang/Object;
    instance-of v7, v3, [Ljava/io/File;

    if-eqz v7, :cond_2

    .line 82
    check-cast v3, [Ljava/io/File;

    .end local v3    # "fsobj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Ljava/io/File;

    move-object v2, v0

    .line 83
    .local v2, "fs":[Ljava/io/File;
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [Ljava/io/File;

    .line 84
    .local v5, "nfs":[Ljava/io/File;
    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    .line 85
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 86
    add-int/lit8 v7, v4, 0x1

    aget-object v8, v2, v4

    aput-object v8, v5, v7

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fs":[Ljava/io/File;
    .end local v4    # "i":I
    .end local v5    # "nfs":[Ljava/io/File;
    .end local v6    # "pathList":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 89
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "fsobj":Ljava/lang/Object;
    .restart local v6    # "pathList":Ljava/lang/Object;
    :cond_2
    instance-of v7, v3, [Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 90
    check-cast v3, [Ljava/lang/String;

    .end local v3    # "fsobj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 91
    .local v2, "fs":[Ljava/lang/String;
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 92
    .local v5, "nfs":[Ljava/lang/String;
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 93
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 94
    add-int/lit8 v7, v4, 0x1

    aget-object v8, v2, v4

    aput-object v8, v5, v7

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fs":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "nfs":[Ljava/lang/String;
    .end local v6    # "pathList":Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 97
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "fsobj":Ljava/lang/Object;
    .restart local v6    # "pathList":Ljava/lang/Object;
    :cond_4
    instance-of v7, v3, Ljava/util/List;

    if-eqz v7, :cond_1

    .line 98
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 99
    .local v2, "fs":Ljava/util/List;
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/io/File;

    if-eqz v7, :cond_5

    .line 100
    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 101
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 102
    const/4 v7, 0x0

    invoke-interface {v2, v7, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dst"    # Ljava/lang/Object;
    .param p2, "mem"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 203
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static T(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)Z
    .locals 16
    .param p0, "checkHandler"    # Lcom/txznet/txz/util/TN$T;
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .param p3, "unzipPath"    # Ljava/lang/String;
    .param p4, "delayCheck"    # J

    .prologue
    .line 316
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 318
    new-instance v2, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".chk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, "chk":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 320
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 321
    .local v10, "properties":Ljava/util/Properties;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 322
    .local v5, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v10, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 323
    invoke-virtual {v10}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 324
    .local v7, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    const-string v12, "size"

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 325
    const-string v12, "size"

    invoke-virtual {v10, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 326
    .local v11, "size":I
    int-to-long v12, v11

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 327
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no need unzip new file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    .line 328
    invoke-static/range {p0 .. p5}, Lcom/txznet/txz/util/TN;->T2(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V

    .line 330
    const/4 v12, 0x1

    .line 362
    .end local v2    # "chk":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v10    # "properties":Ljava/util/Properties;
    .end local v11    # "size":I
    :goto_0
    return v12

    .line 333
    .restart local v2    # "chk":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .restart local v10    # "properties":Ljava/util/Properties;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 334
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 344
    .end local v2    # "chk":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v10    # "properties":Ljava/util/Properties;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "begin unzip "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",crc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 347
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 348
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 349
    .local v9, "out":Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 351
    .local v6, "in":Ljava/io/InputStream;
    const/high16 v12, 0x100000

    new-array v1, v12, [B

    .line 352
    .local v1, "buf":[B
    const/4 v8, 0x0

    .line 353
    .local v8, "l":I
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ltz v8, :cond_3

    .line 354
    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 363
    .end local v1    # "buf":[B
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "l":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/txznet/T/T;->TG()V

    .line 367
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Load app error: unzip file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 336
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "chk":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 338
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no need unzip file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    .line 339
    invoke-static/range {p0 .. p5}, Lcom/txznet/txz/util/TN;->T3(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V

    .line 341
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 357
    .end local v2    # "chk":Ljava/io/File;
    .restart local v1    # "buf":[B
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "l":I
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 358
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private static T2(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
    .locals 1
    .param p0, "checkHandler"    # Lcom/txznet/txz/util/TN$T;
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .param p3, "unzipPath"    # Ljava/lang/String;
    .param p4, "delayCheck"    # J

    .prologue
    .line 375
    new-instance v0, Lcom/txznet/txz/util/TN$1;

    invoke-direct {v0, p3, p0}, Lcom/txznet/txz/util/TN$1;-><init>(Ljava/lang/String;Lcom/txznet/txz/util/TN$T;)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/txznet/txz/util/TN$T;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    return-void
.end method

.method private static T3(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "v1":[Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "v2":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 465
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v0, v4, v5

    .line 466
    .local v0, "compare":I
    if-eqz v0, :cond_0

    .line 469
    .end local v0    # "compare":I
    :goto_1
    return v0

    .line 464
    .restart local v0    # "compare":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "compare":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static T3(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
    .locals 1
    .param p0, "checkHandler"    # Lcom/txznet/txz/util/TN$T;
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .param p3, "unzipPath"    # Ljava/lang/String;
    .param p4, "delayCheck"    # J

    .prologue
    .line 709
    new-instance v0, Lcom/txznet/txz/util/TN$3;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/txznet/txz/util/TN$3;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/txznet/txz/util/TN$T;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 802
    return-void
.end method
