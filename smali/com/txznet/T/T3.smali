.class public Lcom/txznet/T/T3;
.super Ldalvik/system/DexClassLoader;
.source "Proguard"


# instance fields
.field T:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dexUnzipDir"    # Ljava/lang/String;
    .param p3, "optimizedDirectory"    # Ljava/lang/String;
    .param p4, "librarySearchPath"    # Ljava/lang/String;
    .param p5, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/txznet/T/T3;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/txznet/T/T3;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, p3, p4, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 52
    iput-object p4, p0, Lcom/txznet/T/T3;->T:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 8
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "dexUnzipDir"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 22
    const-string v2, ".apk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/txznet/txz/util/TN$T3;

    const/4 v3, 0x0

    const-string v4, "assets/dexs/"

    invoke-static {v4, p1}, Lcom/txznet/txz/util/TN$T3;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/txznet/txz/util/TN$T3;

    move-result-object v4

    aput-object v4, v2, v3

    const-wide/16 v3, 0x1388

    invoke-static {p0, v2, v3, v4}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/String;[Lcom/txznet/txz/util/TN$T3;J)Ljava/util/List;

    move-result-object v6

    .line 28
    .local v6, "dexFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p4

    .line 30
    .local v0, "ret":Ljava/lang/ClassLoader;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    move-object v5, v0

    .end local v0    # "ret":Ljava/lang/ClassLoader;
    .local v5, "ret":Ljava/lang/ClassLoader;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, "f":Ljava/lang/String;
    const-string v2, "TXZAppLoader1.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add dex file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/txznet/T/T3;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/txznet/T/T3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .end local v5    # "ret":Ljava/lang/ClassLoader;
    .restart local v0    # "ret":Ljava/lang/ClassLoader;
    move-object v5, v0

    .line 36
    .end local v0    # "ret":Ljava/lang/ClassLoader;
    .restart local v5    # "ret":Ljava/lang/ClassLoader;
    goto :goto_0

    .end local v1    # "f":Ljava/lang/String;
    .end local v5    # "ret":Ljava/lang/ClassLoader;
    .end local v6    # "dexFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    move-object v5, p4

    .line 39
    :cond_1
    return-object v5
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 43
    return-object p0
.end method


# virtual methods
.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/txznet/T/T3;->T:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v1, "fLibPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "TXZAppLoader1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find solibs["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v2    # "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 63
    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "def":Ljava/lang/String;
    const-string v3, "TXZAppLoader1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find default["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 65
    goto :goto_0
.end method
