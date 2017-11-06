.class public Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiSearchOption"
.end annotation


# instance fields
.field private T:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;

.field protected TG:I

.field protected Tn:Ljava/lang/String;

.field protected Ty:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/16 v0, 0xa

    iput v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->Ty:I

    .line 171
    const/16 v0, 0x2710

    iput v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->TG:I

    .line 172
    new-instance v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->T:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;

    return-void
.end method


# virtual methods
.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->Tn:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->Ty:I

    return v0
.end method

.method public getSearchInfo()Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->T:Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->TG:I

    return v0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->Tn:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->Ty:I

    .line 222
    return-object p0
.end method

.method public setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;->TG:I

    .line 182
    return-object p0
.end method
