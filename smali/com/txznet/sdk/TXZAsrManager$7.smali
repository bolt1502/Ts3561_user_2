.class Lcom/txznet/sdk/TXZAsrManager$7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAsrManager;->setAsrTool(Lcom/txznet/sdk/TXZAsrManager$AsrTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZAsrManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAsrManager;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager$7;->T:Lcom/txznet/sdk/TXZAsrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 840
    const-string v2, "stop"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    const-string v2, "asr tool stop"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 842
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager$7;->T:Lcom/txznet/sdk/TXZAsrManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    invoke-interface {v2}, Lcom/txznet/sdk/TXZAsrManager$AsrTool;->stop()V

    .line 962
    :cond_0
    :goto_0
    return-object v4

    .line 845
    :cond_1
    const-string v2, "cancel"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 846
    const-string v2, "asr tool cancel"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 847
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager$7;->T:Lcom/txznet/sdk/TXZAsrManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    invoke-interface {v2}, Lcom/txznet/sdk/TXZAsrManager$AsrTool;->cancel()V

    goto :goto_0

    .line 850
    :cond_2
    const-string v2, "start"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p3}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 852
    .local v0, "json":Lcom/txznet/comm/TN/T;
    new-instance v1, Lcom/txznet/sdk/TXZAsrManager$AsrOption;

    invoke-direct {v1}, Lcom/txznet/sdk/TXZAsrManager$AsrOption;-><init>()V

    .line 853
    .local v1, "option":Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    const-string v2, "BOS"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v1, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T:Ljava/lang/Integer;

    .line 854
    const-string v2, "EOS"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v1, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T3:Ljava/lang/Integer;

    .line 855
    const-string v2, "KeySpeechTimeout"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v1, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T2:Ljava/lang/Integer;

    .line 857
    const-string v2, "Manual"

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->TN:Ljava/lang/Boolean;

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asr tool start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->TN:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 861
    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrManager$7;->T:Lcom/txznet/sdk/TXZAsrManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZAsrManager;->TN:Lcom/txznet/sdk/TXZAsrManager$AsrTool;

    new-instance v3, Lcom/txznet/sdk/TXZAsrManager$7$1;

    invoke-direct {v3, p0, v0, p3}, Lcom/txznet/sdk/TXZAsrManager$7$1;-><init>(Lcom/txznet/sdk/TXZAsrManager$7;Lcom/txznet/comm/TN/T;[B)V

    invoke-interface {v2, v1, v3}, Lcom/txznet/sdk/TXZAsrManager$AsrTool;->start(Lcom/txznet/sdk/TXZAsrManager$AsrOption;Lcom/txznet/sdk/TXZAsrManager$AsrCallback;)V

    goto :goto_0
.end method
