.class Lcom/txznet/sdk/TXZAudioManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAudioManager;->setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZAudioManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAudioManager;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 212
    const-string v2, "isPlaying"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 232
    :goto_0
    return-object v2

    .line 214
    :cond_0
    const-string v2, "play"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->start()V

    .line 232
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    :cond_2
    const-string v2, "prev"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->prev()V

    goto :goto_1

    .line 218
    :cond_3
    const-string v2, "next"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->next()V

    goto :goto_1

    .line 220
    :cond_4
    const-string v2, "pause"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->pause()V

    goto :goto_1

    .line 222
    :cond_5
    const-string v2, "exit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 223
    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->exit()V

    goto :goto_1

    .line 224
    :cond_6
    const-string v2, "playFm"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 227
    .local v1, "keywords":Ljava/lang/String;
    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager$2;->T:Lcom/txznet/sdk/TXZAudioManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {v2, v1}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->playFm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    .end local v1    # "keywords":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
