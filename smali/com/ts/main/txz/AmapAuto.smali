.class public Lcom/ts/main/txz/AmapAuto;
.super Ljava/lang/Object;
.source "AmapAuto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;
    }
.end annotation


# static fields
.field public static final ARRIVE_STATUS:Ljava/lang/String; = "ARRIVE_STATUS"

.field public static final BRAODCAST_ADAS_STATE:Ljava/lang/String; = "com.adasplus.adas.warning"

.field public static final BRAODCAST_MG_INFO:Ljava/lang/String; = "intent.action.mapgoo.simtool.info.triffic.v2"

.field public static final BRAODCAST_MUSIC_METACHAGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field public static final BROADCAST_AMAP_REV:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_RECV"

.field public static final BROADCAST_AMAP_SEND:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_SEND"

.field public static final BROADCAST_DVR_STATE:Ljava/lang/String; = "check_cardvr.RESP_USB_CAMERA"

.field public static final BROADCAST_LOCAT_UPDATE_COM:Ljava/lang/String; = "SYSTEM_VERSION_UPDATE_COMPLETED"

.field public static final BROADCAST_REQUEST_CAR_INFO:Ljava/lang/String; = "broadcast_request_carinfo"

.field public static final BROADCAST_REQUEST_INFO_STATE:Ljava/lang/String; = "broadcast_local_request_state"

.field public static final BROADCAST_REQUEST_TOP_ACTIVITY:Ljava/lang/String; = "broadcast_request_top_activity"

.field public static final BROADCAST_REQUEST_TPMS_STATE:Ljava/lang/String; = "broadcast_request_tpms_state"

.field public static final BROADCAST_SEND_CAR_INFO:Ljava/lang/String; = "broadcast_send_carinfo"

.field public static final BROADCAST_SEND_INFO_STATE:Ljava/lang/String; = "broadcast_local_send_state"

.field public static final BROADCAST_SEND_TOP_ACTIVITY:Ljava/lang/String; = "broadcast_send_top_activity"

.field public static final BROADCAST_SEND_TPMS_STATE:Ljava/lang/String; = "broadcast_send_tpms_state"

.field public static final BROADCAST_TXZ_WIN_CREATE:Ljava/lang/String; = "com.txznet.txz.record.show"

.field public static final BROADCAST_TXZ_WIN_DISMIS:Ljava/lang/String; = "com.txznet.txz.record.dismiss"

.field public static final CAMERA_DIST:Ljava/lang/String; = "CAMERA_DIST"

.field public static final CAMERA_INDEX:Ljava/lang/String; = "CAMERA_INDEX"

.field public static final CAMERA_SPEED:Ljava/lang/String; = "CAMERA_SPEED"

.field public static final CAMERA_TYPE:Ljava/lang/String; = "CAMERA_TYPE"

.field public static final CAR_DIRECTION:Ljava/lang/String; = "CAR_DIRECTION"

.field public static final CAR_LATITUDE:Ljava/lang/String; = "CAR_LATITUDE"

.field public static final CAR_LONGITUDE:Ljava/lang/String; = "CAR_LONGITUDE"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CUR_POINT_NUM:Ljava/lang/String; = "CUR_POINT_NUM"

.field public static final CUR_ROAD_NAME:Ljava/lang/String; = "CUR_ROAD_NAME"

.field public static final CUR_SEG_NUM:Ljava/lang/String; = "CUR_SEG_NUM"

.field public static final CUR_SPEED:Ljava/lang/String; = "CUR_SPEED"

.field public static final ICON:Ljava/lang/String; = "ICON"

.field public static final LIMITED_SPEED:Ljava/lang/String; = "LIMITED_SPEED"

.field public static final NEXT_ROAD_NAME:Ljava/lang/String; = "NEXT_ROAD_NAME"

.field public static final ROAD_TYPE:Ljava/lang/String; = "ROAD_TYPE"

.field public static final ROUND_ABOUT_NUM:Ljava/lang/String; = "ROUNG_ABOUT_NUM"

.field public static final ROUTE_ALL_DIS:Ljava/lang/String; = "ROUTE_ALL_DIS"

.field public static final ROUTE_ALL_TIME:Ljava/lang/String; = "ROUTE_ALL_TIME"

.field public static final ROUTE_REMAIN_DIS:Ljava/lang/String; = "ROUTE_REMAIN_DIS"

.field public static final ROUTE_REMAIN_TIME:Ljava/lang/String; = "ROUTE_REMAIN_TIME"

.field public static final SAPA_DIST:Ljava/lang/String; = "SAPA_DIST"

.field public static final SAPA_NAME:Ljava/lang/String; = "SAPA_NAME"

.field public static final SAPA_NUM:Ljava/lang/String; = "SAPA_NUM"

.field public static final SAPA_TYPE:Ljava/lang/String; = "SAPA_TYPE"

.field public static final SEG_REMAIN_DIS:Ljava/lang/String; = "SEG_REMAIN_DIS"

