.class Lcom/txznet/sdk/TXZMusicManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZMusicManager;->addMusicStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZMusicManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZMusicManager;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$1;->T:Lcom/txznet/sdk/TXZMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 480
    iget-object v4, p0, Lcom/txznet/sdk/TXZMusicManager$1;->T:Lcom/txznet/sdk/TXZMusicManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    if-nez v4, :cond_1

    .line 516
    :cond_0
    return-object v5

    .line 483
    :cond_1
    const-string v4, "onStatusChange"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 484
    const/4 v3, 0x0

    .line 486
    .local v3, "state":I
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 490
    :goto_0
    iget-object v4, p0, Lcom/txznet/sdk/TXZMusicManager$1;->T:Lcom/txznet/sdk/TXZMusicManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .line 491
    .local v1, "listener":Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
    invoke-interface {v1, v3}, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;->onStatusChange(I)V

    goto :goto_1

    .line 494
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
    .end local v3    # "state":I
    :cond_2
    const-string v4, "playMusic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 495
    const/4 v2, 0x0

    .line 497
    .local v2, "mm":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 501
    :goto_2
    iget-object v4, p0, Lcom/txznet/sdk/TXZMusicManager$1;->T:Lcom/txznet/sdk/TXZMusicManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .line 502
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;->playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V

    goto :goto_3

    .line 505
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
    .end local v2    # "mm":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :cond_3
    const-string v4, "endMusic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    const/4 v2, 0x0

    .line 508
    .restart local v2    # "mm":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 512
    :goto_4
    iget-object v4, p0, Lcom/txznet/sdk/TXZMusicManager$1;->T:Lcom/txznet/sdk/TXZMusicManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZMusicManager;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .line 513
    .restart local v1    # "listener":Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;->endMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V

    goto :goto_5

    .line 510
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
    :catch_0
    move-exception v4

    goto :goto_4

    .line 499
    :catch_1
    move-exception v4

    goto :goto_2

    .line 487
    .end local v2    # "mm":Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .restart local v3    # "state":I
    :catch_2
    move-exception v4

    goto :goto_0
.end method
