.class public Lcom/txznet/txz/util/recordcenter/T/TN;
.super Lcom/txznet/txz/util/recordcenter/T/T2;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x7d00

    invoke-direct {p0, v0}, Lcom/txznet/txz/util/recordcenter/T/TN;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/txznet/txz/util/recordcenter/T/T2;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/txz/util/recordcenter/T/T;J)I
    .locals 3
    .param p1, "writer"    # Lcom/txznet/txz/util/recordcenter/T/T;
    .param p2, "clock"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceCacheBuffer_PcmMono16K readByClock, clock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 26
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 30
    :goto_0
    return v1

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    long-to-int v0, v1

    .line 30
    .local v0, "millSecond":I
    invoke-virtual {p0, p1, v0}, Lcom/txznet/txz/util/recordcenter/T/TN;->T3(Lcom/txznet/txz/util/recordcenter/T/T;I)I

    move-result v1

    goto :goto_0
.end method

.method public T3(Lcom/txznet/txz/util/recordcenter/T/T;I)I
    .locals 3
    .param p1, "writer"    # Lcom/txznet/txz/util/recordcenter/T/T;
    .param p2, "millSecond"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceCacheBuffer_PcmMono16K readByDurnation, millSecond="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 37
    if-gtz p2, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1

    .line 40
    :cond_0
    mul-int/lit8 v0, p2, 0x20

    .line 41
    .local v0, "dataLength":I
    invoke-super {p0, p1, v0}, Lcom/txznet/txz/util/recordcenter/T/T2;->T(Lcom/txznet/txz/util/recordcenter/T/T;I)I

    move-result v1

    goto :goto_0
.end method
