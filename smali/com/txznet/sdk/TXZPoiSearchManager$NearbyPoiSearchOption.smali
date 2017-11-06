.class public Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
.super Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyPoiSearchOption"
.end annotation


# instance fields
.field protected T:D

.field protected T2:I

.field protected T3:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;-><init>()V

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T2:I

    return-void
.end method


# virtual methods
.method public getCenterLat()D
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T:D

    return-wide v0
.end method

.method public getCenterLng()D
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T3:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T2:I

    return v0
.end method

.method public setCenterLat(D)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0
    .param p1, "lat"    # D

    .prologue
    .line 357
    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T:D

    .line 358
    return-object p0
.end method

.method public setCenterLng(D)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0
    .param p1, "lng"    # D

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T3:D

    .line 373
    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    .line 400
    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    .line 382
    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    .line 391
    return-object p0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setRadius(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 342
    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T2:I

    .line 343
    return-object p0
.end method

.method public setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    .line 328
    return-object p0
.end method

.method public bridge synthetic setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    move-result-object v0

    return-object v0
.end method
