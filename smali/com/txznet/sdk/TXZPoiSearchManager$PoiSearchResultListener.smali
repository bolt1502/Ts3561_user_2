.class public interface abstract Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchResultListener;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PoiSearchResultListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/bean/Poi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuggestion(Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;)V
.end method
