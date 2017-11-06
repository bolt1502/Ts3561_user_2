.class public Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/bean/TxzPoi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoDetail"
.end annotation


# instance fields
.field public area:Ljava/lang/String;

.field public building:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public room:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public town:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatGeoDetail(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    invoke-direct {v0}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;-><init>()V

    .line 31
    .local v0, "gd":Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    .local v1, "jo":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    const-string v2, "country"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const-string v2, "country"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->country:Ljava/lang/String;

    .line 44
    :cond_2
    const-string v2, "province"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    const-string v2, "province"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->province:Ljava/lang/String;

    .line 47
    :cond_3
    const-string v2, "town"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    const-string v2, "town"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->town:Ljava/lang/String;

    .line 50
    :cond_4
    const-string v2, "area"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51
    const-string v2, "area"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->area:Ljava/lang/String;

    .line 53
    :cond_5
    const-string v2, "street"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 54
    const-string v2, "street"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->street:Ljava/lang/String;

    .line 56
    :cond_6
    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->number:Ljava/lang/String;

    .line 59
    :cond_7
    const-string v2, "building"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 60
    const-string v2, "building"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->building:Ljava/lang/String;

    .line 62
    :cond_8
    const-string v2, "room"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "room"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->room:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 65
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 74
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "country"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 75
    const-string v1, "province"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->province:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 76
    const-string v1, "town"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->town:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 77
    const-string v1, "area"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->area:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 78
    const-string v1, "street"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->street:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 79
    const-string v1, "number"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 80
    const-string v1, "building"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->building:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 81
    const-string v1, "room"

    iget-object v2, p0, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->room:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 82
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
