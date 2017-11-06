.class public Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsrSources"
.end annotation


# instance fields
.field T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign([B)Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 411
    if-eqz p0, :cond_0

    .line 412
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>([B)V

    .line 413
    .local v6, "json":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 414
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "asrJson":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 416
    new-instance v2, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;

    invoke-direct {v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;-><init>()V

    .line 417
    .local v2, "as":Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v1, v4

    .line 418
    .local v5, "j":Ljava/lang/String;
    invoke-static {v5}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->assign(Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    move-result-object v0

    .line 419
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {v2, v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->addAsrKeySource(Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;)V

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "as":Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;
    .end local v3    # "asrJson":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "j":Ljava/lang/String;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public addAsrKeySource(Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;)V
    .locals 1
    .param p1, "aks"    # Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public addAsrKeySourceByTypeKeywords(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    invoke-direct {v0, p1, p2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 349
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->addAsrKeySource(Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;)V

    .line 350
    return-void
.end method

.method public varargs addAsrKeySourceByTypeKeywords(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    invoke-direct {v0, p1, p2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 354
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->addAsrKeySource(Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;)V

    .line 355
    return-void
.end method

.method public copy()Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;
    .locals 6

    .prologue
    .line 429
    new-instance v3, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;

    invoke-direct {v3}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;-><init>()V

    .line 430
    .local v3, "asPos":Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;
    invoke-virtual {p0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->getAsrKeySources()Ljava/util/List;

    move-result-object v2

    .line 431
    .local v2, "akss":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;>;"
    if-eqz v2, :cond_1

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v1, "aksList":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    .line 434
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->copy()Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v0    # "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    :cond_0
    invoke-virtual {v3, v1}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->setAsrKeySources(Ljava/util/List;)V

    .line 438
    .end local v1    # "aksList":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method public getAsrKeySources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    return-object v0
.end method

.method public varargs modifyAsrKeyCmds(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 358
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    .line 360
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {v0, p2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->setKeyCmds([Ljava/lang/String;)V

    .line 366
    .end local v0    # "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeAsrKeySourceByType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    .line 371
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 377
    .end local v0    # "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeAsrKeySourceByType(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 381
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->removeAsrKeySourceByType(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public varargs removeAsrKeySourceByType([Ljava/lang/String;)V
    .locals 4
    .param p1, "types"    # [Ljava/lang/String;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 390
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->removeAsrKeySourceByType(Ljava/lang/String;)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAsrKeySources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "akss":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;>;"
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    .line 338
    return-void
.end method

.method public toBytes()[B
    .locals 5

    .prologue
    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 398
    iget-object v4, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrSources;->T:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    .line 399
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "json":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .end local v2    # "json":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .restart local v2    # "json":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 405
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 407
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
