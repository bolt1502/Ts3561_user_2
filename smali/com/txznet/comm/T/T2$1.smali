.class Lcom/txznet/comm/T/T2$1;
.super Ljava/lang/Thread;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T/T2;->TN()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Landroid/app/Application;

.field final synthetic T2:Lcom/txznet/comm/T/T2;

.field final synthetic T3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T/T2;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/txznet/comm/T/T2$1;->T2:Lcom/txznet/comm/T/T2;

    iput-object p2, p0, Lcom/txznet/comm/T/T2$1;->T:Landroid/app/Application;

    iput-object p3, p0, Lcom/txznet/comm/T/T2$1;->T3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method T()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    :try_start_0
    iget-object v6, p0, Lcom/txznet/comm/T/T2$1;->T2:Lcom/txznet/comm/T/T2;

    iget-object v7, p0, Lcom/txznet/comm/T/T2$1;->T:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/txznet/comm/T/T2;->T3(Ljava/lang/String;)[B

    move-result-object v3

    .line 379
    .local v3, "signApp":[B
    iget-object v6, p0, Lcom/txznet/comm/T/T2$1;->T2:Lcom/txznet/comm/T/T2;

    iget-object v7, p0, Lcom/txznet/comm/T/T2$1;->T3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;)[B

    move-result-object v2

    .line 380
    .local v2, "signApk":[B
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 382
    :cond_0
    const-string v6, "TXZAppLoader1.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load outter warning: get sign failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lcom/txznet/T/T;->TG()V

    .line 384
    invoke-static {}, Lcom/txznet/T/T;->Tn()V

    move v4, v5

    .line 403
    .end local v2    # "signApk":[B
    .end local v3    # "signApp":[B
    :goto_0
    return v4

    .line 387
    .restart local v2    # "signApk":[B
    .restart local v3    # "signApp":[B
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    array-length v6, v3

    array-length v7, v2

    if-eq v6, v7, :cond_3

    .line 389
    :cond_2
    iget-object v5, p0, Lcom/txznet/comm/T/T2$1;->T2:Lcom/txznet/comm/T/T2;

    const-string v6, "load outter failed: check sign length failed"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/txznet/comm/T/T2;->T(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v2    # "signApk":[B
    .end local v3    # "signApp":[B
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/txznet/comm/T/T2$1;->T2:Lcom/txznet/comm/T/T2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load outter failed: check sign exception failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/txznet/comm/T/T2;->T(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "signApk":[B
    .restart local v3    # "signApp":[B
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    array-length v6, v2

    if-ge v1, v6, :cond_5

    .line 393
    aget-byte v6, v3, v1

    aget-byte v7, v2, v1

    if-eq v6, v7, :cond_4

    .line 394
    iget-object v5, p0, Lcom/txznet/comm/T/T2$1;->T2:Lcom/txznet/comm/T/T2;

    const-string v6, "load outter failed: check sign data failed"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/txznet/comm/T/T2;->T(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 392
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_5
    const-string v4, "TXZAppLoader1.0"

    const-string v6, "load outter success: check sign success"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 403
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 408
    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2$1;->T()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/txznet/comm/T/T2$1;->T:Landroid/app/Application;

    invoke-static {v0}, Lcom/txznet/comm/T2/T;->T(Landroid/content/Context;)V

    .line 413
    invoke-static {}, Lcom/txznet/T/T;->Tn()V

    .line 415
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method
