.class Lcom/ts/main/auth/TestMainActivity$2;
.super Ljava/lang/Object;
.source "TestMainActivity.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/auth/TestMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/TestMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/TestMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/TestMainActivity$2;->this$0:Lcom/ts/main/auth/TestMainActivity;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    .line 304
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$2;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget-object v4, v4, Lcom/ts/main/auth/TestMainActivity;->locationManager:Landroid/location/LocationManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 305
    .local v0, "gpsStatus":Landroid/location/GpsStatus;
    packed-switch p1, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v1

    .line 311
    .local v1, "i":I
    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :pswitch_2
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v3

    .line 320
    .local v3, "satellites":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$2;->this$0:Lcom/ts/main/auth/TestMainActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/ts/main/auth/TestMainActivity;->access$2(Lcom/ts/main/auth/TestMainActivity;Ljava/util/List;)V

    .line 322
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 336
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$2;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # getter for: Lcom/ts/main/auth/TestMainActivity;->mtsivSatelliteSignal:Lcom/ts/main/auth/TsImageView;
    invoke-static {v4}, Lcom/ts/main/auth/TestMainActivity;->access$3(Lcom/ts/main/auth/TestMainActivity;)Lcom/ts/main/auth/TsImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$2;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # getter for: Lcom/ts/main/auth/TestMainActivity;->mtsivSatelliteSignal:Lcom/ts/main/auth/TsImageView;
    invoke-static {v4}, Lcom/ts/main/auth/TestMainActivity;->access$3(Lcom/ts/main/auth/TestMainActivity;)Lcom/ts/main/auth/TsImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ts/main/auth/TsImageView;->postInvalidate()V

    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 333
    .local v2, "satellite":Landroid/location/GpsSatellite;
    iget-object v5, p0, Lcom/ts/main/auth/TestMainActivity$2;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # getter for: Lcom/ts/main/auth/TestMainActivity;->satelliteList:Ljava/util/List;
    invoke-static {v5}, Lcom/ts/main/auth/TestMainActivity;->access$0(Lcom/ts/main/auth/TestMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
