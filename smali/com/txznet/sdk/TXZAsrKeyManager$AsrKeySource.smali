.class public Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsrKeySource"
.end annotation


# instance fields
.field private T:Ljava/lang/String;

.field private T3:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    .line 264
    .local p2, "cmds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    .line 266
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 268
    .local v0, "size":I
    :goto_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 269
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    .line 271
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    .line 272
    return-void

    .line 266
    .end local v0    # "size":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    .line 276
    iput-object p2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    .line 277
    return-void
.end method

.method public static assign(Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .locals 7
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 305
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "arrays":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    array-length v2, v0

    .line 309
    .local v2, "len":I
    aget-object v3, v0, v6

    .line 310
    .local v3, "type":Ljava/lang/String;
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 311
    .local v1, "cmds":[Ljava/lang/String;
    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance v4, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    invoke-direct {v4, v3, v1}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 315
    .end local v0    # "arrays":[Ljava/lang/String;
    .end local v1    # "cmds":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    new-instance v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "aks":Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 322
    .local v1, "cmds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->setKeyCmds([Ljava/lang/String;)V

    .line 325
    .end local v1    # "cmds":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getKeyCmds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyCmds([Ljava/lang/String;)V
    .locals 0
    .param p1, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    .line 289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 296
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 297
    .local v2, "keyword":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
