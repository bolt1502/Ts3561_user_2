.class public Lcom/txznet/sdk/bean/PoiDetail;
.super Lcom/txznet/sdk/bean/Poi;
.source "Proguard"


# instance fields
.field T1:Ljava/lang/String;

.field Tf:Ljava/lang/String;

.field Tg:Ljava/lang/String;

.field Tu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/txznet/sdk/bean/Poi;-><init>()V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/bean/PoiDetail;->setPoiType(I)Lcom/txznet/sdk/bean/Poi;

    .line 15
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v1, Lcom/txznet/sdk/bean/PoiDetail;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/PoiDetail;-><init>()V

    .line 218
    .local v1, "p":Lcom/txznet/sdk/bean/PoiDetail;
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/PoiDetail;->T(Lcom/txznet/comm/TN/T;)V

    .line 220
    return-object v1
.end method


# virtual methods
.method protected T()Lcom/txznet/comm/TN/T;
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 194
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "province"

    iget-object v2, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 195
    const-string v1, "postcode"

    iget-object v2, p0, Lcom/txznet/sdk/bean/PoiDetail;->T1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 196
    const-string v1, "telephone"

    iget-object v2, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 197
    const-string v1, "website"

    iget-object v2, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 198
    return-object v0
.end method

.method protected T(Lcom/txznet/comm/TN/T;)V
    .locals 2
    .param p1, "json"    # Lcom/txznet/comm/TN/T;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/Poi;->T(Lcom/txznet/comm/TN/T;)V

    .line 210
    const-string v0, "province"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tu:Ljava/lang/String;

    .line 211
    const-string v0, "postcode"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->T1:Ljava/lang/String;

    .line 212
    const-string v0, "telephone"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tf:Ljava/lang/String;

    .line 213
    const-string v0, "website"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tg:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->T1:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tu:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tf:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tg:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "alias"    # [Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/txznet/sdk/bean/PoiDetail;->T0:[Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/Poi;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 159
    return-object p0
.end method

.method public bridge synthetic setDistance(I)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setDistance(I)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setDistance(I)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/Poi;->setDistance(I)Lcom/txznet/sdk/bean/Poi;

    .line 100
    return-object p0
.end method

.method public bridge synthetic setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "geoinfo"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/Poi;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 169
    return-object p0
.end method

.method public bridge synthetic setLat(D)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/bean/PoiDetail;->setLat(D)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setLat(D)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "lat"    # D

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/txznet/sdk/bean/Poi;->setLat(D)Lcom/txznet/sdk/bean/Poi;

    .line 129
    return-object p0
.end method

.method public bridge synthetic setLng(D)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/bean/PoiDetail;->setLng(D)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setLng(D)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "lng"    # D

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/txznet/sdk/bean/Poi;->setLng(D)Lcom/txznet/sdk/bean/Poi;

    .line 139
    return-object p0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/Poi;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    .line 149
    return-object p0
.end method

.method public setPostcode(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "postcode"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/txznet/sdk/bean/PoiDetail;->T1:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setProvince(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tu:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public bridge synthetic setSourceType(I)Lcom/txznet/sdk/bean/Poi;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setSourceType(I)Lcom/txznet/sdk/bean/PoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setSourceType(I)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/Poi;->setSourceType(I)Lcom/txznet/sdk/bean/Poi;

    .line 188
    return-object p0
.end method

.method public setTelephone(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tf:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public setWebsite(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 0
    .param p1, "website"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/txznet/sdk/bean/PoiDetail;->Tg:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/txznet/sdk/bean/PoiDetail;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 204
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
