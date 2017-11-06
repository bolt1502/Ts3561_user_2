.class Lcom/txznet/comm/T3/T2$4;
.super Lcom/txznet/txz/util/T/T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T3",
        "<",
        "Ljava/lang/String;",
        "Lcom/txznet/comm/T3/T2$Te;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T3:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$Te;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/txznet/comm/T3/T2$Te;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iput-object p4, p0, Lcom/txznet/comm/T3/T2$4;->T:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/txznet/txz/util/T/T3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 684
    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v2, v1, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v2

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v1, v1, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$4;->T2:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v1, v1, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$4;->T2:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T2$TN;

    .line 691
    .local v0, "rec":Lcom/txznet/comm/T3/T2$TN;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    iget-object v1, v0, Lcom/txznet/comm/T3/T2$TN;->Te:Ljava/util/List;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$4;->TN:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {v0}, Lcom/txznet/comm/T3/T2$TN;->T3()V

    .line 694
    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v3, v1, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    new-instance v4, Lcom/txznet/comm/T3/T2$4$1;

    invoke-direct {v4, p0, v0}, Lcom/txznet/comm/T3/T2$4$1;-><init>(Lcom/txznet/comm/T3/T2$4;Lcom/txznet/comm/T3/T2$TN;)V

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->TN:Ljava/lang/Object;

    check-cast v1, Lcom/txznet/comm/T3/T2$Te;

    iget-object v1, v1, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T2()I

    move-result v1

    int-to-long v1, v1

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    .line 701
    return-void

    .line 688
    .end local v0    # "rec":Lcom/txznet/comm/T3/T2$TN;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/txznet/comm/T3/T2$TN;

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$4;->T:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/txznet/comm/T3/T2$TN;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V

    .line 689
    .restart local v0    # "rec":Lcom/txznet/comm/T3/T2$TN;
    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v1, v1, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$4;->T2:Ljava/lang/Object;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 691
    .end local v0    # "rec":Lcom/txznet/comm/T3/T2$TN;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 694
    .restart local v0    # "rec":Lcom/txznet/comm/T3/T2$TN;
    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/T3/T2$4;->TN:Ljava/lang/Object;

    check-cast v1, Lcom/txznet/comm/T3/T2$Te;

    iget-object v1, v1, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$T3;->T()I

    move-result v1

    int-to-long v1, v1

    goto :goto_1
.end method
