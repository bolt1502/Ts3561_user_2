.class public Lcom/txznet/sdk/bean/TxzPoi;
.super Lcom/txznet/sdk/bean/Poi;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
    }
.end annotation


# instance fields
.field T:Ljava/lang/String;

.field T2:Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

.field T3:I

.field public isTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/txznet/sdk/bean/Poi;-><init>()V

    .line 16
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/bean/TxzPoi;->setPoiType(I)Lcom/txznet/sdk/bean/Poi;

    .line 17
    return-void
.end method

.method public static creatCompanyPoi(Lorg/json/JSONObject;)Lcom/txznet/sdk/bean/TxzPoi;
    .locals 4
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 171
    new-instance v0, Lcom/txznet/sdk/bean/TxzPoi;

    invoke-direct {v0}, Lcom/txznet/sdk/bean/TxzPoi;-><init>()V

    .line 173
    .local v0, "po":Lcom/txznet/sdk/bean/TxzPoi;
    :try_start_0
    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 174
    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/txznet/sdk/bean/TxzPoi;->setLng(D)Lcom/txznet/sdk/bean/Poi;

    .line 178
    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 179
    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/txznet/sdk/bean/TxzPoi;->setLat(D)Lcom/txznet/sdk/bean/Poi;

    .line 183
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 184
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 188
    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 189
    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 193
    const-string v2, "city"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "city"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const-string v2, "city"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 196
    :cond_0
    const-string v2, "logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    const-string v2, "logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setLogo(Ljava/lang/String;)V

    .line 199
    :cond_1
    const-string v2, "hot"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "hot"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    const-string v2, "hot"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setHot(I)V

    .line 202
    :cond_2
    const-string v2, "detail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "detail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    const-string v2, "detail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->creatGeoDetail(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setGeoDetail(Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;)V

    .line 205
    :cond_3
    const-string v2, "top"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "top"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    const-string v2, "top"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setTop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0    # "po":Lcom/txznet/sdk/bean/TxzPoi;
    :cond_4
    :goto_0
    return-object v0

    .restart local v0    # "po":Lcom/txznet/sdk/bean/TxzPoi;
    :cond_5
    move-object v0, v1

    .line 176
    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 181
    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 186
    goto :goto_0

    :cond_8
    move-object v0, v1

    .line 191
    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 212
    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 158
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "json":Lcom/txznet/comm/TN/T;
    new-instance v1, Lcom/txznet/sdk/bean/TxzPoi;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/TxzPoi;-><init>()V

    .line 160
    .local v1, "p":Lcom/txznet/sdk/bean/TxzPoi;
    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/TxzPoi;->T(Lcom/txznet/comm/TN/T;)V

    .line 161
    const-string v2, "top"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setTop(Z)V

    .line 162
    const-string v2, "hot"

    const-class v3, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setHot(I)V

    .line 163
    const-string v2, "logo"

    const-class v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setLogo(Ljava/lang/String;)V

    .line 164
    const-string v2, "detail"

    const-class v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->creatGeoDetail(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setGeoDetail(Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;)V

    .line 166
    return-object v1
.end method

.method public static getCompanyPoiForJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "jsonResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/sdk/bean/Poi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 143
    :cond_0
    :goto_0
    return-object v4

    .line 127
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v4, "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/txznet/sdk/bean/Poi;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 131
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 132
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 133
    invoke-static {v1}, Lcom/txznet/sdk/bean/TxzPoi;->creatCompanyPoi(Lorg/json/JSONObject;)Lcom/txznet/sdk/bean/TxzPoi;

    move-result-object v3

    .line 134
    .local v3, "poi":Lcom/txznet/sdk/bean/TxzPoi;
    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3    # "poi":Lcom/txznet/sdk/bean/TxzPoi;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 143
    goto :goto_0
.end method


# virtual methods
.method public getGeoDetail()Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->T2:Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    return-object v0
.end method

.method public getHot()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->T3:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->T:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->isTop:Z

    return v0
.end method

.method public setGeoDetail(Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;)V
    .locals 0
    .param p1, "geoDetail"    # Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->T2:Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    .line 105
    return-void
.end method

.method public setHot(I)V
    .locals 0
    .param p1, "hot"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->T3:I

    .line 113
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->T:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->isTop:Z

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 148
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "geo"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 149
    const-string v1, "top"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->isTop()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 150
    const-string v1, "hot"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getHot()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 151
    const-string v1, "logo"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 152
    const-string v2, "detail"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getGeoDetail()Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getGeoDetail()Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 154
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
