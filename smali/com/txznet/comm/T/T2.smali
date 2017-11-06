.class public Lcom/txznet/comm/T/T2;
.super Landroid/app/Application;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T/T2$T;
    }
.end annotation


# static fields
.field public static T:J

.field public static T2:I

.field public static T3:J

.field static T7:Landroid/content/res/Resources;

.field static TB:Ljava/lang/Object;

.field static TG:Ljava/lang/String;

.field static TJ:Z

.field public static TN:I

.field static TO:Landroid/content/pm/ApplicationInfo;

.field static TP:Ljava/lang/ClassLoader;

.field static TR:Ljava/lang/Boolean;

.field public static Te:Ljava/lang/String;

.field static Tn:Ljava/lang/String;

.field static To:Landroid/content/res/Resources$Theme;

.field static Tr:Landroid/content/res/AssetManager;

.field static Tw:Ljava/lang/String;

.field static Ty:Ljava/lang/String;


# instance fields
.field private TQ:Z

.field TW:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/txznet/comm/T/T2;->T:J

    .line 59
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/txznet/comm/T/T2;->T3:J

    .line 60
    const/4 v0, 0x5

    sput v0, Lcom/txznet/comm/T/T2;->T2:I

    .line 61
    const/16 v0, 0xa

    sput v0, Lcom/txznet/comm/T/T2;->TN:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.txz/loader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    .line 172
    sput-object v2, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    .line 759
    const/4 v0, 0x0

    sput-boolean v0, Lcom/txznet/comm/T/T2;->TJ:Z

    .line 816
    sput-object v2, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/T/T2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private T(Ljava/io/FileInputStream;[B)V
    .locals 3
    .param p1, "f"    # Ljava/io/FileInputStream;
    .param p2, "bs"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "t":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 186
    array-length v2, p2

    sub-int/2addr v2, v1

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 187
    .local v0, "r":I
    add-int/2addr v1, v0

    .line 188
    goto :goto_0

    .line 189
    .end local v0    # "r":I
    :cond_0
    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "param":Ljava/lang/Object;, "TT;"
    :try_start_0
    sget-object v3, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    const-string v4, "com.txznet.loader.AppLogicBase"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 834
    .local v0, "clsAppLogic":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 835
    .local v2, "m":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .end local v0    # "clsAppLogic":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private T(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    const-string v0, "TXZAppLoader1.0"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/txz/report/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/txznet/comm/T/T2$T;

    invoke-direct {v2, p0, p1, p2}, Lcom/txznet/comm/T/T2$T;-><init>(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v0, v1, v2}, Lcom/txznet/comm/T/TN;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 238
    return-void
.end method

.method private T2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    .line 92
    sput-object v0, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    .line 94
    sput-object v0, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    .line 95
    sput-object v0, Lcom/txznet/comm/T/T2;->Tr:Landroid/content/res/AssetManager;

    .line 96
    sput-object v0, Lcom/txznet/comm/T/T2;->T7:Landroid/content/res/Resources;

    .line 97
    sput-object v0, Lcom/txznet/comm/T/T2;->To:Landroid/content/res/Resources$Theme;

    .line 98
    return-void
.end method

.method public static T2(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 820
    :try_start_0
    sget-object v3, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    const-string v4, "com.txznet.loader.AppLogicBase"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 822
    .local v0, "clsAppLogic":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 823
    .local v2, "m":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v0    # "clsAppLogic":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private TN(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 596
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, "d":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 598
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    .line 597
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 605
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "d":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v5

    .line 607
    :goto_2
    return-void

    .line 604
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "d":Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private TN()Z
    .locals 38

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T2()V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "loader_ver"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 246
    .local v32, "mLoaderApkVer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "loader_len"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v28

    .line 248
    .local v28, "mLoaderApkLen":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "loader_crc"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 251
    .local v24, "mLoaderApkCrc":J
    :try_start_0
    invoke-static {}, Lcom/txznet/T/T;->T2()Ljava/lang/String;

    move-result-object v33

    .line 252
    .local v33, "mLoaderApkVer2":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v21, "loaderApkFile":Ljava/io/File;
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local v22, "loaderApkFileStream":Ljava/io/FileInputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v30

    .line 257
    .local v30, "mLoaderApkLen2":J
    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 258
    .local v12, "crc32":Ljava/util/zip/CRC32;
    const/16 v3, 0x64

    new-array v11, v3, [B

    .line 259
    .local v11, "bs":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    .line 260
    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    .line 261
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    .line 263
    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    .line 264
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    .line 266
    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    .line 267
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    .line 269
    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    .line 270
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    .line 271
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v26

    .line 272
    .local v26, "mLoaderApkCrc2":J
    cmp-long v3, v28, v30

    if-nez v3, :cond_0

    cmp-long v3, v24, v26

    if-nez v3, :cond_0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 276
    .local v13, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "loader_ver"

    move-object/from16 v0, v33

    invoke-interface {v13, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v3, "loader_len"

    move-wide/from16 v0, v30

    invoke-interface {v13, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v3, "loader_crc"

    move-wide/from16 v0, v26

    invoke-interface {v13, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    const-string v3, "TXZAppLoader1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load outter failed: not match loader config: len["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], crc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ver["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Ty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const/4 v3, 0x0

    .line 419
    .end local v11    # "bs":[B
    .end local v12    # "crc32":Ljava/util/zip/CRC32;
    .end local v13    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "loaderApkFile":Ljava/io/File;
    .end local v22    # "loaderApkFileStream":Ljava/io/FileInputStream;
    .end local v24    # "mLoaderApkCrc":J
    .end local v26    # "mLoaderApkCrc2":J
    .end local v28    # "mLoaderApkLen":J
    .end local v30    # "mLoaderApkLen2":J
    .end local v32    # "mLoaderApkVer":Ljava/lang/String;
    .end local v33    # "mLoaderApkVer2":Ljava/lang/String;
    :goto_0
    return v3

    .line 291
    .restart local v24    # "mLoaderApkCrc":J
    .restart local v28    # "mLoaderApkLen":J
    .restart local v32    # "mLoaderApkVer":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 296
    .end local v24    # "mLoaderApkCrc":J
    .end local v28    # "mLoaderApkLen":J
    .end local v32    # "mLoaderApkVer":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    .line 297
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "apk"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    .line 303
    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    const-string v3, "TXZAppLoader1.0"

    const-string v4, "load outter failed: no outter data setting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x0

    goto :goto_0

    .line 309
    :cond_2
    new-instance v15, Ljava/io/File;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v15, "fApk":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 311
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    .line 312
    .local v16, "fApkDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 313
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 315
    const-string v3, "TXZAppLoader1.0"

    const-string v4, "load outter failed: partition is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 317
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "launchTimes"

    invoke-interface {v14, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    const-wide/16 v3, 0xbb8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 323
    :goto_1
    invoke-static {}, Lcom/txznet/T/T;->TR()V

    .line 325
    const-wide/16 v3, 0xbb8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 328
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 330
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load outter failed: check data failed - not exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 334
    .end local v16    # "fApkDir":Ljava/io/File;
    :cond_4
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 335
    .local v17, "l1":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "size"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 336
    .local v19, "l2":J
    cmp-long v3, v17, v19

    if-eqz v3, :cond_5

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load outter failed: check data failed - length not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 341
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v34

    .line 342
    .local v34, "t1":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "time"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 343
    .local v36, "t2":J
    cmp-long v3, v34, v36

    if-eqz v3, :cond_6

    .line 348
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/solibs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    .line 349
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dexfiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    .line 352
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 355
    new-instance v2, Lcom/txznet/T/T3;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v4, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sget-object v5, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sget-object v6, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/txznet/T/T3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 358
    .local v2, "loader":Ljava/lang/ClassLoader;
    :try_start_3
    const-string v3, "com.txznet.loader.ApkLoader"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 360
    .local v8, "ApkLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "process"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Application;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/ClassLoader;

    aput-object v6, v4, v5

    invoke-virtual {v8, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 362
    .local v23, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 369
    move-object/from16 v10, p0

    .line 370
    .local v10, "app":Landroid/app/Application;
    sget-object v9, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    .line 374
    .local v9, "apkPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 375
    new-instance v3, Lcom/txznet/comm/T/T2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v9}, Lcom/txznet/comm/T/T2$1;-><init>(Lcom/txznet/comm/T/T2;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/txznet/comm/T/T2$1;->start()V

    .line 419
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 363
    .end local v8    # "ApkLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "apkPath":Ljava/lang/String;
    .end local v10    # "app":Landroid/app/Application;
    .end local v23    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v13

    .line 364
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load outter failed: process failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 321
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "l1":J
    .end local v19    # "l2":J
    .end local v34    # "t1":J
    .end local v36    # "t2":J
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v16    # "fApkDir":Ljava/io/File;
    :catch_2
    move-exception v3

    goto/16 :goto_1

    .line 326
    :catch_3
    move-exception v3

    goto/16 :goto_2
.end method

.method private Te()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 473
    invoke-direct {p0}, Lcom/txznet/comm/T/T2;->T2()V

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    .line 476
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/solibs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    .line 478
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dexfiles"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    .line 480
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 481
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v6, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    .line 483
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sget-object v7, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v8, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sget-object v9, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sget-object v10, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/txznet/T/T3;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v7

    sget-object v8, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x0

    .line 490
    .local v0, "clsAppLogic":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.txznet.loader.AppLogic"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 502
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    .line 503
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 511
    :try_start_2
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 513
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v5, Lcom/txznet/comm/Te/T;->T:I

    .line 514
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 518
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    const/4 v5, 0x1

    :goto_2
    return v5

    .line 492
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.txznet.loader.AppLogicDefault"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 496
    :catch_1
    move-exception v3

    .line 497
    .local v3, "e2":Ljava/lang/ClassNotFoundException;
    const-string v6, "TXZAppLoader1.0"

    const-string v7, "load inner failed: load logic class failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 504
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    .end local v3    # "e2":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TXZAppLoader1.0"

    const-string v7, "load inner failed: create logic instance failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private Tn()V
    .locals 18

    .prologue
    .line 625
    invoke-static/range {p0 .. p0}, Lcom/txznet/comm/T3/T;->T(Landroid/content/Context;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 630
    .local v9, "packageName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".ApkLoader"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/txznet/comm/T/T2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    .line 632
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v15, "WORK_SPACE"

    sget-object v16, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    .line 633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v15, "MIN_RUN_TIME"

    sget-wide v16, Lcom/txznet/comm/T/T2;->T3:J

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    sput-wide v14, Lcom/txznet/comm/T/T2;->T3:J

    .line 634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v15, "MIN_RESET_COUNT"

    sget v16, Lcom/txznet/comm/T/T2;->T2:I

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/txznet/comm/T/T2;->T2:I

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v15, "MIN_ROLLBACK_COUNT"

    sget v16, Lcom/txznet/comm/T/T2;->TN:I

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/txznet/comm/T/T2;->TN:I

    .line 639
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    .line 640
    const/4 v1, 0x0

    .line 642
    .local v1, "bNeedRollback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v15, "launchTimes"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 646
    .local v7, "launchTimeStr":Ljava/lang/String;
    const-string v14, ";"

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, "launchTimes":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v14, v8

    sget v15, Lcom/txznet/comm/T/T2;->T2:I

    if-lt v14, v15, :cond_0

    .line 649
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    .line 650
    array-length v14, v8

    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_0
    array-length v14, v8

    sget v15, Lcom/txznet/comm/T/T2;->T2:I

    sub-int/2addr v14, v15

    if-lt v6, v14, :cond_0

    .line 652
    const-wide/16 v12, 0x0

    .line 654
    .local v12, "tm":J
    :try_start_0
    aget-object v14, v8, v6

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v12

    .line 658
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    sget-wide v16, Lcom/txznet/comm/T/T2;->T3:J

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 659
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    .line 665
    .end local v6    # "i":I
    .end local v12    # "tm":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 666
    .local v2, "cur":J
    if-eqz v8, :cond_1

    array-length v14, v8

    sget v15, Lcom/txznet/comm/T/T2;->TN:I

    if-lt v14, v15, :cond_1

    .line 667
    const/4 v1, 0x1

    .line 668
    array-length v14, v8

    add-int/lit8 v6, v14, -0x1

    .restart local v6    # "i":I
    :goto_2
    array-length v14, v8

    sget v15, Lcom/txznet/comm/T/T2;->TN:I

    sub-int/2addr v14, v15

    if-lt v6, v14, :cond_1

    .line 670
    const-wide/16 v12, 0x0

    .line 672
    .restart local v12    # "tm":J
    :try_start_1
    aget-object v14, v8, v6

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v12

    .line 675
    :goto_3
    cmp-long v14, v2, v12

    if-gez v14, :cond_4

    .line 677
    const/4 v8, 0x0

    .line 678
    const/4 v1, 0x0

    .line 689
    .end local v6    # "i":I
    .end local v12    # "tm":J
    :cond_1
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v10, "sb":Ljava/lang/StringBuilder;
    sget v11, Lcom/txznet/comm/T/T2;->TN:I

    .line 691
    .local v11, "start":I
    if-nez v8, :cond_6

    .line 692
    const/4 v11, 0x0

    .line 696
    :cond_2
    :goto_5
    move v6, v11

    .restart local v6    # "i":I
    :goto_6
    if-lez v6, :cond_7

    .line 697
    array-length v14, v8

    sub-int/2addr v14, v6

    aget-object v14, v8, v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const/16 v14, 0x3b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 651
    .end local v2    # "cur":J
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "start":I
    .restart local v12    # "tm":J
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 681
    .restart local v2    # "cur":J
    :cond_4
    sub-long v14, v2, v12

    sget-wide v16, Lcom/txznet/comm/T/T2;->T3:J

    cmp-long v14, v14, v16

    if-lez v14, :cond_5

    .line 682
    const/4 v1, 0x0

    .line 683
    goto :goto_4

    .line 669
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 693
    .end local v6    # "i":I
    .end local v12    # "tm":J
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "start":I
    :cond_6
    array-length v14, v8

    sget v15, Lcom/txznet/comm/T/T2;->TN:I

    if-ge v14, v15, :cond_2

    .line 694
    array-length v11, v8

    goto :goto_5

    .line 701
    .restart local v6    # "i":I
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sget-wide v16, Lcom/txznet/comm/T/T2;->T:J

    cmp-long v14, v14, v16

    if-lez v14, :cond_c

    .line 702
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 704
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v14, "launchTimes"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    .end local v2    # "cur":J
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "i":I
    .end local v7    # "launchTimeStr":Ljava/lang/String;
    .end local v8    # "launchTimes":[Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "start":I
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    if-eqz v14, :cond_9

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Ty()V

    .line 717
    :cond_9
    if-eqz v1, :cond_d

    .line 718
    const-string v14, "TXZAppLoader1.0"

    const-string v15, "application need rollback"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 720
    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v14, "launchTimes"

    invoke-interface {v5, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 721
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 722
    const-string v14, "restart too many times at few minutes"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/txznet/comm/T2/T;->T(Landroid/content/Context;)V

    .line 738
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Te()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v14

    if-eqz v14, :cond_e

    .line 756
    :cond_b
    :goto_9
    const-string v14, "onCreate"

    const-class v15, Landroid/app/Application;

    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 757
    return-void

    .line 707
    .restart local v2    # "cur":J
    .restart local v6    # "i":I
    .restart local v7    # "launchTimeStr":Ljava/lang/String;
    .restart local v8    # "launchTimes":[Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "start":I
    :cond_c
    invoke-static {}, Lcom/txznet/T/T;->TG()V

    goto :goto_7

    .line 725
    .end local v2    # "cur":J
    .end local v6    # "i":I
    .end local v7    # "launchTimeStr":Ljava/lang/String;
    .end local v8    # "launchTimes":[Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "start":I
    :cond_d
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->TN()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_9

    .line 727
    :catch_0
    move-exception v4

    .line 728
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "load outer exception"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 740
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 744
    :cond_e
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Tw()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v14

    if-nez v14, :cond_b

    .line 750
    :goto_a
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "load application failed"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 746
    :catch_2
    move-exception v14

    goto :goto_a

    .line 673
    .restart local v2    # "cur":J
    .restart local v6    # "i":I
    .restart local v7    # "launchTimeStr":Ljava/lang/String;
    .restart local v8    # "launchTimes":[Ljava/lang/String;
    .restart local v12    # "tm":J
    :catch_3
    move-exception v14

    goto/16 :goto_3

    .line 655
    .end local v2    # "cur":J
    :catch_4
    move-exception v14

    goto/16 :goto_1
.end method

.method private Tw()Z
    .locals 20

    .prologue
    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T2()V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 526
    .local v18, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    .line 527
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 531
    .local v19, "tmpDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    .line 532
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v10, "f":Ljava/io/File;
    const/4 v11, 0x0

    .line 534
    .local v11, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v12, 0x0

    .line 535
    .local v12, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 537
    .local v16, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "txz.jet"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v11

    .line 538
    const/4 v15, 0x1

    .line 539
    .local v15, "needUnzip":Z
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 541
    const/4 v15, 0x0

    .line 544
    :cond_0
    if-eqz v15, :cond_5

    .line 545
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 546
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v12

    .line 547
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v16    # "out":Ljava/io/OutputStream;
    .local v17, "out":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 549
    .local v13, "l":I
    const/high16 v2, 0x100000

    :try_start_1
    new-array v8, v2, [B

    .line 550
    .local v8, "buf":[B
    :goto_0
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_4

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v2, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 554
    .end local v8    # "buf":[B
    :catch_0
    move-exception v9

    move-object/from16 v16, v17

    .line 555
    .end local v13    # "l":I
    .end local v15    # "needUnzip":Z
    .end local v17    # "out":Ljava/io/OutputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v16    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    const-string v2, "TXZAppLoader1.0"

    const-string v3, "load assets failed: unzip assets data failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    const/4 v2, 0x0

    .line 560
    if-eqz v16, :cond_1

    .line 561
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 562
    :cond_1
    if-eqz v12, :cond_2

    .line 563
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 564
    :cond_2
    if-eqz v11, :cond_3

    .line 565
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 591
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v2

    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v8    # "buf":[B
    .restart local v13    # "l":I
    .restart local v15    # "needUnzip":Z
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v16, v17

    .line 560
    .end local v8    # "buf":[B
    .end local v13    # "l":I
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    :cond_5
    if-eqz v16, :cond_6

    .line 561
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 562
    :cond_6
    if-eqz v12, :cond_7

    .line 563
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 564
    :cond_7
    if-eqz v11, :cond_8

    .line 565
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 570
    :cond_8
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/solibs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    .line 571
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dexfiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    .line 574
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 577
    new-instance v1, Lcom/txznet/T/T3;

    sget-object v2, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v3, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sget-object v4, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sget-object v5, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-super/range {p0 .. p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/txznet/T/T3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 580
    .local v1, "loader":Ljava/lang/ClassLoader;
    :try_start_5
    const-string v2, "com.txznet.loader.ApkLoader"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 582
    .local v7, "ApkLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "process"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Application;

    aput-object v5, v3, v4

    invoke-virtual {v7, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 584
    .local v14, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v14, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 591
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 559
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v7    # "ApkLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "m":Ljava/lang/reflect/Method;
    .end local v15    # "needUnzip":Z
    :catchall_0
    move-exception v2

    .line 560
    :goto_4
    if-eqz v16, :cond_9

    .line 561
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 562
    :cond_9
    if-eqz v12, :cond_a

    .line 563
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 564
    :cond_a
    if-eqz v11, :cond_b

    .line 565
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 567
    :cond_b
    :goto_5
    throw v2

    .line 585
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    .restart local v15    # "needUnzip":Z
    :catch_1
    move-exception v9

    .line 586
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    const-string v2, "TXZAppLoader1.0"

    const-string v3, "load assets failed: proccess assets data failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 566
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "needUnzip":Z
    :catch_2
    move-exception v3

    goto :goto_5

    .line 559
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v13    # "l":I
    .restart local v15    # "needUnzip":Z
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 566
    .end local v13    # "l":I
    .end local v15    # "needUnzip":Z
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto/16 :goto_2

    .line 554
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto/16 :goto_1

    .line 566
    .restart local v15    # "needUnzip":Z
    :catch_5
    move-exception v2

    goto/16 :goto_3
.end method

.method private Ty()V
    .locals 2

    .prologue
    .line 610
    const-string v0, "TXZAppLoader1.0"

    const-string v1, "application need reset upzip data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/solibs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dexfiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    .line 614
    return-void
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 6

    .prologue
    .line 158
    const-string v0, ""

    .line 159
    .local v0, "currentProcName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 160
    .local v3, "pid":I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/txznet/comm/T/T2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 162
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 164
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_0

    .line 165
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 169
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v0
.end method

.method public T(Ljava/lang/String;)[B
    .locals 4
    .param p1, "archiveFilePath"    # Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 139
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public T3()Z
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    .line 179
    :cond_0
    sget-object v0, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public T3(Ljava/lang/String;)[B
    .locals 4
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 150
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 154
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 877
    sget-object v0, Lcom/txznet/comm/T/T2;->TO:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 878
    sget-object v0, Lcom/txznet/comm/T/T2;->TO:Landroid/content/pm/ApplicationInfo;

    .line 880
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 857
    sget-object v0, Lcom/txznet/comm/T/T2;->Tr:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    .line 858
    sget-object v0, Lcom/txznet/comm/T/T2;->Tr:Landroid/content/res/AssetManager;

    .line 860
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 847
    sget-object v0, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    .line 850
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 867
    sget-object v0, Lcom/txznet/comm/T/T2;->T7:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 868
    sget-object v0, Lcom/txznet/comm/T/T2;->T7:Landroid/content/res/Resources;

    .line 870
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lcom/txznet/comm/T/T2;->To:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 888
    sget-object v0, Lcom/txznet/comm/T/T2;->To:Landroid/content/res/Resources$Theme;

    .line 890
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 789
    const-string v0, "onConfigurationChanged"

    const-class v1, Landroid/content/res/Configuration;

    invoke-static {v0, v1, p1}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 762
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 764
    const-string v0, "TXZAppLoader1.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin create application: main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget-boolean v0, Lcom/txznet/comm/T/T2;->TJ:Z

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "TXZAppLoader1.0"

    const-string v1, "already created application"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/txznet/comm/T/T2;->TJ:Z

    .line 773
    invoke-direct {p0}, Lcom/txznet/comm/T/T2;->Tn()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 778
    const-string v0, "TXZAppLoader1.0"

    const-string v1, "application onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v0, "onLowMemory"

    invoke-static {v0}, Lcom/txznet/comm/T/T2;->T2(Ljava/lang/String;)V

    .line 782
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 783
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 795
    const-string v0, "TXZAppLoader1.0"

    const-string v1, "application onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v0, "onTerminate"

    invoke-static {v0}, Lcom/txznet/comm/T/T2;->T2(Ljava/lang/String;)V

    .line 799
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 800
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 805
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 807
    const-string v0, "onTrimMemory"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 808
    return-void
.end method
