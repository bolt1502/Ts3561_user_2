.class public Lcom/txznet/comm/ui/Tw;
.super Landroid/database/Observable;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/Tw$T;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/txznet/comm/ui/Tw$T;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public T()V
    .locals 3

    .prologue
    .line 19
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/Tw$T;

    invoke-interface {v1}, Lcom/txznet/comm/ui/Tw$T;->T()V

    .line 20
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v2

    .line 24
    return-void

    .line 23
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public T2()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/Tw$T;

    invoke-interface {v1}, Lcom/txznet/comm/ui/Tw$T;->T2()V

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v2

    .line 48
    return-void

    .line 47
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public T3()V
    .locals 3

    .prologue
    .line 35
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/ui/Tw$T;

    invoke-interface {v1}, Lcom/txznet/comm/ui/Tw$T;->T3()V

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    :cond_0
    monitor-exit v2

    .line 40
    return-void

    .line 39
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
