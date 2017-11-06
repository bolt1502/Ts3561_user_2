.class Lcom/txznet/sdk/TXZWechatManager$1;
.super Landroid/content/BroadcastReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZWechatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZWechatManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZWechatManager;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "id":Ljava/lang/String;
    const-string v2, "img"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "img":Ljava/lang/String;
    invoke-static {v0}, Lcom/txznet/comm/TN/T2;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZWechatManager;->T(Lcom/txznet/sdk/TXZWechatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZWechatManager;->T(Lcom/txznet/sdk/TXZWechatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/sdk/TXZWechatManager$ImageListener;

    invoke-interface {v2, v0, v1}, Lcom/txznet/sdk/TXZWechatManager$ImageListener;->onImageReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/txznet/sdk/TXZWechatManager$1;->T:Lcom/txznet/sdk/TXZWechatManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZWechatManager;->T(Lcom/txznet/sdk/TXZWechatManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method
