.class Lcom/txznet/sdk/TXZConfigManager$5$1;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZConfigManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZConfigManager$5;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZConfigManager$5;)V
    .locals 0

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$5$1;->T:Lcom/txznet/sdk/TXZConfigManager$5;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 3
    .param p1, "data"    # Lcom/txznet/comm/T3/T2$T2;

    .prologue
    .line 1390
    if-eqz p1, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$5$1;->T:Lcom/txznet/sdk/TXZConfigManager$5;

    iget-object v0, v0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;Z)Z

    .line 1392
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$5$1;->T:Lcom/txznet/sdk/TXZConfigManager$5;

    iget-object v1, v1, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v1, v1, Lcom/txznet/sdk/TXZConfigManager;->TN:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    .line 1395
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$5$1;->T:Lcom/txznet/sdk/TXZConfigManager$5;

    iget-object v1, v1, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v1, v1, Lcom/txznet/sdk/TXZConfigManager;->TN:Ljava/lang/Runnable;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 1399
    :cond_0
    return-void
.end method
