.class public Lcom/txznet/sdk/TXZLocationManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZLocationManager$GpsToolType;,
        Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;,
        Lcom/txznet/sdk/TXZLocationManager$T;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZLocationManager;


# instance fields
.field private T2:Ljava/lang/Object;

.field private T3:Z

.field private TN:Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;

.field private Te:Z

.field private Tw:Lcom/txznet/sdk/bean/LocationData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/txznet/sdk/TXZLocationManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZLocationManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZLocationManager;->T:Lcom/txznet/sdk/TXZLocationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T3:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZLocationManager;)Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZLocationManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->TN:Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;

    return-object v0
.end method

.method private T(Landroid/location/Location;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x0

    .line 225
    if-nez p1, :cond_1

    .line 226
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    if-eqz v7, :cond_0

    .line 227
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/LocationData;->reset()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 233
    .local v0, "accu":Ljava/lang/Float;
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 234
    .local v1, "alt":Ljava/lang/Double;
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 235
    .local v2, "bear":Ljava/lang/Float;
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 236
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 237
    .local v4, "lat":Ljava/lang/Double;
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 238
    .local v5, "lng":Ljava/lang/Double;
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 240
    .local v6, "speed":Ljava/lang/Float;
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    if-nez v7, :cond_2

    .line 241
    new-instance v7, Lcom/txznet/sdk/bean/LocationData;

    invoke-direct {v7}, Lcom/txznet/sdk/bean/LocationData;-><init>()V

    iput-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    .line 244
    :cond_2
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->gps_type:Ljava/lang/Integer;

    .line 245
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v4, v7, Lcom/txznet/sdk/bean/LocationData;->dbl_lat:Ljava/lang/Double;

    .line 246
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v5, v7, Lcom/txznet/sdk/bean/LocationData;->dbl_lng:Ljava/lang/Double;

    .line 247
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v2, v7, Lcom/txznet/sdk/bean/LocationData;->flt_direction:Ljava/lang/Float;

    .line 248
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v6, v7, Lcom/txznet/sdk/bean/LocationData;->flt_speed:Ljava/lang/Float;

    .line 249
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v1, v7, Lcom/txznet/sdk/bean/LocationData;->dbl_altitude:Ljava/lang/Double;

    .line 250
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->flt_radius:Ljava/lang/Float;

    .line 251
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v0, v7, Lcom/txznet/sdk/bean/LocationData;->accuracy:Ljava/lang/Float;

    .line 252
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v3, v7, Lcom/txznet/sdk/bean/LocationData;->extra_bundle:Landroid/os/Bundle;

    .line 254
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_addr:Ljava/lang/String;

    .line 255
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_provice:Ljava/lang/String;

    .line 256
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_city:Ljava/lang/String;

    .line 257
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_city_code:Ljava/lang/String;

    .line 258
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_district:Ljava/lang/String;

    .line 259
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_street:Ljava/lang/String;

    .line 260
    iget-object v7, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v9, v7, Lcom/txznet/sdk/bean/LocationData;->str_street_num:Ljava/lang/String;

    goto :goto_0
.end method

.method private T(Lcom/TN/T/Te/T$T2;)V
    .locals 5
    .param p1, "info"    # Lcom/TN/T/Te/T$T2;

    .prologue
    const/4 v4, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p1, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    .line 190
    .local v0, "geoInfo":Lcom/TN/T/Te/T$T;
    iget-object v1, p1, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    .line 192
    .local v1, "gpsInfo":Lcom/TN/T/Te/T$T3;
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    if-nez v2, :cond_3

    .line 197
    new-instance v2, Lcom/txznet/sdk/bean/LocationData;

    invoke-direct {v2}, Lcom/txznet/sdk/bean/LocationData;-><init>()V

    iput-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    .line 200
    :cond_3
    if-eqz v1, :cond_4

    .line 201
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->gps_type:Ljava/lang/Integer;

    .line 202
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->dbl_lat:Ljava/lang/Double;

    .line 203
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->dbl_lng:Ljava/lang/Double;

    .line 204
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->flt_direction:Ljava/lang/Float;

    .line 205
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->flt_speed:Ljava/lang/Float;

    .line 206
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->dbl_altitude:Ljava/lang/Double;

    .line 207
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v1, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->flt_radius:Ljava/lang/Float;

    .line 210
    :cond_4
    if-eqz v0, :cond_5

    .line 211
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_addr:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_provice:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_city:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_city_code:Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_district:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_street:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iget-object v3, v0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    iput-object v3, v2, Lcom/txznet/sdk/bean/LocationData;->str_street_num:Ljava/lang/String;

    .line 220
    :cond_5
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v4, v2, Lcom/txznet/sdk/bean/LocationData;->accuracy:Ljava/lang/Float;

    .line 221
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    iput-object v4, v2, Lcom/txznet/sdk/bean/LocationData;->extra_bundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZLocationManager;Lcom/TN/T/Te/T$T2;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZLocationManager;
    .param p1, "x1"    # Lcom/TN/T/Te/T$T2;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/txznet/sdk/TXZLocationManager;->T(Lcom/TN/T/Te/T$T2;)V

    return-void
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZLocationManager;)Lcom/txznet/sdk/bean/LocationData;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZLocationManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZLocationManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/txznet/sdk/TXZLocationManager;->T:Lcom/txznet/sdk/TXZLocationManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T3:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    check-cast v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZLocationManager;->setGpsTool(Lcom/txznet/sdk/TXZLocationManager$GpsToolType;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZLocationManager$T;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZLocationManager$T;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZLocationManager;->T(Lcom/txznet/sdk/TXZLocationManager$T;)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZLocationManager;->setGpsTool(Lcom/txznet/sdk/TXZLocationManager$GpsToolType;)V

    goto :goto_0
.end method

.method T(Lcom/txznet/sdk/TXZLocationManager$T;)V
    .locals 1
    .param p1, "tool"    # Lcom/txznet/sdk/TXZLocationManager$T;

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T3:Z

    .line 89
    iput-object p1, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public getCurrentLocationInfo()Lcom/txznet/sdk/bean/LocationData;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v4, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    instance-of v4, v4, Lcom/txznet/sdk/TXZLocationManager$T;

    if-eqz v4, :cond_1

    .line 162
    iget-object v3, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    check-cast v3, Lcom/txznet/sdk/TXZLocationManager$T;

    invoke-interface {v3}, Lcom/txznet/sdk/TXZLocationManager$T;->T()Landroid/location/Location;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/txznet/sdk/TXZLocationManager;->T(Landroid/location/Location;)V

    .line 163
    iget-object v3, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    .line 179
    :cond_0
    :goto_0
    return-object v3

    .line 166
    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "txz.loc.getLocation"

    invoke-virtual {v4, v5, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 168
    .local v1, "locInfo":[B
    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    invoke-static {v1}, Lcom/TN/T/Te/T$T2;->T([B)Lcom/TN/T/Te/T$T2;

    move-result-object v2

    .line 171
    .local v2, "locationInfo":Lcom/TN/T/Te/T$T2;
    invoke-direct {p0, v2}, Lcom/txznet/sdk/TXZLocationManager;->T(Lcom/TN/T/Te/T$T2;)V

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGpsLocation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;

    invoke-virtual {v5}, Lcom/txznet/sdk/bean/LocationData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/txznet/sdk/TXZLocationManager;->Tw:Lcom/txznet/sdk/bean/LocationData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v2    # "locationInfo":Lcom/TN/T/Te/T$T2;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setGpsTool(Lcom/txznet/sdk/TXZLocationManager$GpsToolType;)V
    .locals 5
    .param p1, "type"    # Lcom/txznet/sdk/TXZLocationManager$GpsToolType;

    .prologue
    const/4 v4, 0x0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZLocationManager;->T3:Z

    .line 147
    iput-object p1, p0, Lcom/txznet/sdk/TXZLocationManager;->T2:Ljava/lang/Object;

    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.loc.cleartool"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.loc.setInnerTool"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZLocationManager$GpsToolType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setLocationListener(Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/txznet/sdk/TXZLocationManager;->TN:Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;

    .line 98
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZLocationManager;->Te:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZLocationManager;->Te:Z

    .line 103
    const-string v0, "tool.loc."

    new-instance v1, Lcom/txznet/sdk/TXZLocationManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZLocationManager$1;-><init>(Lcom/txznet/sdk/TXZLocationManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    goto :goto_0
.end method
