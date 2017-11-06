.class public Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiSearchInfo"
.end annotation


# instance fields
.field T:Z

.field T2:I

.field T3:I

.field TN:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T:Z

    .line 132
    const/4 v0, -0x2

    iput v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T3:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T2:I

    .line 134
    iput v1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->TN:I

    return-void
.end method


# virtual methods
.method public getDisShowEngine()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T2:I

    return v0
.end method

.method public getPoiRetryCount()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->TN:I

    return v0
.end method

.method public getPoiSourceConf()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T3:I

    return v0
.end method

.method public isTxzPoiToolComplete()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T:Z

    return v0
.end method

.method public setDisShowEngine(I)V
    .locals 0
    .param p1, "disShowEngine"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T2:I

    .line 158
    return-void
.end method

.method public setPoiRetryCount(I)V
    .locals 0
    .param p1, "poiRetryCount"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->TN:I

    .line 149
    return-void
.end method

.method public setPoiSourceConf(I)V
    .locals 0
    .param p1, "poiSourceConf"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T3:I

    .line 152
    return-void
.end method

.method public setTxzPoiToolComplete(Z)V
    .locals 0
    .param p1, "txzPoiToolComplete"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;->T:Z

    .line 140
    return-void
.end method
