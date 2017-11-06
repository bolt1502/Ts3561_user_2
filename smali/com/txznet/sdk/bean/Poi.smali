.class public Lcom/txznet/sdk/bean/Poi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/Poi$CoordType;,
        Lcom/txznet/sdk/bean/Poi$PoiAction;
    }
.end annotation


# static fields
.field public static final POI_SOURCE_BAIDU_IMPL:I = 0x6

.field public static final POI_SOURCE_BAIDU_LOCAL:I = 0x7

.field public static final POI_SOURCE_BAIDU_WEB:I = 0x8

.field public static final POI_SOURCE_DZDP:I = 0x2

.field public static final POI_SOURCE_GAODE_IMPL:I = 0x3

.field public static final POI_SOURCE_GAODE_LOCAL:I = 0x4

.field public static final POI_SOURCE_GAODE_WEB:I = 0x5

.field public static final POI_SOURCE_KAILIDE:I = 0x9

.field public static final POI_SOURCE_MEIXING:I = 0xb

.field public static final POI_SOURCE_QIHOO:I = 0xc

.field public static final POI_SOURCE_TENCENT:I = 0xa

.field public static final POI_SOURCE_TXZ:I = 0x1

.field public static final POI_TYPE_BUSINESS:I = 0x2

.field public static final POI_TYPE_POIDEATAIL:I = 0x1

.field public static final POI_TYPE_TXZ:I = 0x3

.field private static T:D