.field public static final SEG_REMAIN_TIME:Ljava/lang/String; = "SEG_REMAIN_TIME"

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "AmapAuto"

.field public static final TRAFFIC_LIGHT_NUM:Ljava/lang/String; = "TRAFFIC_LIGHT_NUM"

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field public static bNaviState:Z

.field static m_Amap:Lcom/ts/main/txz/AmapAuto;

.field private static myContext:Landroid/content/Context;


# instance fields
.field MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

.field ableoldString:Ljava/lang/String;

.field mAmapConnectRecevie:Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;

.field mcuVer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    .line 32
    sput-object v0, Lcom/ts/main/txz/AmapAuto;->m_Amap:Lcom/ts/main/txz/AmapAuto;

    .line 196
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/main/txz/AmapAuto;->bNaviState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/ts/can/CanIF$NaviInfo;

    invoke-direct {v0}, Lcom/ts/can/CanIF$NaviInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    .line 209
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ts/main/txz/AmapAuto;->mcuVer:[C

    .line 29
    return-void
.end method

.method public static CheckKFRDvrDevice()V
    .locals 6

    .prologue
    .line 694
    sget-object v3, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "check_cardvr.REQ_USB_CAMERA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.ankai.cs.ICoreService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, "service":Landroid/content/Intent;
    const-string v3, "com.ankai.cardvr"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    sget-object v3, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "intent.mapgoo.service.communicationService"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    sget-object v3, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 705
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.mapgoo.data.sync"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v2, "service1":Landroid/content/Intent;
    const-string v3, "com.mapgoo.diruite"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    sget-object v3, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 709
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/txz/AmapAuto;
    .locals 1

    .prologue
    .line 659
    sget-object v0, Lcom/ts/main/txz/AmapAuto;->m_Amap:Lcom/ts/main/txz/AmapAuto;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Lcom/ts/main/txz/AmapAuto;

    invoke-direct {v0}, Lcom/ts/main/txz/AmapAuto;-><init>()V

    sput-object v0, Lcom/ts/main/txz/AmapAuto;->m_Amap:Lcom/ts/main/txz/AmapAuto;

    .line 662
    :cond_0
    sget-object v0, Lcom/ts/main/txz/AmapAuto;->m_Amap:Lcom/ts/main/txz/AmapAuto;

    return-object v0
.end method

.method public static QuiteNavi()V
    .locals 3

    .prologue
    .line 730
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2725

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 734
    return-void
.end method

.method public static SearchNawAdd()V
    .locals 3

    .prologue
    .line 738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 739
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x272d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 742
    return-void
.end method

.method public static SetACCOFF()V
    .locals 3

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2722

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    return-void
.end method

.method public static SetBackStateToWeNavi(I)V
    .locals 2
    .param p0, "nMode"    # I

    .prologue
    .line 645
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 647
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 648
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operate"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v1, "com.forfan.operator_reversing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static SetDayLightMode(I)V
    .locals 3
    .param p0, "nMode"    # I

    .prologue
    .line 750
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2740

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    const-string v1, "EXTRA_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 755
    return-void
.end method

.method public static SetHeadLight(I)V
    .locals 3
    .param p0, "nState"    # I

    .prologue
    .line 713
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2721

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    const-string v1, "EXTRA_HEADLIGHT_STATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 718
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public GetNaviInfo()V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->Avalid:I

    .line 205
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    sput-object v0, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    .line 207
    sget-object v0, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->Avalid:I

    .line 208
    return-void
.end method

.method public Inint(Landroid/content/Context;)V
    .locals 3
    .param p1, "m_Context"    # Landroid/content/Context;

    .prologue
    .line 668
    sput-object p1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    .line 669
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/txz/AmapAuto;->ableoldString:Ljava/lang/String;

    .line 671
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "check_cardvr.RESP_USB_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v1, "broadcast_request_top_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v1, "broadcast_request_tpms_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v1, "broadcast_request_carinfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "broadcast_local_request_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v1, "SYSTEM_VERSION_UPDATE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v1, "com.txznet.txz.record.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v1, "com.txznet.txz.record.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v1, "com.adasplus.adas.warning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v1, "intent.action.mapgoo.simtool.info.triffic.v2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 687
    new-instance v1, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;-><init>(Lcom/ts/main/txz/AmapAuto;)V

    iput-object v1, p0, Lcom/ts/main/txz/AmapAuto;->mAmapConnectRecevie:Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;

    .line 688
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ts/main/txz/AmapAuto;->mAmapConnectRecevie:Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    return-void
.end method

.method public SendCarInfordata()V
    .locals 3

    .prologue
    .line 531
    invoke-static {}, Lcom/ts/can/CanIF;->UpdateDoorUI()V

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "broadcast_send_carinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v1, "LF_LIGHT"

    sget-object v2, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v1, "RF_LIGHT"

    sget-object v2, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string v1, "LR_LIGHT"

    sget-object v2, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    const-string v1, "RR_LIGHT"

    sget-object v2, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    const-string v1, "REAR_DOOR"

    sget-object v2, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const-string v1, "FRONT_DOOR"

    sget-object v2, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v1, "ILL_LIGHT"

    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetIll()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    sget-object v1, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 543
    return-void
.end method

.method public SetGpsAngle(I)V
    .locals 2
    .param p1, "nAngle"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    sget-boolean v0, Lcom/ts/main/txz/AmapAuto;->bNaviState:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->Avalid:I

    .line 216
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->Sta:I

    .line 217
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput p1, v0, Lcom/ts/can/CanIF$NaviInfo;->GpsAngle:I

    .line 218
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgC:I

    .line 219
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->DestDisDw:I

    .line 220
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    .line 221
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    .line 222
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput v1, v0, Lcom/ts/can/CanIF$NaviInfo;->RoadDirInfo:I

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iput p1, v0, Lcom/ts/can/CanIF$NaviInfo;->GpsAngle:I

    goto :goto_0
.end method

.method UpdateTpmsInfo()V
    .locals 19

    .prologue
    .line 548
    invoke-static {}, Lcom/ts/MainUI/StTpms;->GetInstance()Lcom/ts/MainUI/StTpms;

    move-result-object v5

    .line 549
    .local v5, "mStTpms":Lcom/ts/MainUI/StTpms;
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "LF_ERR"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "RF_ERR"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "LR_ERR"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "RR_ERR"

    aput-object v10, v0, v9

    .line 550
    .local v0, "StrErr":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "LF_TEP"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "RF_TEP"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "LR_TEP"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "RR_TEP"

    aput-object v10, v1, v9

    .line 551
    .local v1, "StrTemp":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "LF_TPMS"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "RF_TPMS"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "LR_TPMS"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string v10, "RR_TPMS"

    aput-object v10, v2, v9

    .line 552
    .local v2, "StrTpms":[Ljava/lang/String;
    sget-object v9, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/ts/MainUI/R$array;->tpms_general_error:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "TpmsOptions":[Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "broadcast_send_tpms_state"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const/4 v7, 0x0

    .local v7, "nNum":I
    :goto_0
    const/4 v9, 0x4

    if-lt v7, v9, :cond_0

    .line 625
    sget-object v9, Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    return-void

    .line 561
    :cond_0
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget-wide v9, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    double-to-int v8, v9

    .line 562
    .local v8, "nnMytemp":I
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 564
    aget-object v9, v0, v7

    const/4 v10, 0x5

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :goto_1
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    if-nez v9, :cond_8

    .line 602
    aget-object v9, v2, v7

    const-string v10, "%.1f Bar"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v13, v13, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v13, v13, v7

    iget-wide v13, v13, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    :goto_2
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget v6, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->nTemp:I

    .line 610
    .local v6, "nMytemp":I
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempDW:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 612
    aget-object v9, v1, v7

    const-string v10, "%d\u2109"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/high16 v13, 0x4040000000000000L    # 32.0

    iget-object v15, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v15, v15, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v15, v15, v7

    iget v15, v15, Lcom/ts/MainUI/StTpms$TPMSInfo;->nTemp:I

    int-to-double v15, v15

    const-wide v17, 0x3ffccccccccccccdL    # 1.8

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    double-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 566
    .end local v6    # "nMytemp":I
    :cond_1
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 568
    aget-object v9, v0, v7

    const/4 v10, 0x6

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 570
    :cond_2
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    if-lez v9, :cond_3

    .line 572
    aget-object v9, v0, v7

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 575
    :cond_3
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    if-lez v9, :cond_4

    .line 577
    aget-object v9, v0, v7

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 580
    :cond_4
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v9, v9, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v9, v9, v7

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    if-lez v9, :cond_5

    .line 582
    aget-object v9, v0, v7

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 586
    :cond_5
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    if-ge v8, v9, :cond_6

    .line 588
    aget-object v9, v0, v7

    const/4 v10, 0x3

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 590
    :cond_6
    iget-object v9, v5, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v9, v9, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    if-le v8, v9, :cond_7

    .line 592
    aget-object v9, v0, v7

    const/4 v10, 0x4

    aget-object v10, v3, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 596
    :cond_7
    aget-object v9, v0, v7

    const-string v10, "ERR_NONE"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 606
    :cond_8
    aget-object v9, v2, v7

    const-string v10, "%.1f Psi"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v13, v13, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v13, v13, v7

    iget-wide v13, v13, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    const-wide v15, 0x3fc290abb44e50c6L    # 0.14504

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 616
    .restart local v6    # "nMytemp":I
    :cond_9
    aget-object v9, v1, v7

    const-string v10, "%d\u2103"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v13, v13, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v13, v13, v7

    iget v13, v13, Lcom/ts/MainUI/StTpms$TPMSInfo;->nTemp:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3
.end method
