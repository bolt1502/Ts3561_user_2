.class public Lcom/txznet/sdk/TXZNavManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZNavManager$8;,
        Lcom/txznet/sdk/TXZNavManager$CallBack;,
        Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;,
        Lcom/txznet/sdk/TXZNavManager$TxzNavParam;,
        Lcom/txznet/sdk/TXZNavManager$NavToolType;,
        Lcom/txznet/sdk/TXZNavManager$NavTool;,
        Lcom/txznet/sdk/TXZNavManager$NavStatusListener;,
        Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;
    }
.end annotation


# static fields
.field private static TB:Lcom/txznet/sdk/TXZNavManager;


# instance fields
.field T:Z

.field T2:Z

.field T3:Z

.field private T7:Z

.field TG:Ljava/lang/Boolean;

.field TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

.field TN:Z

.field private TO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZNavManager$NavStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private TP:Z

.field TR:Ljava/lang/String;

.field TW:Ljava/lang/Boolean;

.field Te:Z

.field Tn:Ljava/lang/Boolean;

.field private To:Lcom/txznet/sdk/bean/NaviInfo;

.field private Tr:Ljava/lang/Object;

.field Tw:Ljava/lang/Boolean;

.field Ty:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/txznet/sdk/TXZNavManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZNavManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager;->TB:Lcom/txznet/sdk/TXZNavManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    .line 208
    iput-object v2, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    .line 297
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T7:Z

    .line 700
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->T3:Z

    .line 701
    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T2:Z

    .line 702
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->TN:Z

    .line 703
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->Te:Z

    .line 949
    iput-object v2, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    .line 31
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZNavManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZNavManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    return-object v0
.end method