# instance fields
.field T0:[Ljava/lang/String;

.field T5:I

.field T7:D

.field TF:Lcom/txznet/sdk/bean/Poi$CoordType;

.field TH:Ljava/lang/String;

.field TL:Ljava/lang/String;

.field TO:D

.field TQ:Ljava/lang/String;

.field Tc:Ljava/lang/String;

.field Tk:Ljava/lang/String;

.field To:I

.field Tt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 451
    const-wide v0, 0x404a2e1077c7044eL    # 52.35987755982988

    sput-wide v0, Lcom/txznet/sdk/bean/Poi;->T:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object v0, Lcom/txznet/sdk/bean/Poi$CoordType;->GCJ02:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    .line 128
    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    .line 133
    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    return-void
.end method

.method public static Convert_BD09_To_GCJ02(DD)[D
    .locals 15
    .param p0, "lat"    # D
    .param p2, "lng"    # D

    .prologue
    .line 461
    const-wide v9, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double v3, p2, v9

    .local v3, "x":D
    const-wide v9, 0x3f789374bc6a7efaL    # 0.006

    sub-double v5, p0, v9

    .line 462
    .local v5, "y":D
    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const-wide v11, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v13, Lcom/txznet/sdk/bean/Poi;->T:D

    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double v7, v9, v11

    .line 463
    .local v7, "z":D
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v11, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v13, Lcom/txznet/sdk/bean/Poi;->T:D

    mul-double/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double v1, v9, v11

    .line 464
    .local v1, "theta":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double p2, v7, v9

    .line 465
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double p0, v7, v9

    .line 466
    const/4 v9, 0x2

    new-array v0, v9, [D

    .line 467
    .local v0, "point":[D
    const/4 v9, 0x0

    aput-wide p0, v0, v9

    .line 468
    const/4 v9, 0x1

    aput-wide p2, v0, v9

    .line 469
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 444
    new-instance v1, Lcom/txznet/sdk/bean/Poi;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/Poi;-><init>()V

    .line 445
    .local v1, "p":Lcom/txznet/sdk/bean/Poi;
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/Poi;->T(Lcom/txznet/comm/TN/T;)V

    .line 447
    return-object v1
.end method


# virtual methods
.method protected T()Lcom/txznet/comm/TN/T;
    .locals 4

    .prologue
    .line 394
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 395
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "lat"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 396
    const-string v1, "lng"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 397
    const-string v1, "city"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 398
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 399
    const-string v1, "geo"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 400
    const-string v1, "distance"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getDistance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 401
    const-string v1, "action"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 402
    const-string v1, "coordtype"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getType()Lcom/txznet/sdk/bean/Poi$CoordType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 403
    const-string v1, "extre"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getExtraStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 404
    const-string v1, "source"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getSourceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 405
    const-string v1, "poitype"

    iget v2, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 406
    return-object v0
.end method

.method protected T(Lcom/txznet/comm/TN/T;)V
    .locals 7
    .param p1, "json"    # Lcom/txznet/comm/TN/T;

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 420
    const-string v1, "lat"

    const-class v2, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    .line 421
    const-string v1, "lng"

    const-class v2, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    .line 422
    const-string v1, "city"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TL:Ljava/lang/String;

    .line 423
    const-string v1, "name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TQ:Ljava/lang/String;

    .line 424
    const-string v1, "geo"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TH:Ljava/lang/String;

    .line 425
    const-string v1, "distance"

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->To:I

    .line 426
    const-string v1, "action"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->Tc:Ljava/lang/String;

    .line 427
    const-string v1, "coordtype"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    .local v0, "type":Ljava/lang/String;
    const-string v1, "source"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    .line 429
    const-string v1, "extre"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->Tk:Ljava/lang/String;

    .line 430
    const-string v1, "poitype"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    .line 431
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    const-string v1, "BAIDU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    sget-object v1, Lcom/txznet/sdk/bean/Poi$CoordType;->BAIDU:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    .line 441
    :goto_0
    return-void

    .line 436
    :cond_0
    sget-object v1, Lcom/txznet/sdk/bean/Poi$CoordType;->GCJ02:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    goto :goto_0

    .line 439
    :cond_1
    sget-object v1, Lcom/txznet/sdk/bean/Poi$CoordType;->GCJ02:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->Tc:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->T0:[Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TL:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/txznet/sdk/bean/Poi;->To:I

    return v0
.end method

.method public getExtraStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->Tk:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TH:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 5

    .prologue
    .line 141
    iget-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    sget-object v2, Lcom/txznet/sdk/bean/Poi$CoordType;->BAIDU:Lcom/txznet/sdk/bean/Poi$CoordType;

    if-ne v1, v2, :cond_1

    .line 142
    iget-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    iget-wide v3, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    invoke-static {v1, v2, v3, v4}, Lcom/txznet/comm/T3/T/TN;->T(DD)[D

    move-result-object v0

    .line 143
    .local v0, "orgLatLng":[D
    if-nez v0, :cond_0

    .line 144
    iget-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    .line 149
    .end local v0    # "orgLatLng":[D
    :goto_0
    return-wide v1

    .line 146
    .restart local v0    # "orgLatLng":[D
    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    goto :goto_0

    .line 149
    .end local v0    # "orgLatLng":[D
    :cond_1
    iget-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    goto :goto_0
.end method

.method public getLng()D
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    sget-object v2, Lcom/txznet/sdk/bean/Poi$CoordType;->BAIDU:Lcom/txznet/sdk/bean/Poi$CoordType;

    if-ne v1, v2, :cond_1

    .line 169
    iget-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    iget-wide v3, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    invoke-static {v1, v2, v3, v4}, Lcom/txznet/comm/T3/T/TN;->T(DD)[D

    move-result-object v0

    .line 170
    .local v0, "orgLatLng":[D
    if-nez v0, :cond_0

    .line 171
    iget-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    .line 175
    .end local v0    # "orgLatLng":[D
    :goto_0
    return-wide v1

    .line 173
    .restart local v0    # "orgLatLng":[D
    :cond_0
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    goto :goto_0

    .line 175
    .end local v0    # "orgLatLng":[D
    :cond_1
    iget-wide v1, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TQ:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalLat()D
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    return-wide v0
.end method

.method public getOriginalLng()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    return-wide v0
.end method

.method public getPoiType()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    return v0
.end method

.method public getType()Lcom/txznet/sdk/bean/Poi$CoordType;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->Tc:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "alias"    # [Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->T0:[Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TL:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public setCoordType(Lcom/txznet/sdk/bean/Poi$CoordType;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "type"    # Lcom/txznet/sdk/bean/Poi$CoordType;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    .line 346
    return-object p0
.end method

.method public setDistance(I)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/txznet/sdk/bean/Poi;->To:I

    .line 222
    return-object p0
.end method

.method public setExtraStr(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->Tk:Ljava/lang/String;

    .line 335
    return-object p0
.end method

.method public setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "geoinfo"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TH:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setLat(D)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "lat"    # D

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    .line 159
    return-object p0
.end method

.method public setLng(D)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "lng"    # D

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    .line 203
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TQ:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public setPoiType(I)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 389
    iput p1, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    .line 390
    return-object p0
.end method

.method public setSourceType(I)Lcom/txznet/sdk/bean/Poi;
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    .line 372
    return-object p0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 416
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    .line 411
    .local v0, "json":Lcom/txznet/comm/TN/T;
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
