.class Lcom/txznet/comm/T3/T2$Tw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Tw"
.end annotation


# instance fields
.field T:Ljava/lang/String;

.field final synthetic T3:Lcom/txznet/comm/T3/T2;


# direct methods
.method public constructor <init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V
    .locals 0
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p2, p0, Lcom/txznet/comm/T3/T2$Tw;->T:Ljava/lang/String;

    .line 562
    return-void
.end method


# virtual methods
.method public T()V
    .locals 5

    .prologue
    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "rec":Lcom/txznet/comm/T3/T2$TN;
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v3, v2, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v3

    .line 590
    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v2, v2, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw;->T:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v2, v2, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw;->T:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/txznet/comm/T3/T2$TN;

    move-object v1, v0

    .line 593
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    if-eqz v1, :cond_1

    .line 595
    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$TN;->T()V

    .line 597
    :cond_1
    return-void

    .line 593
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    new-instance v1, Lcom/txznet/comm/T3/T2$Tw$1;

    invoke-direct {v1, p0, p2}, Lcom/txznet/comm/T3/T2$Tw$1;-><init>(Lcom/txznet/comm/T3/T2$Tw;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    .line 585
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/txznet/comm/T3/T2$Tw;->T()V

    .line 603
    return-void
.end method
