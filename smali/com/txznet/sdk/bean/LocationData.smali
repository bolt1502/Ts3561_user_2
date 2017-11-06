.class public Lcom/txznet/sdk/bean/LocationData;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public accuracy:Ljava/lang/Float;

.field public dbl_altitude:Ljava/lang/Double;

.field public dbl_lat:Ljava/lang/Double;

.field public dbl_lng:Ljava/lang/Double;

.field public extra_bundle:Landroid/os/Bundle;

.field public flt_direction:Ljava/lang/Float;

.field public flt_radius:Ljava/lang/Float;

.field public flt_speed:Ljava/lang/Float;

.field public gps_type:Ljava/lang/Integer;

.field public str_addr:Ljava/lang/String;

.field public str_city:Ljava/lang/String;

.field public str_city_code:Ljava/lang/String;

.field public str_district:Ljava/lang/String;

.field public str_provice:Ljava/lang/String;

.field public str_street:Ljava/lang/String;

.field public str_street_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->gps_type:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_lat:Ljava/lang/Double;

    .line 21
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_lng:Ljava/lang/Double;

    .line 25
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->flt_direction:Ljava/lang/Float;

    .line 29
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->flt_speed:Ljava/lang/Float;

    .line 33
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_altitude:Ljava/lang/Double;

    .line 37
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->flt_radius:Ljava/lang/Float;

    .line 41
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->accuracy:Ljava/lang/Float;

    .line 46
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_addr:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_provice:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_city:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_city_code:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_district:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_street:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_street_num:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->extra_bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->gps_type:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_lat:Ljava/lang/Double;

    .line 78
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_lng:Ljava/lang/Double;

    .line 79
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->flt_direction:Ljava/lang/Float;

    .line 80
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->flt_speed:Ljava/lang/Float;

    .line 81
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_altitude:Ljava/lang/Double;

    .line 82
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->flt_radius:Ljava/lang/Float;

    .line 83
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_addr:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_provice:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_city:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_city_code:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_district:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_street:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->str_street_num:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/txznet/sdk/bean/LocationData;->accuracy:Ljava/lang/Float;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationData [gps_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->gps_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbl_lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_lat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbl_lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_lng:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flt_direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->flt_direction:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flt_speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->flt_speed:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbl_altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->dbl_altitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flt_radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->flt_radius:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->accuracy:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_provice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_provice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_city_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_city_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_street="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", str_street_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->str_street_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra_bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/bean/LocationData;->extra_bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
