.class public Lcom/txznet/sdk/bean/NaviLatLng;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:D

.field private T3:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/NaviLatLng;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/txznet/sdk/bean/NaviLatLng;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/NaviLatLng;-><init>()V

    .line 54
    .local v1, "naviLatLng":Lcom/txznet/sdk/bean/NaviLatLng;
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/NaviLatLng;->T(Lcom/txznet/comm/TN/T;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method protected T()Lcom/txznet/comm/TN/T;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 32
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "mLatitude"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 33
    const-string v1, "mLongitude"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 34
    return-object v0
.end method

.method protected T(Lcom/txznet/comm/TN/T;)V
    .locals 5
    .param p1, "json"    # Lcom/txznet/comm/TN/T;

    .prologue
    const-wide/16 v3, 0x0

    .line 48
    const-string v0, "mLatitude"

    const-class v1, Ljava/lang/Double;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    .line 49
    const-string v0, "mLongitude"

    const-class v1, Ljava/lang/Double;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    .line 50
    return-void
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    .line 20
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    .line 28
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v1, "jo":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "mLatitude"

    iget-wide v3, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 63
    const-string v2, "mLongitude"

    iget-wide v3, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NaviLatLng;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 44
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NaviLatLng;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 39
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
