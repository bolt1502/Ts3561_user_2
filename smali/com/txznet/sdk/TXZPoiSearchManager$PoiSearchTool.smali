.class public interface abstract Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PoiSearchTool"
.end annotation


# virtual methods
.method public abstract searchInCity(Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchResultListener;)Lcom/txznet/sdk/TXZPoiSearchManager$SearchReq;
.end method

.method public abstract searchNearby(Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchResultListener;)Lcom/txznet/sdk/TXZPoiSearchManager$SearchReq;
.end method
