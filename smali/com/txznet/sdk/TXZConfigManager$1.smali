.class Lcom/txznet/sdk/TXZConfigManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/T3/T2$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZConfigManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZConfigManager;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 1049
    const-string v0, "com.txznet.txz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    const-string v0, "txz disconnected"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;Z)Z

    .line 1053
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    if-eqz v0, :cond_1

    .line 1054
    sget-boolean v0, Lcom/txznet/sdk/TXZService;->T:Z

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZConfigManager$ConnectListener;->onExcepiton()V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZConfigManager$ConnectListener;->onDisconnect()V

    .line 1060
    :cond_1
    return-void
.end method

.method public T3(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 1065
    const-string v0, "com.txznet.txz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const-string v0, "txz connected: initializeSDK"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    .line 1069
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$1;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZConfigManager$ConnectListener;->onConnect()V

    .line 1073
    :cond_0
    return-void
.end method
