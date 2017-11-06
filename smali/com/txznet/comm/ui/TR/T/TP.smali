.class public Lcom/txznet/comm/ui/TR/T/TP;
.super Lcom/txznet/comm/ui/TR/T/TJ;
.source "Proguard"


# instance fields
.field public T:Z

.field private Ty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/sdk/bean/Poi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TJ;-><init>(I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/TP;->Ty:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/TN/T;)V
    .locals 11
    .param p1, "data"    # Lcom/txznet/comm/TN/T;

    .prologue
    .line 33
    iget-object v9, p0, Lcom/txznet/comm/ui/TR/T/TP;->Ty:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 34
    const-string v9, "action"

    const-class v10, Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string v9, "city"

    const-class v10, Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    .local v2, "city":Ljava/lang/String;
    const-string v9, "poitype"

    const-class v10, Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    .local v1, "business":Ljava/lang/String;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/txznet/comm/ui/TR/T/TP;->T:Z

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "business"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 39
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/txznet/comm/ui/TR/T/TP;->T:Z

    .line 41
    :cond_0
    const-string v9, "pois"

    const-class v10, Lorg/json/JSONArray;

    invoke-virtual {p1, v9, v10}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 42
    .local v5, "obJsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v9, p0, Lcom/txznet/comm/ui/TR/T/TP;->T2:I

    if-ge v3, v9, :cond_2

    .line 45
    :try_start_0
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 46
    .local v4, "jo":Lorg/json/JSONObject;
    const/4 v8, 0x1

    .line 47
    .local v8, "poitype":I
    const-string v9, "poitype"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 48
    const-string v9, "poitype"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 51
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "objJson":Ljava/lang/String;
    const/4 v7, 0x0

    .line 58
    .local v7, "poi":Lcom/txznet/sdk/bean/Poi;
    packed-switch v8, :pswitch_data_0

    .line 71
    :goto_1
    invoke-virtual {v7, v0}, Lcom/txznet/sdk/bean/Poi;->setAction(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 72
    iget-object v9, p0, Lcom/txznet/comm/ui/TR/T/TP;->Ty:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v4    # "jo":Lorg/json/JSONObject;
    .end local v6    # "objJson":Ljava/lang/String;
    .end local v7    # "poi":Lcom/txznet/sdk/bean/Poi;
    .end local v8    # "poitype":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .restart local v4    # "jo":Lorg/json/JSONObject;
    .restart local v6    # "objJson":Ljava/lang/String;
    .restart local v7    # "poi":Lcom/txznet/sdk/bean/Poi;
    .restart local v8    # "poitype":I
    :pswitch_0
    invoke-static {v6}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v7

    .line 61
    goto :goto_1

    .line 64
    :pswitch_1
    invoke-static {v6}, Lcom/txznet/sdk/bean/TxzPoi;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi;

    move-result-object v7

    .line 65
    goto :goto_1

    .line 68
    :pswitch_2
    invoke-static {v6}, Lcom/txznet/sdk/bean/PoiDetail;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 77
    .end local v3    # "i":I
    .end local v4    # "jo":Lorg/json/JSONObject;
    .end local v6    # "objJson":Ljava/lang/String;
    .end local v7    # "poi":Lcom/txznet/sdk/bean/Poi;
    .end local v8    # "poitype":I
    :cond_2
    return-void

    .line 73
    .restart local v3    # "i":I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
