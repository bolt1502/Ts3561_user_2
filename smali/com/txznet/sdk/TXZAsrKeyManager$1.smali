.class Lcom/txznet/sdk/TXZAsrKeyManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAsrKeyManager;->setCommCmdsTool(Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZAsrKeyManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAsrKeyManager;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 557
    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 560
    :cond_0
    const-string v0, "handle_screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;->handleScreen(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_1
    const-string v0, "handle_front_camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;->handleFrontCamera(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_2
    const-string v0, "handle_back_camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;->handleBackCamera(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0

    .line 569
    :cond_3
    const-string v0, "backHome"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;->backHome()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0

    .line 572
    :cond_4
    const-string v0, "backNavi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;->backNavi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0

    .line 575
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$1;->T:Lcom/txznet/sdk/TXZAsrKeyManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZAsrKeyManager;->T(Lcom/txznet/sdk/TXZAsrKeyManager;)Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;->procCmd(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0
.end method
