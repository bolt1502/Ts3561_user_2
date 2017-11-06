.class public Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
.super Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityPoiSearchOption"
.end annotation


# instance fields
.field protected Te:Ljava/lang/String;

.field protected Tw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->Te:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->Tw:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->Te:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;

    .line 295
    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;

    .line 304
    return-object p0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->Tw:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;

    .line 248
    return-object p0
.end method

.method public bridge synthetic setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    move-result-object v0

    return-object v0
.end method
