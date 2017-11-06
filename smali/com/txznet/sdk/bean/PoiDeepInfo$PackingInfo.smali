.class public Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/bean/PoiDeepInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackingInfo"
.end annotation


# instance fields
.field public parkinginfo:Ljava/lang/String;

.field public priceInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromString(Lorg/json/JSONObject;)Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;
    .locals 5
    .param p0, "info"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    const-string v4, "taginfo"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "str":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "js":Lorg/json/JSONObject;
    new-instance v2, Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;

    invoke-direct {v2}, Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;-><init>()V

    .line 34
    .local v2, "packingInfo":Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;
    const-string v4, "priceinfo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const-string v4, "priceinfo "

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;->priceInfo:Ljava/lang/String;

    .line 36
    :cond_0
    const-string v4, "parkinginfo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    const-string v4, "parkinginfo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;->parkinginfo:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "packingInfo":Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    const/4 v2, 0x0

    goto :goto_0
.end method
