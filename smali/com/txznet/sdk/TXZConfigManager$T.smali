.class Lcom/txznet/sdk/TXZConfigManager$T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "T"
.end annotation


# instance fields
.field public T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

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

    .line 1678
    :try_start_0
    const-string v1, "onChangeWakeupKeywords"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1679
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    if-eqz v1, :cond_0

    .line 1680
    new-instance v0, Lcom/txznet/comm/TN/T;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, "json":Lcom/txznet/comm/TN/T;
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    const-string v1, "kws"

    const-class v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;->onChangeWakeupKeywords([Ljava/lang/String;)V

    .line 1695
    .end local v0    # "json":Lcom/txznet/comm/TN/T;
    :cond_0
    :goto_0
    return-object v4

    .line 1686
    :cond_1
    const-string v1, "onChangeCommunicationStyle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    if-eqz v1, :cond_0

    .line 1688
    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;->onChangeCommunicationStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v1

    goto :goto_0
.end method
