.class public Lcom/txznet/txz/T/T2;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/TN/T/T2/T$T;",
            ">;"
        }
    .end annotation
.end field

.field private static T2:Ljava/lang/String;

.field private static T3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/txznet/T/T;->T()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/txz/T/T2;->T3:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/txznet/T/T;->T()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/solibs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/txz/T/T2;->T2:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/txz/T/T2;->T:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load plugin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 45
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/txznet/txz/T/T2;->T3:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 46
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/txznet/txz/T/T2;->T2:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 47
    new-instance v3, Ldalvik/system/DexClassLoader;

    sget-object v7, Lcom/txznet/txz/T/T2;->T3:Ljava/lang/String;

    sget-object v8, Lcom/txznet/txz/T/T2;->T2:Ljava/lang/String;

    const-class v9, Lcom/txznet/txz/T/T2;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v3, p0, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 50
    .local v3, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txznet/txz/T/T3;

    .line 52
    .local v5, "objPluginVersion":Lcom/txznet/txz/T/T3;
    invoke-interface {v5}, Lcom/txznet/txz/T/T3;->T()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 82
    .end local v0    # "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "objPluginVersion":Lcom/txznet/txz/T/T3;
    :goto_0
    return-object v6

    .line 55
    .restart local v0    # "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "objPluginVersion":Lcom/txznet/txz/T/T3;
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txznet/txz/T/T;

    .line 56
    .local v4, "objPlugin":Lcom/txznet/txz/T/T;
    invoke-interface {v4}, Lcom/txznet/txz/T/T;->T3()I

    move-result v7

    sget v8, Lcom/txznet/txz/T/TN;->T2:I

    if-le v7, v8, :cond_0

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plugin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " load err:comm version is too low["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/txznet/txz/T/TN;->T2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/txznet/txz/T/T;->T3()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "objPlugin":Lcom/txznet/txz/T/T;
    .end local v5    # "objPluginVersion":Lcom/txznet/txz/T/T3;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "plugin:load plugin error"

    invoke-static {v7, v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    throw v6

    .line 63
    .restart local v0    # "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "objPlugin":Lcom/txznet/txz/T/T;
    .restart local v5    # "objPluginVersion":Lcom/txznet/txz/T/T3;
    :cond_0
    :try_start_2
    new-instance v2, Lcom/TN/T/T2/T$T;

    invoke-direct {v2}, Lcom/TN/T/T2/T$T;-><init>()V

    .line 64
    .local v2, "info":Lcom/TN/T/T2/T$T;
    iput-object p1, v2, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/txznet/txz/T/T2;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    .line 66
    invoke-interface {v4}, Lcom/txznet/txz/T/T;->T()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    .line 67
    sget-object v7, Lcom/txznet/txz/T/T2;->T:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v4, v3, p0, p2}, Lcom/txznet/txz/T/T;->T(Ljava/lang/ClassLoader;Ljava/lang/String;[B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 38
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 39
    .local v0, "end":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 40
    .local v1, "start":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static T3(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 88
    :try_start_0
    const-string v2, "load."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "load."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "param":Ljava/lang/String;
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 91
    .local v0, "n":I
    invoke-static {}, Lcom/txznet/T/T;->T3()Lcom/txznet/T/T;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Lcom/txznet/T/T;->T(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;

    .line 100
    .end local v0    # "n":I
    .end local v1    # "param":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 94
    :cond_1
    const-string v2, "download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {p2}, Lcom/txznet/comm/T3/T/Ty;->T([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    goto :goto_0
.end method
