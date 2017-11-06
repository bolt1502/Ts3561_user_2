.class Lcom/txznet/sdk/TXZResourceManager$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/Runnable;

.field final synthetic T3:Lcom/txznet/sdk/TXZResourceManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZResourceManager;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T3:Lcom/txznet/sdk/TXZResourceManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T:Ljava/lang/Runnable;

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
    .line 1006
    if-eqz p3, :cond_1

    .line 1007
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1008
    .local v0, "taskId":J
    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T3:Lcom/txznet/sdk/TXZResourceManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZResourceManager;->T(Lcom/txznet/sdk/TXZResourceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T3:Lcom/txznet/sdk/TXZResourceManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZResourceManager;->T(Lcom/txznet/sdk/TXZResourceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T3:Lcom/txznet/sdk/TXZResourceManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZResourceManager;->T(Lcom/txznet/sdk/TXZResourceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1011
    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T3:Lcom/txznet/sdk/TXZResourceManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZResourceManager;->T(Lcom/txznet/sdk/TXZResourceManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .end local v0    # "taskId":J
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 1014
    :cond_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager$4;->T:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
