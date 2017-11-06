.class public Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchPoiSuggestion"
.end annotation


# instance fields
.field T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field T3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;->T:Ljava/util/List;

    return-object v0
.end method

.method public getKeywrods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;->T3:Ljava/util/List;

    return-object v0
.end method

.method public setCity(Ljava/util/List;)Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "city":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;->T:Ljava/util/List;

    .line 80
    return-object p0
.end method

.method public setKeywrods(Ljava/util/List;)Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "keywrods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;->T3:Ljava/util/List;

    .line 88
    return-object p0
.end method
