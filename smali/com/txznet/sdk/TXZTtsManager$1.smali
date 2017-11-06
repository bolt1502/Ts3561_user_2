.class Lcom/txznet/sdk/TXZTtsManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZTtsManager;->setTtsTool(Lcom/txznet/sdk/TXZTtsManager$TtsTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZTtsManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZTtsManager;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/txznet/sdk/TXZTtsManager$1;->T:Lcom/txznet/sdk/TXZTtsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 427
    const-string v4, "start"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p3}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 429
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v4, "stream"

    const-class v5, Ljava/lang/Integer;

    sget v6, Lcom/txznet/comm/T3/T/TP;->T:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 431
    .local v2, "stream":I
    const-string v4, "text"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 432
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tts tool start: stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 434
    iget-object v4, p0, Lcom/txznet/sdk/TXZTtsManager$1;->T:Lcom/txznet/sdk/TXZTtsManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    new-instance v5, Lcom/txznet/sdk/TXZTtsManager$1$1;

    invoke-direct {v5, p0, p3}, Lcom/txznet/sdk/TXZTtsManager$1$1;-><init>(Lcom/txznet/sdk/TXZTtsManager$1;[B)V

    invoke-interface {v4, v2, v3, v5}, Lcom/txznet/sdk/TXZTtsManager$TtsTool;->start(ILjava/lang/String;Lcom/txznet/sdk/TXZTtsManager$TtsCallback;)V

    .line 470
    .end local v0    # "json":Lcom/txznet/comm/TN/T;
    .end local v2    # "stream":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 459
    :cond_1
    const-string v4, "cancel"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    const-string v4, "tts tool cancel"

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 461
    iget-object v4, p0, Lcom/txznet/sdk/TXZTtsManager$1;->T:Lcom/txznet/sdk/TXZTtsManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    invoke-interface {v4}, Lcom/txznet/sdk/TXZTtsManager$TtsTool;->cancel()V

    goto :goto_0

    .line 465
    :cond_2
    const-string v4, "setOption"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    new-instance v1, Lcom/txznet/sdk/TXZTtsManager$TtsOption;

    invoke-direct {v1}, Lcom/txznet/sdk/TXZTtsManager$TtsOption;-><init>()V

    .line 467
    .local v1, "option":Lcom/txznet/sdk/TXZTtsManager$TtsOption;
    iget-object v4, p0, Lcom/txznet/sdk/TXZTtsManager$1;->T:Lcom/txznet/sdk/TXZTtsManager;

    iget-object v4, v4, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    invoke-interface {v4, v1}, Lcom/txznet/sdk/TXZTtsManager$TtsTool;->setOption(Lcom/txznet/sdk/TXZTtsManager$TtsOption;)V

    goto :goto_0
.end method
