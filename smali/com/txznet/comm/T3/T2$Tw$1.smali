.class Lcom/txznet/comm/T3/T2$Tw$1;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2$Tw;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T",
        "<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T2$Tw;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2$Tw;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 570
    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    iget-object v4, v4, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    invoke-static {v4}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T2$T;

    .line 571
    .local v1, "listener":Lcom/txznet/comm/T3/T2$T;
    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    iget-object v4, v4, Lcom/txznet/comm/T3/T2$Tw;->T:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/txznet/comm/T3/T2$T;->T3(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    .end local v1    # "listener":Lcom/txznet/comm/T3/T2$T;
    :cond_0
    iget-object v3, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T3:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    .line 575
    .local v3, "service":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    iget-object v4, v4, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v5, v4, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v5

    .line 576
    :try_start_0
    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    iget-object v4, v4, Lcom/txznet/comm/T3/T2$Tw;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v4, v4, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    iget-object v6, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    iget-object v6, v6, Lcom/txznet/comm/T3/T2$Tw;->T:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txznet/comm/T3/T2$TN;

    .line 577
    .local v2, "rec":Lcom/txznet/comm/T3/T2$TN;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-static {}, Lcom/txznet/comm/T3/T2;->TN()I

    move-result v4

    iput v4, v2, Lcom/txznet/comm/T3/T2$TN;->Tw:I

    .line 579
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    iget-object v5, v2, Lcom/txznet/comm/T3/T2$TN;->Ty:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    .line 580
    invoke-static {v3}, Lcom/txznet/txz/T3/T$T;->T(Landroid/os/IBinder;)Lcom/txznet/txz/T3/T;

    move-result-object v4

    iput-object v4, v2, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    .line 581
    iget-object v4, p0, Lcom/txznet/comm/T3/T2$Tw$1;->T:Lcom/txznet/comm/T3/T2$Tw;

    iget-object v4, v4, Lcom/txznet/comm/T3/T2$Tw;->T:Ljava/lang/String;

    iput-object v4, v2, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    .line 582
    invoke-virtual {v2}, Lcom/txznet/comm/T3/T2$TN;->T3()V

    .line 583
    return-void

    .line 577
    .end local v2    # "rec":Lcom/txznet/comm/T3/T2$TN;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