.method static T(Lcom/txznet/sdk/TXZNavManager$NavToolType;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .prologue
    .line 441
    const-string v0, ""

    .line 442
    .local v0, "nav":Ljava/lang/String;
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$8;->T:[I

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZNavManager$NavToolType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 477
    const-string v0, ""

    .line 480
    :goto_0
    return-object v0

    .line 444
    :pswitch_0
    const-string v0, "BAIDU_MAP"

    .line 445
    goto :goto_0

    .line 447
    :pswitch_1
    const-string v0, "BAIDU_NAV"

    .line 448
    goto :goto_0

    .line 450
    :pswitch_2
    const-string v0, "BAIDU_NAV_HD"

    .line 451
    goto :goto_0

    .line 453
    :pswitch_3
    const-string v0, "GAODE_MAP"

    .line 454
    goto :goto_0

    .line 456
    :pswitch_4
    const-string v0, "GAODE_MAP_CAR"

    .line 457
    goto :goto_0

    .line 459
    :pswitch_5
    const-string v0, "GAODE_NAV"

    .line 460
    goto :goto_0

    .line 462
    :pswitch_6
    const-string v0, "KAILIDE_NAV"

    .line 463
    goto :goto_0

    .line 465
    :pswitch_7
    const-string v0, "TXZ"

    .line 466
    goto :goto_0

    .line 468
    :pswitch_8
    const-string v0, "MX_NAV"

    .line 469
    goto :goto_0

    .line 471
    :pswitch_9
    const-string v0, "QIHOO_NAV"

    .line 472
    goto :goto_0

    .line 474
    :pswitch_a
    const-string v0, "TX_NAV"

    .line 475
    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZNavManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZNavManager;
    .param p1, "x1"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/txznet/sdk/TXZNavManager;->T([B)V

    return-void
.end method

.method private T([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 864
    if-nez p1, :cond_0

    .line 865
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    .line 866
    new-instance v7, Lcom/txznet/sdk/bean/NaviInfo;

    invoke-direct {v7}, Lcom/txznet/sdk/bean/NaviInfo;-><init>()V

    iput-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    .line 925
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    if-nez v7, :cond_1

    .line 871
    new-instance v7, Lcom/txznet/sdk/bean/NaviInfo;

    invoke-direct {v7}, Lcom/txznet/sdk/bean/NaviInfo;-><init>()V

    iput-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    .line 875
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 876
    .local v1, "jo":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CameraDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCameraDistance(I)V

    .line 877
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CameraType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCameraType(I)V

    .line 878
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurLink"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentLink(I)V

    .line 879
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurPoint"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentPoint(I)V

    .line 880
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurStep"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentStep(I)V

    .line 881
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurStepRetainDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrStepRemainDistance(I)V

    .line 883
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurStepRetainTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentStepRemainTime(I)V

    .line 885
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "Direction"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setDirection(I)V

    .line 886
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "IconType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setIconType(I)V

    .line 887
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "LimitSpeed"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setLimitSpeed(I)V

    .line 888
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "NaviType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setNaviType(I)V

    .line 889
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "PathRetainDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setPathRemainDistance(I)V

    .line 891
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "PathRetainTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setPathRemainTime(I)V

    .line 892
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "ServiceAreaDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setServiceAreaDistance(I)V

    .line 894
    const-string v7, "true"

    const-string v8, "HasCameraCoord"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 895
    const-string v7, "CameraCoordLatitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 896
    .local v2, "lat":D
    const-string v7, "CameraCoordLongitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 897
    .local v4, "lng":D
    const/4 v6, 0x0

    .line 898
    .local v6, "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCameraCoord()Lcom/txznet/sdk/bean/NaviLatLng;

    move-result-object v7

    if-nez v7, :cond_4

    .line 899
    new-instance v6, Lcom/txznet/sdk/bean/NaviLatLng;

    .end local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    invoke-direct {v6}, Lcom/txznet/sdk/bean/NaviLatLng;-><init>()V

    .line 900
    .restart local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7, v6}, Lcom/txznet/sdk/bean/NaviInfo;->setCameraCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V

    .line 904
    :goto_1
    invoke-virtual {v6, v2, v3}, Lcom/txznet/sdk/bean/NaviLatLng;->setLatitude(D)V

    .line 905
    invoke-virtual {v6, v4, v5}, Lcom/txznet/sdk/bean/NaviLatLng;->setLongitude(D)V

    .line 907
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    :cond_2
    const-string v7, "true"

    const-string v8, "HasCoord"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 908
    const-string v7, "CoordLatitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 909
    .restart local v2    # "lat":D
    const-string v7, "CoordLongitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 910
    .restart local v4    # "lng":D
    const/4 v6, 0x0

    .line 911
    .restart local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCoord()Lcom/txznet/sdk/bean/NaviLatLng;

    move-result-object v7

    if-nez v7, :cond_5

    .line 912
    new-instance v6, Lcom/txznet/sdk/bean/NaviLatLng;

    .end local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    invoke-direct {v6}, Lcom/txznet/sdk/bean/NaviLatLng;-><init>()V

    .line 913
    .restart local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7, v6}, Lcom/txznet/sdk/bean/NaviInfo;->setCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V

    .line 917
    :goto_2
    invoke-virtual {v6, v2, v3}, Lcom/txznet/sdk/bean/NaviLatLng;->setLatitude(D)V

    .line 918
    invoke-virtual {v6, v4, v5}, Lcom/txznet/sdk/bean/NaviLatLng;->setLongitude(D)V

    .line 920
    .end local v2    # "lat":D
    .end local v4    # "lng":D
    .end local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    :cond_3
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurrentRoadName"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentRoadName(Ljava/lang/String;)V

    .line 921
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "NextRoadName"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setNextRoadName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 922
    .end local v1    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 902
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jo":Lorg/json/JSONObject;
    .restart local v2    # "lat":D
    .restart local v4    # "lng":D
    .restart local v6    # "nll":Lcom/txznet/sdk/bean/NaviLatLng;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCameraCoord()Lcom/txznet/sdk/bean/NaviLatLng;

    move-result-object v6

    goto :goto_1

    .line 915
    :cond_5
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCoord()Lcom/txznet/sdk/bean/NaviLatLng;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2
.end method

.method static synthetic T2(Lcom/txznet/sdk/TXZNavManager;)Lcom/txznet/sdk/bean/NaviInfo;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZNavManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    return-object v0
.end method

.method private T2()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    if-eqz v0, :cond_0

    .line 992
    new-instance v0, Lcom/txznet/sdk/TXZNavManager$7;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZNavManager$7;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavStatusListener(Lcom/txznet/sdk/TXZNavManager$NavStatusListener;)V

    .line 1025
    :cond_0
    return-void
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZNavManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    return-object v0
.end method

.method private T3()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    const-string v0, "status.nav."

    new-instance v1, Lcom/txznet/sdk/TXZNavManager$3;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZNavManager$3;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 363
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.setStatusListener"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 364
    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZNavManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/txznet/sdk/TXZNavManager;->TB:Lcom/txznet/sdk/TXZNavManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 4

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 48
    const/4 v0, 0x0

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    .line 56
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T:Z

    if-eqz v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->Te:Z

    iget-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->T3:Z

    iget-boolean v2, p0, Lcom/txznet/sdk/TXZNavManager;->T2:Z

    iget-boolean v3, p0, Lcom/txznet/sdk/TXZNavManager;->TN:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/txznet/sdk/TXZNavManager;->enableAutoAMapCmd(ZZZZ)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tw:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->enableWakeupNavCmds(Z)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tn:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->enableWakeupExitNav(Z)V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Ty:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Ty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->exitInteractiveWhenBackPoi(Z)V

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->forceRegsiterMapOrder(Z)V

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavCldPackageName(Ljava/lang/String;)V

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->enableSavePlanAfterPlan(Z)V

    .line 84
    :cond_7
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T7:Z

    if-eqz v0, :cond_8

    .line 85
    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T3()V

    .line 88
    :cond_8
    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T2()V

    .line 89
    return-void

    .line 49
    :cond_9
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZNavManager$NavTool;

    if-eqz v0, :cond_a

    .line 50
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavTool;)V

    goto :goto_0

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto/16 :goto_0
.end method

.method public clearCompanyLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 652
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.clearCompanyLocation"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 654
    return-void
.end method

.method public clearHomeLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.clearHomeLocation"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 627
    return-void
.end method

.method public enableAutoAMapCmd(ZZZZ)V
    .locals 6
    .param p1, "enableCmd"    # Z
    .param p2, "enableTraffic"    # Z
    .param p3, "enable3D"    # Z
    .param p4, "enableDirect"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->T:Z

    .line 722
    iput-boolean p1, p0, Lcom/txznet/sdk/TXZNavManager;->Te:Z

    .line 723
    iput-boolean p2, p0, Lcom/txznet/sdk/TXZNavManager;->T3:Z

    .line 724
    iput-boolean p3, p0, Lcom/txznet/sdk/TXZNavManager;->T2:Z

    .line 725
    iput-boolean p4, p0, Lcom/txznet/sdk/TXZNavManager;->TN:Z

    .line 727
    :try_start_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 728
    .local v0, "jb":Lcom/txznet/comm/TN/T;
    const-string v1, "enableCmd"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 729
    const-string v1, "enableTraffic"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 730
    const-string v1, "enable3D"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 731
    const-string v1, "enableDirect"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 732
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.app.enablecmd"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v0    # "jb":Lcom/txznet/comm/TN/T;
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableSavePlanAfterPlan(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 970
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    .line 971
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.savePlan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 972
    return-void
.end method

.method public enableWakeupExitNav(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 945
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tn:Ljava/lang/Boolean;

    .line 946
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.enableWakeupExit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 947
    return-void
.end method

.method public enableWakeupNavCmds(Z)V
    .locals 5
    .param p1, "enableWakeup"    # Z

    .prologue
    .line 744
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tw:Ljava/lang/Boolean;

    .line 745
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.enableWakeupNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 747
    return-void
.end method

.method public enterNav()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 660
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.enterNav"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 662
    return-void
.end method

.method public exitInteractiveWhenBackPoi(Z)V
    .locals 5
    .param p1, "isExit"    # Z

    .prologue
    .line 933
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Ty:Ljava/lang/Boolean;

    .line 934
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.selector.exitBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 935
    return-void
.end method

.method public exitNav()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 668
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.exitNav"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 670
    return-void
.end method

.method public flingPager(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 928
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.selector.selection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 930
    return-void
.end method

.method public forceRegsiterMapOrder(Z)V
    .locals 5
    .param p1, "isForce"    # Z

    .prologue
    .line 956
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    .line 957
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.forceRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 958
    return-void
.end method

.method public getCompanyLocation()Lcom/txznet/sdk/bean/Poi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 633
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "txz.nav.getCompanyLocation"

    invoke-virtual {v2, v3, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 635
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 637
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/txznet/sdk/bean/Poi;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    move-result-object v1

    goto :goto_0
.end method

.method public getHomeLocation()Lcom/txznet/sdk/bean/Poi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 606
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "txz.nav.getHomeLocation"

    invoke-virtual {v2, v3, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 608
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/txznet/sdk/bean/Poi;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    move-result-object v1

    goto :goto_0
.end method

.method public isInNav()Z
    .locals 4

    .prologue
    .line 595
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.nav.isInNav"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 597
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 598
    const/4 v1, 0x0

    .line 599
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public navCompany()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 585
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.navCompany"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 587
    return-void
.end method

.method public navHome()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.navHome"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 579
    return-void
.end method

.method public navToLoc(Lcom/txznet/sdk/bean/Poi;)V
    .locals 6
    .param p1, "point"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 534
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 535
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 536
    const-string v1, "lng"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 537
    const-string v1, "city"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v1, "geo"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.navTo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public navToLocWithHint(Ljava/lang/String;Ljava/lang/String;Lcom/txznet/sdk/bean/Poi;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "tts"    # Ljava/lang/String;
    .param p3, "point"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 558
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 559
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v1, "tts"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v1, "lat"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 562
    const-string v1, "lng"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 563
    const-string v1, "city"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v1, "name"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v1, "geo"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.navToLocWithHint"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCompanyLocation(Lcom/txznet/sdk/bean/Poi;)V
    .locals 5
    .param p1, "poi"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 644
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.setCompanyLocation"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 646
    return-void
.end method

.method public setCustomParamsForTxzNavi(Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V
    .locals 10
    .param p1, "tp"    # Lcom/txznet/sdk/TXZNavManager$TxzNavParam;

    .prologue
    .line 807
    if-nez p1, :cond_0

    .line 859
    :goto_0
    return-void

    .line 812
    :cond_0
    new-instance v5, Lcom/txznet/sdk/TXZNavManager$5;

    invoke-direct {v5, p0}, Lcom/txznet/sdk/TXZNavManager$5;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-virtual {p1, v5}, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->setNaviToolListener(Lcom/txznet/sdk/TXZNavManager$TxzNavParam$TxzNaviTool;)V

    .line 825
    const-string v5, "tool.nav.custom."

    new-instance v6, Lcom/txznet/sdk/TXZNavManager$6;

    invoke-direct {v6, p0, p1}, Lcom/txznet/sdk/TXZNavManager$6;-><init>(Lcom/txznet/sdk/TXZNavManager;Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V

    invoke-static {v5, v6}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 842
    iget-boolean v1, p1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->isNeedNaviInfo:Z

    .line 843
    .local v1, "isNeed":Z
    iget-boolean v0, p1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->mIsSupport3D:Z

    .line 844
    .local v0, "is3D":Z
    const-string v4, "nav"

    .line 845
    .local v4, "type":Ljava/lang/String;
    iget-object v3, p1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->mDisplayType:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    .line 846
    .local v3, "nd":Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;
    sget-object v5, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_HUD:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    if-ne v3, v5, :cond_1

    .line 847
    const-string v4, "hud"

    .line 850
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 852
    .local v2, "jo":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "needNaviInfo"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 853
    const-string v5, "nav_type"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string v5, "is3D"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.nav"

    const-string v7, "txz.nav.initParams"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 855
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setHomeLocation(Lcom/txznet/sdk/bean/Poi;)V
    .locals 5
    .param p1, "poi"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 617
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.setHomeLocation"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 619
    return-void
.end method

.method public setNavCldPackageName(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkn"    # Ljava/lang/String;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    .line 964
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.cldpkn"

    iget-object v3, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 965
    return-void
.end method

.method public setNavStatusListener(Lcom/txznet/sdk/TXZNavManager$NavStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/txznet/sdk/TXZNavManager$NavStatusListener;

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    .line 311
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T7:Z

    .line 312
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T3()V

    goto :goto_0
.end method

.method public setNavTool(Lcom/txznet/sdk/TXZNavManager$NavTool;)V
    .locals 4
    .param p1, "tool"    # Lcom/txznet/sdk/TXZNavManager$NavTool;

    .prologue
    const/4 v0, 0x0

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    .line 218
    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    .line 220
    if-nez p1, :cond_0

    .line 221
    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    .line 295
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Lcom/txznet/sdk/TXZNavManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZNavManager$1;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-interface {p1, v1}, Lcom/txznet/sdk/TXZNavManager$NavTool;->setStatusListener(Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;)V

    .line 248
    const-string v1, "tool.nav."

    new-instance v2, Lcom/txznet/sdk/TXZNavManager$2;

    invoke-direct {v2, p0}, Lcom/txznet/sdk/TXZNavManager$2;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 293
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.settool"

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V
    .locals 5
    .param p1, "type"    # Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .prologue
    const/4 v4, 0x0

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    .line 428
    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    .line 430
    if-nez p1, :cond_0

    .line 431
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.settool"

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.settool"

    invoke-static {p1}, Lcom/txznet/sdk/TXZNavManager;->T(Lcom/txznet/sdk/TXZNavManager$NavToolType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setNavTool(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 491
    if-nez p1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 496
    goto :goto_0

    .line 497
    :cond_2
    const-string v2, "com.baidu.navi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 498
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 499
    goto :goto_0

    .line 500
    :cond_3
    const-string v2, "com.baidu.navi.hd"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 501
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV_HD:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 502
    goto :goto_0

    .line 503
    :cond_4
    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 504
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 505
    goto :goto_0

    .line 506
    :cond_5
    const-string v2, "com.autonavi.amapauto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 507
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP_CAR:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 508
    goto :goto_0

    .line 509
    :cond_6
    const-string v2, "com.autonavi.xmgd.navigator"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 510
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 511
    goto :goto_0

    .line 512
    :cond_7
    const-string v2, "com.txznet.nav"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 513
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_TXZ:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 514
    goto :goto_0

    .line 515
    :cond_8
    const-string v2, "com.mxnavi.mxnavi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 516
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_MX_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 517
    goto :goto_0

    .line 518
    :cond_9
    const-string v2, "^cld\\.navi\\.\\S+\\.mainframe$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_KAILIDE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    .line 520
    goto/16 :goto_0
.end method

.method public setNavVoiceCmdCallback(Lcom/txznet/sdk/TXZNavManager$CallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/txznet/sdk/TXZNavManager$CallBack;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    if-nez v0, :cond_0

    .line 978
    new-instance v0, Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-direct {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    .line 981
    :cond_0
    if-nez p1, :cond_1

    .line 982
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->unRegisterVoiceCmds()V

    .line 988
    :goto_0
    return-void

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/bean/NavVoicePlugin;->setNavVoiceCmdCallback(Lcom/txznet/sdk/TXZNavManager$CallBack;)V

    .line 987
    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T2()V

    goto :goto_0
.end method

.method public setNeedLocalNavNaviInfo(ZLcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;)V
    .locals 5
    .param p1, "isNeed"    # Z
    .param p2, "listener"    # Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 681
    const-string v0, "tool.nav."

    new-instance v1, Lcom/txznet/sdk/TXZNavManager$4;

    invoke-direct {v1, p0, p2}, Lcom/txznet/sdk/TXZNavManager$4;-><init>(Lcom/txznet/sdk/TXZNavManager;Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 695
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.nav"

    const-string v2, "txz.nav.enableNaviInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 697
    return-void
.end method
