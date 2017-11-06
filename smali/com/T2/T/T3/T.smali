.class public Lcom/T2/T/T3/T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T2/T/T3/T$T;
    }
.end annotation


# direct methods
.method private static T(Landroid/app/ActivityManager;)I
    .locals 1
    .param p0, "am"    # Landroid/app/ActivityManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public static T(Landroid/content/Context;Lcom/T2/T/T/T/T3/T;JI)Lcom/T2/T/T/T/T;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "diskCacheFileNameGenerator"    # Lcom/T2/T/T/T/T3/T;
    .param p2, "diskCacheSize"    # J
    .param p4, "diskCacheFileCount"    # I

    .prologue
    .line 85
    invoke-static {p0}, Lcom/T2/T/T3/T;->T3(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 86
    .local v2, "reserveCacheDir":Ljava/io/File;
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-gtz v0, :cond_0

    if-lez p4, :cond_1

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/T2/T/T2/T2;->T3(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "individualCacheDir":Ljava/io/File;
    :try_start_0
    new-instance v0, Lcom/T2/T/T/T/T/T/T3;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/T2/T/T/T/T/T/T3;-><init>(Ljava/io/File;Ljava/io/File;Lcom/T2/T/T/T/T3/T;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "individualCacheDir":Ljava/io/File;
    :goto_0
    return-object v0

    .line 91
    .restart local v1    # "individualCacheDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 92
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    .line 96
    .end local v1    # "individualCacheDir":Ljava/io/File;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {p0}, Lcom/T2/T/T2/T2;->T(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 97
    .local v7, "cacheDir":Ljava/io/File;
    new-instance v0, Lcom/T2/T/T/T/T/T3;

    invoke-direct {v0, v7, v2, p1}, Lcom/T2/T/T/T/T/T3;-><init>(Ljava/io/File;Ljava/io/File;Lcom/T2/T/T/T/T3/T;)V

    goto :goto_0
.end method

.method public static T(Landroid/content/Context;I)Lcom/T2/T/T/T3/T;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "memoryCacheSize"    # I

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 116
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 118
    .local v1, "memoryClass":I
    invoke-static {}, Lcom/T2/T/T3/T;->TN()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/T2/T/T3/T;->T2(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {v0}, Lcom/T2/T/T3/T;->T(Landroid/app/ActivityManager;)I

    move-result v1

    .line 121
    :cond_0
    const/high16 v2, 0x100000

    mul-int/2addr v2, v1

    div-int/lit8 p1, v2, 0x8

    .line 123
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "memoryClass":I
    :cond_1
    new-instance v2, Lcom/T2/T/T/T3/T/T3;

    invoke-direct {v2, p1}, Lcom/T2/T/T/T3/T/T3;-><init>(I)V

    return-object v2
.end method

.method public static T(Z)Lcom/T2/T/T3/T3/T3;
    .locals 1
    .param p0, "loggingEnabled"    # Z

    .prologue
    .line 147
    new-instance v0, Lcom/T2/T/T3/T3/T;

    invoke-direct {v0, p0}, Lcom/T2/T/T3/T3/T;-><init>(Z)V

    return-object v0
.end method

.method public static T(Landroid/content/Context;)Lcom/T2/T/T3/TN/T3;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v0, Lcom/T2/T/T3/TN/T;

    invoke-direct {v0, p0}, Lcom/T2/T/T3/TN/T;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static T()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    invoke-static {v0, v1}, Lcom/T2/T/T3/T;->T(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static T(IILcom/T2/T/T3/T/T3;)Ljava/util/concurrent/Executor;
    .locals 9
    .param p0, "threadPoolSize"    # I
    .param p1, "threadPriority"    # I
    .param p2, "tasksProcessingType"    # Lcom/T2/T/T3/T/T3;

    .prologue
    .line 63
    sget-object v0, Lcom/T2/T/T3/T/T3;->T3:Lcom/T2/T/T3/T/T3;

    if-ne p2, v0, :cond_0

    const/4 v8, 0x1

    .line 65
    .local v8, "lifo":Z
    :goto_0
    if-eqz v8, :cond_1

    new-instance v6, Lcom/T2/T/T3/T/T/T2;

    invoke-direct {v6}, Lcom/T2/T/T3/T/T/T2;-><init>()V

    .line 66
    .local v6, "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    const-string v1, "uil-pool-"

    invoke-static {p1, v1}, Lcom/T2/T/T3/T;->T(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move v1, p0

    move v2, p0

    .line 66
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 63
    .end local v6    # "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v8    # "lifo":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 65
    .restart local v8    # "lifo":Z
    :cond_1
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method

.method private static T(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "threadPriority"    # I
    .param p1, "threadNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lcom/T2/T/T3/T$T;

    invoke-direct {v0, p0, p1}, Lcom/T2/T/T3/T$T;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static T2()Lcom/T2/T/T3/T2/T;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/T2/T/T3/T2/T3;

    invoke-direct {v0}, Lcom/T2/T/T3/T2/T3;-><init>()V

    return-object v0
.end method

.method private static T2(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static T3()Lcom/T2/T/T/T/T3/T;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/T2/T/T/T/T3/T3;

    invoke-direct {v0}, Lcom/T2/T/T/T/T3/T3;-><init>()V

    return-object v0
.end method

.method private static T3(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/T2/T/T2/T2;->T(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 103
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, "individualDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    move-object v0, v1

    .line 107
    :cond_1
    return-object v0
.end method

.method private static TN()Z
    .locals 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
