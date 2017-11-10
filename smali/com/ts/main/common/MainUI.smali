.class public Lcom/ts/main/common/MainUI;
.super Landroid/app/Service;
.source "MainUI.java"

# interfaces
.implements Lcom/ts/MainUI/TaskCallBack;
.implements Lcom/ts/MainUI/EvcCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/common/MainUI$AdasServiceConnection;,
        Lcom/ts/main/common/MainUI$DvpServiceConnection;,
        Lcom/ts/main/common/MainUI$ITsCom;,
        Lcom/ts/main/common/MainUI$easyConnectRecevie;
    }
.end annotation


# static fields
.field public static final ACTION_MAINUI_ACCOFF:Ljava/lang/String; = "com.ts.main.uiaccoff"

.field public static final ACTION_RECOGNIZE_CMD:Ljava/lang/String; = "com.globalconstant.BROADCAST_SEND_CMD"

.field public static final ACTION_RECOGNIZE_CMD_B:Ljava/lang/String; = "com.globalconstant.BROADCAST_CAR_SEND_CMD"

.field public static final ACTION_RECOGNIZE_CMD_MIC_CLICK:Ljava/lang/String; = "com.globalconstant.BROADCAST_MIC_CLICK"

.field public static final ACTION_RECOGNIZE_CMD_REGISTER_S:Ljava/lang/String; = "com.globalconstant.BROADCAST_register_status"

.field public static final ACTION_RECOGNIZE_CMD_VOLUME:Ljava/lang/String; = "com.globalconstant.BROADCAST_SEND_VOLUME"

.field public static final ACTION_RECOGNIZE_TTSINFO_CMD:Ljava/lang/String; = "com.globalconstant.BROADCAST_TTS_INFO"

.field static final ADASLICENSE_FILE:Ljava/lang/String; = "/mnt/sdcard/EasyConnected/adas.bmp"

.field public static final BASIC_TIME_STRING:Ljava/lang/String; = "2016-10-01 00:00:00"

.field public static final BROADCAST_ADAS_LIGHT_STATE:Ljava/lang/String; = "forfan.adas.light_state"

.field public static final BROADCAST_ADAS_TURNLIGHT_STATE:Ljava/lang/String; = "forfan.adas.turnlight_state"

.field public static final BROADCAST_APP_QUIT:Ljava/lang/String; = "net.easyconn.app.quit"

.field public static final BROADCAST_BT_A2DP_ACQUIRE:Ljava/lang/String; = "net.easyconn.a2dp.acquire"

.field public static final BROADCAST_BT_A2DP_RELEASE:Ljava/lang/String; = "net.easyconn.a2dp.release"

.field public static final BROADCAST_BT_CHECKSTATUS:Ljava/lang/String; = "net.easyconn.bt.checkstatus"

.field public static final BROADCAST_BT_CONNECT:Ljava/lang/String; = "net.easyconn.bt.connect"

.field public static final BROADCAST_BT_CONNECTED:Ljava/lang/String; = "net.easyconn.bt.connected"

.field public static final BROADCAST_BT_NOT_CONNECTED:Ljava/lang/String; = "net.easyconn.bt.notconnected"

.field public static final BROADCAST_BT_OPENED:Ljava/lang/String; = "net.easyconn.bt.opened"

.field public static final BROADCAST_CAMERA_SWITCH_STRING:Ljava/lang/String; = "forfan.camera.switch"

.field public static final BROADCAST_CONNECTION_BREAK:Ljava/lang/String; = "net.easyconn.connection.break"

.field public static final BROADCAST_GLSX_VOICE:Ljava/lang/String; = "com.glsx.ddbox.action.VOICE"

.field public static final BROADCAST_LANCHER_FUNC_ACCELERATION:Ljava/lang/String; = "forfan.intent.action.ACCELERATION"

.field public static final BROADCAST_LANCHER_FUNC_BRIGHT_LEVEL_DAY:Ljava/lang/String; = "forfan.intent.action.BRIGHT_LEVEL_DAY"

.field public static final BROADCAST_LANCHER_FUNC_BRIGHT_LEVEL_NIGHT:Ljava/lang/String; = "forfan.intent.action.BRIGHT_LEVEL_NIGHT"

.field public static final BROADCAST_LANCHER_FUNC_BLUETOOTH:Ljava/lang/String; = "forfan.intent.action.BLUETOOTH"

.field public static final BROADCAST_LANCHER_FUNC_BRIGHTNESS:Ljava/lang/String; = "forfan.intent.action.BRIGHTNESS"

.field public static final BROADCAST_LANCHER_FUNC_MUTE:Ljava/lang/String; = "forfan.intent.action.MUTE"

.field public static final BROADCAST_LANCHER_FUNC_NOWMODE:Ljava/lang/String; = "forfan.intent.action.MODE"

.field public static final BROADCAST_LANCHER_FUNC_SCREENOFF:Ljava/lang/String; = "forfan.intent.action.SCREENOFF"

.field public static final BROADCAST_LANCHER_FUNC_VOLUME:Ljava/lang/String; = "forfan.intent.action.VOLUME"

.field public static final BROADCAST_LANCHER_FUNC_VOLUMEADD:Ljava/lang/String; = "forfan.intent.action.VOLUMEUP"

.field public static final BROADCAST_LANCHER_FUNC_VOLUMEDEC:Ljava/lang/String; = "forfan.intent.action.VOLUMEDN"

.field public static final BROADCAST_MEDIA_LISTUPDATE:Ljava/lang/String; = "com.ts.media.listupdate"

.field public static final BROADCAST_NET_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final BROADCAST_RIGHT_CAMERA_SWITCH_STRING:Ljava/lang/String; = "forfan.right.camera.switch"

.field private static final CTOUCH_CELE:Ljava/lang/String; = "3561\u4e07\u80fd\u89e6\u6478\u77eb\u6b63.cfg"

.field static final EASYLICENSE_FILE:Ljava/lang/String; = "/mnt/sdcard/EasyConnected/License.ini"

.field static final EASYLICENSE_PATH:Ljava/lang/String; = "/mnt/sdcard/EasyConnected"

.field public static final KAIYI_PNAME:Ljava/lang/String; = "com.adasplus.ts"

.field public static final RUN_ACCOFF:I = 0x2

.field public static final RUN_BATOFF:I = 0x4

.field public static final RUN_COMMON:I = 0x0

.field public static final RUN_POWEROFF:I = 0x3

.field private static final SYNC_ERROR:I = 0x0

.field private static final SYNC_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MainUI"

.field public static final TXZ_GET_WWATHER_DATA:Ljava/lang/String; = "txz_get_weather_data"

.field static bBtConnect:Z

.field static bHaveCall:Z

.field static bIsInCamera:Z

.field static bIsInRight:Z

.field public static bIsScreenMode:Z

.field static bSimConnect:Z

.field static bmusicactive:Z

.field public static mCanInterface:Lcom/ts/main/common/CanInterface;

.field private static mMainUI:Lcom/ts/main/common/MainUI;

.field static nCamVport:I

.field public static nDelayToCamera:I

.field static nTickNum:I

.field static nnUM:I

.field static noldAUXHolde:I


# instance fields
.field private GpsCog:F

.field private GpsSpeed:F

.field MyoldState:Ljava/lang/String;

.field TimeTicket:J

.field audioManager:Landroid/media/AudioManager;

.field private bCaninit:Z

.field bHaveDvd:Z

.field bShutDown:Z

.field private final locationListener:Landroid/location/LocationListener;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdasServiceConnection:Lcom/ts/main/common/MainUI$AdasServiceConnection;

.field private mDisplay:Lcom/ts/MainUI/TsDisplay;

.field private mDvr:Lcom/ts/MainUI/Dvr;

.field mEasyConnextReceiver:Lcom/ts/main/common/MainUI$easyConnectRecevie;

.field private mEvc:Lcom/ts/MainUI/Evc;

.field public mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

.field private mKeyTouch:Lcom/ts/main/common/KeyTouch;

.field private mMainCScreen:Lcom/ts/main/common/MainCScreen;

.field mMainSet:Lcom/ts/main/common/MainSet;

.field private mMainVolume:Lcom/ts/main/common/MainVolume;

.field private mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

.field private mServiceConnection:Lcom/ts/main/common/MainUI$DvpServiceConnection;

.field private mSpeed:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

.field mStTpms:Lcom/ts/MainUI/StTpms;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mTsCom:Lcom/ts/main/common/MainUI$ITsCom;

.field public mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

.field nAccOffEnable:I

.field public nAutoToNavi:I

.field nBatFirst:I

.field nBklCanOn:I

.field nCameraForbiden:I

.field private nCount:I

.field nDelayToGetVerSion:I

.field public nDelayToVoice:I

.field nDelayWakeUp:I

.field private nDvdDelay:I

.field nDvdMode:I

.field public nDvrDelayTime:I

.field nErrorNum:I

.field private nFsok:I

.field nHomeKey_enable:I

.field private nILL:I

.field nLastflag:I

.field nMcuRet:I

.field nMode:I

.field nMute:I

.field public nNawKey:I

.field public nNetIsConnect:I

.field public nOldConnect:I

.field nOldMode:I

.field private nOldPowerMode:I

.field nOldWorkMode:I

.field nPaunseFlag:I

.field private nPowerMode:I

.field nPowerOldWorkMode:I

.field private nPowerState:I

.field public nTpmsOnce:I

.field nUpdateTime:I

.field naviPacketName:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    sput-object v0, Lcom/ts/main/common/MainUI;->mMainUI:Lcom/ts/main/common/MainUI;

    .line 178
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bIsScreenMode:Z

    .line 205
    sput v1, Lcom/ts/main/common/MainUI;->nTickNum:I

    .line 226
    sput-object v0, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    .line 267
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bIsInCamera:Z

    .line 268
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    .line 269
    sput v1, Lcom/ts/main/common/MainUI;->nCamVport:I

    .line 271
    const/16 v0, 0x10

    sput v0, Lcom/ts/main/common/MainUI;->nDelayToCamera:I

    .line 644
    sput v1, Lcom/ts/main/common/MainUI;->nnUM:I

    .line 1144
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bmusicactive:Z

    .line 1145
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bBtConnect:Z

    .line 1146
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bHaveCall:Z

    .line 1147
    sput v1, Lcom/ts/main/common/MainUI;->noldAUXHolde:I

    .line 3957
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 158
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;-><init>()V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mSpeed:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    .line 159
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;-><init>()V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    .line 161
    iput-object v3, p0, Lcom/ts/main/common/MainUI;->mActivityManager:Landroid/app/ActivityManager;

    .line 165
    iput v2, p0, Lcom/ts/main/common/MainUI;->nLastflag:I

    .line 166
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    .line 167
    invoke-static {}, Lcom/ts/MainUI/Dvr;->GetInstance()Lcom/ts/MainUI/Dvr;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mDvr:Lcom/ts/MainUI/Dvr;

    .line 169
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    .line 170
    iput v2, p0, Lcom/ts/main/common/MainUI;->nCount:I

    .line 171
    iput v2, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    .line 172
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mMainVolume:Lcom/ts/main/common/MainVolume;

    .line 173
    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mMainCScreen:Lcom/ts/main/common/MainCScreen;

    .line 174
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    .line 175
    invoke-static {}, Lcom/ts/MainUI/StTpms;->GetInstance()Lcom/ts/MainUI/StTpms;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mStTpms:Lcom/ts/MainUI/StTpms;

    .line 176
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mMainSet:Lcom/ts/main/common/MainSet;

    .line 179
    iput v1, p0, Lcom/ts/main/common/MainUI;->nOldWorkMode:I

    .line 180
    iput v2, p0, Lcom/ts/main/common/MainUI;->nDvdMode:I

    .line 181
    const/16 v0, 0x32

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    .line 183
    iput v2, p0, Lcom/ts/main/common/MainUI;->nNetIsConnect:I

    .line 184
    iput v2, p0, Lcom/ts/main/common/MainUI;->nUpdateTime:I

    .line 185
    iput v4, p0, Lcom/ts/main/common/MainUI;->GpsSpeed:F

    .line 186
    iput v4, p0, Lcom/ts/main/common/MainUI;->GpsCog:F

    .line 187
    iput v2, p0, Lcom/ts/main/common/MainUI;->nOldConnect:I

    .line 188
    iput v2, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    .line 189
    iput v2, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    .line 190
    const/16 v0, 0x12c

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    .line 191
    iput v2, p0, Lcom/ts/main/common/MainUI;->nNawKey:I

    .line 192
    iput v2, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    .line 263
    iput v2, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 264
    iput v2, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    .line 265
    iput v2, p0, Lcom/ts/main/common/MainUI;->nOldPowerMode:I

    .line 266
    iput v2, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    .line 270
    iput v1, p0, Lcom/ts/main/common/MainUI;->nILL:I

    .line 272
    iput v2, p0, Lcom/ts/main/common/MainUI;->nBklCanOn:I

    .line 273
    iput v1, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    .line 274
    iput v1, p0, Lcom/ts/main/common/MainUI;->nOldMode:I

    .line 275
    iput v2, p0, Lcom/ts/main/common/MainUI;->nCameraForbiden:I

    .line 276
    iput v2, p0, Lcom/ts/main/common/MainUI;->nPaunseFlag:I

    .line 645
    iput v2, p0, Lcom/ts/main/common/MainUI;->nDelayWakeUp:I

    .line 646
    iput-boolean v2, p0, Lcom/ts/main/common/MainUI;->bShutDown:Z

    .line 648
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/main/common/MainUI;->TimeTicket:J

    .line 1210
    iput v2, p0, Lcom/ts/main/common/MainUI;->nMode:I

    .line 1211
    iput v2, p0, Lcom/ts/main/common/MainUI;->nDvdDelay:I

    .line 1212
    iput v5, p0, Lcom/ts/main/common/MainUI;->nMute:I

    .line 2675
    new-instance v0, Lcom/ts/main/common/MainUI$1;

    invoke-direct {v0, p0}, Lcom/ts/main/common/MainUI$1;-><init>(Lcom/ts/main/common/MainUI;)V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->locationListener:Landroid/location/LocationListener;

    .line 3303
    new-instance v0, Lcom/ts/main/common/MainUI$ITsCom;

    invoke-direct {v0, p0}, Lcom/ts/main/common/MainUI$ITsCom;-><init>(Lcom/ts/main/common/MainUI;)V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mTsCom:Lcom/ts/main/common/MainUI$ITsCom;

    .line 3311
    iput-object v3, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    .line 3313
    new-instance v0, Lcom/ts/main/common/MainUI$AdasServiceConnection;

    invoke-direct {v0, p0}, Lcom/ts/main/common/MainUI$AdasServiceConnection;-><init>(Lcom/ts/main/common/MainUI;)V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mAdasServiceConnection:Lcom/ts/main/common/MainUI$AdasServiceConnection;

    .line 3352
    iput-object v3, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 3353
    new-instance v0, Lcom/ts/main/common/MainUI$DvpServiceConnection;

    invoke-direct {v0, p0}, Lcom/ts/main/common/MainUI$DvpServiceConnection;-><init>(Lcom/ts/main/common/MainUI;)V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mServiceConnection:Lcom/ts/main/common/MainUI$DvpServiceConnection;

    .line 3512
    iput v2, p0, Lcom/ts/main/common/MainUI;->nBatFirst:I

    .line 3514
    iput-boolean v2, p0, Lcom/ts/main/common/MainUI;->bCaninit:Z

    .line 3515
    iput v2, p0, Lcom/ts/main/common/MainUI;->nErrorNum:I

    .line 3516
    iput v5, p0, Lcom/ts/main/common/MainUI;->nHomeKey_enable:I

    .line 3517
    iput v2, p0, Lcom/ts/main/common/MainUI;->nAccOffEnable:I

    .line 3712
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->naviPacketName:[B

    .line 3956
    const-string v0, "00"

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->MyoldState:Ljava/lang/String;

    .line 3958
    new-instance v0, Lcom/ts/main/common/MainUI$2;

    invoke-direct {v0, p0}, Lcom/ts/main/common/MainUI$2;-><init>(Lcom/ts/main/common/MainUI;)V

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 87
    return-void
.end method

.method private CheckMediaDevice()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1151
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v0, :cond_0

    .line 1152
    iget v0, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    if-lez v0, :cond_0

    .line 1153
    iget v0, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    .line 1154
    iget v0, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v0}, Lcom/ts/dvdplayer/ITsPlayerService;->getDvdVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/main/common/MainVerSion;->ROM_VERSION:Ljava/lang/String;

    .line 1156
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 1157
    invoke-interface {v0}, Lcom/ts/dvdplayer/ITsPlayerService;->getMediaVersion()Ljava/lang/String;

    move-result-object v0

    .line 1156
    sput-object v0, Lcom/ts/main/common/MainVerSion;->MMP_VERSION:Ljava/lang/String;

    .line 1158
    sget-object v0, Lcom/ts/main/common/MainVerSion;->ROM_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1159
    sget-object v0, Lcom/ts/main/common/MainVerSion;->MMP_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1160
    iput v2, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    .line 1165
    :cond_0
    sget-boolean v0, Lcom/ts/main/common/MainUI;->bBtConnect:Z

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1166
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    sput-boolean v0, Lcom/ts/main/common/MainUI;->bBtConnect:Z

    .line 1167
    sget-boolean v0, Lcom/ts/main/common/MainUI;->bBtConnect:Z

    if-eqz v0, :cond_1

    .line 1168
    const-string v0, "net.easyconn.bt.connected"

    invoke-static {v0}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 1172
    :cond_1
    sget-boolean v0, Lcom/ts/main/common/MainUI;->bHaveCall:Z

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1174
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v0

    sput-boolean v0, Lcom/ts/main/common/MainUI;->bHaveCall:Z

    .line 1175
    sget-boolean v0, Lcom/ts/main/common/MainUI;->bHaveCall:Z

    if-eqz v0, :cond_5

    .line 1177
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v0, :cond_2

    .line 1178
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ts/dvdplayer/ITsPlayerService;->dealBTCall(I)V

    .line 1180
    :cond_2
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v0

    if-nez v0, :cond_3

    .line 1181
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    .line 1183
    :cond_3
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPowState()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    .line 1185
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    .line 1202
    :cond_4
    :goto_0
    return-void

    .line 1191
    :cond_5
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v0, v2}, Lcom/ts/dvdplayer/ITsPlayerService;->dealBTCall(I)V

    goto :goto_0
.end method

.method public static GetInstance()Lcom/ts/main/common/MainUI;
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lcom/ts/main/common/MainUI;->mMainUI:Lcom/ts/main/common/MainUI;

    return-object v0
.end method

.method private GetMemory()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 212
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/ts/main/common/MainUI;->mActivityManager:Landroid/app/ActivityManager;

    .line 215
    :cond_0
    sget v0, Lcom/ts/main/common/MainUI;->nTickNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/main/common/MainUI;->nTickNum:I

    .line 216
    sget v0, Lcom/ts/main/common/MainUI;->nTickNum:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    .line 217
    const-string v0, "MainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*******Main task is run "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->getSystemAvaialbeMemorySize()J

    move-result-wide v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    sput v0, Lcom/ts/main/common/MainUI;->nTickNum:I

    .line 224
    :cond_1
    return-void
.end method

.method private IsAvinMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1119
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1120
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 1121
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1122
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 1123
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 1124
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 1125
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    .line 1126
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsAvinTopWin()I
    .locals 2

    .prologue
    .line 1107
    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "TopActivit":Ljava/lang/String;
    const-string v1, "com.ts.main.radio.RadioMainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    const-string v1, "com.ts.main.avin.AvinMainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    const-string v1, "com.ts.main.avin2.AuxMainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    const-string v1, "com.ts.main.cmmb.CmmbMainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1112
    :cond_0
    const/4 v1, 0x1

    .line 1114
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private IsBatOff()Z
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPowState()I

    move-result v0

    .line 244
    .local v0, "nState":I
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static IsCamVPort()I
    .locals 1

    .prologue
    .line 455
    sget v0, Lcom/ts/main/common/MainUI;->nCamVport:I

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsCameraMode()I
    .locals 1

    .prologue
    .line 2767
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamFix()I

    move-result v0

    if-nez v0, :cond_0

    .line 2768
    const/4 v0, 0x0

    .line 2770
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetReverse()I

    move-result v0

    goto :goto_0
.end method

.method private IsMediaMode()I
    .locals 2

    .prologue
    .line 1133
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1134
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1135
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1136
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 1139
    :cond_0
    const/4 v0, 0x1

    .line 1141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsRightCamMode()I
    .locals 1

    .prologue
    .line 2774
    invoke-static {}, Lcom/ts/can/CanIF;->GetOtherCamMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    const/4 v0, 0x0

    .line 2777
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private KeyBeep()V
    .locals 1

    .prologue
    .line 2762
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendBeep(I)I

    .line 2763
    return-void
.end method

.method private SetCameraVPort(I)V
    .locals 3
    .param p1, "nPort"    # I

    .prologue
    .line 2782
    const-string v0, "MainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetCameraVPort = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    sput p1, Lcom/ts/main/common/MainUI;->nCamVport:I

    .line 2784
    if-nez p1, :cond_0

    .line 2785
    const-string v0, "forfan.backcar.port"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    :goto_0
    return-void

    .line 2787
    :cond_0
    const-string v0, "forfan.backcar.port"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetCanCallBack(Lcom/ts/main/common/CanInterface;)V
    .locals 0
    .param p0, "cb"    # Lcom/ts/main/common/CanInterface;

    .prologue
    .line 229
    sput-object p0, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    .line 230
    return-void
.end method

.method public static SetGpsMode(I)I
    .locals 4
    .param p0, "nMode"    # I

    .prologue
    .line 419
    const-string v1, "persist.radio.gnssopmode.prop"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "GetVal":Ljava/lang/String;
    const-string v1, "MainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "persist.radio.gnssopmode.prop = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v1, "MainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetGpsMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    packed-switch p0, :pswitch_data_0

    .line 445
    const-string v1, "persist.radio.gnssopmode.prop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    const-string v1, "MainUI"

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "persist.radio.gnssopmode.prop 22 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    const-string v3, "persist.radio.gnssopmode.prop"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v1, 0x1

    return v1

    .line 425
    :pswitch_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    const-string v1, "persist.radio.gnssopmode.prop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :pswitch_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const-string v1, "persist.radio.gnssopmode.prop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const-string v1, "persist.radio.gnssopmode.prop"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :pswitch_3
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    const-string v1, "persist.radio.gnssopmode.prop"

    const-string v2, "3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private UpLoadTheLocation()V
    .locals 8

    .prologue
    .line 2712
    const-string v6, "location"

    .line 2714
    .local v6, "contextService":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2715
    .local v0, "loctionManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    .line 2716
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 2717
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_0

    .line 2718
    const-string v2, "MainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location.getLatitude()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    const-string v2, "MainUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location.getAltitude()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :cond_0
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 2734
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->locationListener:Landroid/location/LocationListener;

    .line 2733
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2736
    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/common/MainUI;F)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/ts/main/common/MainUI;->GpsSpeed:F

    return-void
.end method

.method static synthetic access$1(Lcom/ts/main/common/MainUI;F)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/ts/main/common/MainUI;->GpsCog:F

    return-void
.end method

.method static synthetic access$10(Lcom/ts/main/common/MainUI;)Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ts/main/common/MainUI;)I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    return v0
.end method

.method static synthetic access$2(Lcom/ts/main/common/MainUI;)F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/ts/main/common/MainUI;->GpsCog:F

    return v0
.end method

.method static synthetic access$3(Lcom/ts/main/common/MainUI;)Lcom/ts/main/common/KeyTouch;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ts/main/common/MainUI;)Lcom/ts/main/common/MainVolume;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mMainVolume:Lcom/ts/main/common/MainVolume;

    return-object v0
.end method

.method static synthetic access$6()Lcom/ts/main/common/MainUI;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/ts/main/common/MainUI;->mMainUI:Lcom/ts/main/common/MainUI;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 2761
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->KeyBeep()V

    return-void
.end method

.method static synthetic access$8(Lcom/ts/main/common/MainUI;)F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/ts/main/common/MainUI;->GpsSpeed:F

    return v0
.end method

.method static synthetic access$9(Lcom/ts/main/common/MainUI;Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ts/main/common/MainUI;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    return-void
.end method

.method private getSystemAvaialbeMemorySize()J
    .locals 4

    .prologue
    .line 234
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 236
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/ts/main/common/MainUI;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 237
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 239
    .local v0, "memSize":J
    return-wide v0
.end method

.method private getTopPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1205
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1206
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1207
    .local v1, "baseActivity":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method AdjustArmLocalTime()V
    .locals 12

    .prologue
    .line 3570
    const/16 v6, 0x20

    new-array v5, v6, [C

    .line 3571
    .local v5, "mcuVer":[C
    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->GetMcuVer([C)I

    move-result v6

    int-to-long v0, v6

    .line 3572
    .local v0, "Time":J
    const-string v6, "MainUI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AdjustArmLocalTime Time = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const-wide/16 v6, 0x5a0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 3576
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3577
    .local v3, "df":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .line 3579
    .local v2, "d1":Ljava/util/Date;
    :try_start_0
    const-string v6, "2016-10-01 00:00:00"

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 3580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 3592
    .end local v2    # "d1":Ljava/util/Date;
    .end local v3    # "df":Ljava/text/DateFormat;
    :cond_0
    :goto_0
    return-void

    .line 3585
    .restart local v2    # "d1":Ljava/util/Date;
    .restart local v3    # "df":Ljava/text/DateFormat;
    :catch_0
    move-exception v4

    .line 3587
    .local v4, "e1":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 3589
    .end local v4    # "e1":Ljava/text/ParseException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto :goto_0
.end method

.method AdjustMcuTime()V
    .locals 9

    .prologue
    .line 3552
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3553
    .local v1, "df":Ljava/text/DateFormat;
    const/4 v0, 0x0

    .line 3555
    .local v0, "d1":Ljava/util/Date;
    :try_start_0
    const-string v5, "2016-10-01 00:00:00"

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3560
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 3561
    .local v2, "diff":J
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AdjustMcuTime diff = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 3563
    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 3567
    :cond_0
    return-void

    .line 3556
    .end local v2    # "diff":J
    :catch_0
    move-exception v4

    .line 3558
    .local v4, "e1":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method BackToLauncher()V
    .locals 2

    .prologue
    .line 636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->startActivity(Landroid/content/Intent;)V

    .line 640
    return-void
.end method

.method CheckSIMState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3680
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3681
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3683
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_0

    .line 3711
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3686
    :pswitch_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/ts/main/common/MainUI;->bSimConnect:Z

    goto :goto_0

    .line 3699
    :pswitch_2
    sget-boolean v2, Lcom/ts/main/common/MainUI;->bSimConnect:Z

    if-nez v2, :cond_0

    .line 3701
    sput-boolean v3, Lcom/ts/main/common/MainUI;->bSimConnect:Z

    .line 3702
    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainUI;->SetNetConState(Z)V

    .line 3703
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/main/common/MainSet;->CheckSimOwner()V

    goto :goto_0

    .line 3683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public DealKey()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1217
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPkey()I

    move-result v4

    .line 1218
    .local v4, "nKeyCode":I
    if-nez v4, :cond_0

    .line 1219
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetEkey()I

    move-result v4

    .line 1220
    if-nez v4, :cond_0

    .line 1221
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetRkey()I

    move-result v4

    .line 1222
    if-nez v4, :cond_0

    .line 1223
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetSkey()I

    move-result v4

    .line 1227
    :cond_0
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 1228
    const/16 v5, 0x51

    if-eq v4, v5, :cond_2

    .line 1229
    const/16 v5, 0x14c

    if-eq v4, v5, :cond_2

    .line 1230
    const/16 v5, 0x301

    if-eq v4, v5, :cond_2

    .line 1231
    const/16 v5, 0x46

    if-eq v4, v5, :cond_2

    .line 1232
    const/16 v5, 0x13a

    if-eq v4, v5, :cond_2

    if-eqz v4, :cond_2

    .line 1233
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Now is Power off so don\'t deal the key  = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1233
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    const/16 v5, 0x5c

    if-eq v4, v5, :cond_3

    .line 1240
    const/16 v5, 0x61

    if-ne v4, v5, :cond_4

    .line 1243
    :cond_3
    invoke-static {v4}, Lcom/ts/can/CanIF;->DealCam360Key(I)V

    .line 1244
    const/4 v4, 0x0

    .line 1246
    :cond_4
    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x18

    if-ne v4, v5, :cond_6

    .line 1253
    :cond_5
    invoke-static {}, Lcom/ts/can/CanIF;->Deal360CameraKey()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1255
    const/4 v4, 0x0

    .line 1260
    :cond_6
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v5

    if-eq v5, v9, :cond_7

    sget v5, Lcom/ts/MainUI/Evc;->mSystemState:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_7

    .line 1261
    sget v5, Lcom/ts/MainUI/Evc;->mSystemState:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_8

    .line 1263
    :cond_7
    const/4 v4, 0x0

    .line 1264
    goto :goto_0

    .line 1266
    :cond_8
    if-lez v4, :cond_9

    .line 1267
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "nDealPkey = = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    sparse-switch v4, :sswitch_data_0

    .line 1715
    :cond_9
    :goto_1
    if-lez v4, :cond_1

    .line 1716
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mEvc.Evol.workmode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1815
    :cond_a
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1270
    :sswitch_0
    iget v5, p0, Lcom/ts/main/common/MainUI;->nNawKey:I

    if-lez v5, :cond_b

    .line 1272
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Last key is not deal = = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/ts/main/common/MainUI;->nNawKey:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_b
    iput v4, p0, Lcom/ts/main/common/MainUI;->nNawKey:I

    .line 1275
    const/4 v4, 0x0

    .line 1276
    goto :goto_1

    .line 1278
    :sswitch_1
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsBMWVer()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1280
    :cond_c
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1281
    const/4 v4, 0x0

    .line 1284
    goto :goto_1

    .line 1286
    :sswitch_2
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsBMWVer()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1288
    :cond_d
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1289
    const/4 v4, 0x0

    .line 1291
    goto :goto_1

    .line 1293
    :sswitch_3
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsBMWVer()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1295
    :cond_e
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1296
    const/4 v4, 0x0

    .line 1298
    goto/16 :goto_1

    .line 1300
    :sswitch_4
    const/16 v5, 0xa

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1301
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->KeyBeep()V

    .line 1302
    const/4 v4, 0x0

    .line 1303
    goto/16 :goto_1

    .line 1305
    :sswitch_5
    const/16 v5, 0xa

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1306
    const/4 v4, 0x0

    .line 1307
    goto/16 :goto_1

    .line 1309
    :sswitch_6
    const/16 v5, 0x17

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1310
    const/4 v4, 0x0

    .line 1311
    goto/16 :goto_1

    .line 1313
    :sswitch_7
    const/16 v5, 0x8

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1314
    const/4 v4, 0x0

    .line 1315
    goto/16 :goto_1

    .line 1317
    :sswitch_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.DATE_SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1321
    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainUI;->startActivity(Landroid/content/Intent;)V

    .line 1322
    const/4 v4, 0x0

    .line 1323
    goto/16 :goto_1

    .line 1332
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_9
    invoke-static {}, Lcom/ts/can/CanIF;->Deal360CameraKey()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1334
    const/4 v4, 0x0

    .line 1335
    goto/16 :goto_1

    .line 1337
    :cond_f
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    .line 1338
    const/4 v4, 0x0

    .line 1340
    goto/16 :goto_1

    .line 1343
    :sswitch_a
    const/16 v5, 0xb

    const/16 v6, 0x62

    invoke-static {v5, v6}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1344
    const/4 v4, 0x0

    .line 1345
    goto/16 :goto_1

    .line 1348
    :sswitch_b
    invoke-virtual {p0, v8}, Lcom/ts/main/common/MainUI;->SetVoiceState(Z)V

    goto/16 :goto_1

    .line 1356
    :sswitch_c
    sget-boolean v5, Lcom/ts/main/common/MainUI;->bIsScreenMode:Z

    if-eqz v5, :cond_11

    .line 1357
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->takeScreenShot(Ljava/lang/String;)Z

    .line 1369
    :cond_10
    :goto_3
    const/4 v4, 0x0

    .line 1370
    goto/16 :goto_1

    .line 1359
    :cond_11
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v5

    if-nez v5, :cond_12

    .line 1360
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    .line 1362
    :cond_12
    iget v5, p0, Lcom/ts/main/common/MainUI;->nHomeKey_enable:I

    if-ne v5, v9, :cond_10

    .line 1364
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    invoke-virtual {v5, v10}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    goto :goto_3

    .line 1372
    :sswitch_d
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x52

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1373
    const/4 v4, 0x0

    .line 1374
    goto/16 :goto_1

    .line 1379
    :sswitch_e
    invoke-static {}, Lcom/ts/main/common/WinShow;->DealModeKey()V

    .line 1381
    const/4 v4, 0x0

    .line 1382
    goto/16 :goto_1

    .line 1384
    :sswitch_f
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    if-ne v5, v10, :cond_13

    .line 1385
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->answer()V

    .line 1386
    const/4 v4, 0x0

    .line 1387
    goto/16 :goto_1

    .line 1388
    :cond_13
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v5

    iget v5, v5, Lcom/ts/MainUI/Evc;->PhoneState:I

    if-ne v5, v9, :cond_9

    .line 1390
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/ts/main/common/PhoneUtils;->answerCall(Landroid/telephony/TelephonyManager;)V

    goto/16 :goto_1

    .line 1396
    :sswitch_10
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    if-ne v5, v10, :cond_15

    .line 1397
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->answer()V

    .line 1418
    :cond_14
    :goto_4
    const/4 v4, 0x0

    .line 1419
    goto/16 :goto_1

    .line 1399
    :cond_15
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v5

    iget v5, v5, Lcom/ts/MainUI/Evc;->PhoneState:I

    if-ne v5, v9, :cond_16

    .line 1401
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/ts/main/common/PhoneUtils;->answerCall(Landroid/telephony/TelephonyManager;)V

    goto :goto_4

    .line 1403
    :cond_16
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v5

    iget v5, v5, Lcom/ts/MainUI/Evc;->PhoneState:I

    if-ne v5, v11, :cond_17

    .line 1405
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/ts/main/common/PhoneUtils;->rejectCall(Landroid/telephony/TelephonyManager;)V

    goto :goto_4

    .line 1407
    :cond_17
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1408
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->hangup()V

    goto :goto_4

    .line 1411
    :cond_18
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v5

    if-nez v5, :cond_19

    .line 1412
    const/4 v5, 0x7

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_4

    .line 1413
    :cond_19
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1414
    const/4 v5, 0x7

    invoke-static {v5, v10}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_4

    .line 1424
    :sswitch_11
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1425
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->hangup()V

    .line 1426
    const/4 v4, 0x0

    .line 1427
    goto/16 :goto_1

    .line 1428
    :cond_1a
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v5

    iget v5, v5, Lcom/ts/MainUI/Evc;->PhoneState:I

    if-lt v5, v9, :cond_9

    .line 1430
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/ts/main/common/PhoneUtils;->rejectCall(Landroid/telephony/TelephonyManager;)V

    goto/16 :goto_1

    .line 1436
    :sswitch_12
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    invoke-virtual {v5, v6}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1438
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ts/main/txz/TxzReg;->TxzStartMic(Ljava/lang/String;)V

    .line 1444
    :goto_5
    const/4 v4, 0x0

    .line 1446
    goto/16 :goto_1

    .line 1442
    :cond_1b
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v11}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    goto :goto_5

    .line 1450
    :sswitch_13
    sget-boolean v5, Lcom/ts/main/common/MainUI;->bIsScreenMode:Z

    if-eqz v5, :cond_1c

    .line 1451
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->takeScreenShot(Ljava/lang/String;)Z

    .line 1470
    :goto_6
    const/4 v4, 0x0

    .line 1471
    goto/16 :goto_1

    .line 1453
    :cond_1c
    const/16 v5, 0x80

    new-array v1, v5, [B

    .line 1454
    .local v1, "byteNavipath":[B
    invoke-static {v1}, Lcom/yyw/ts70xhw/StSet;->GetNaviPack([B)I

    .line 1455
    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "NaviPath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->getTopPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1458
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    if-nez v5, :cond_1d

    .line 1459
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    goto :goto_6

    .line 1462
    :cond_1d
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    invoke-static {v5}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    goto :goto_6

    .line 1466
    :cond_1e
    invoke-static {v9, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_6

    .line 1473
    .end local v0    # "NaviPath":Ljava/lang/String;
    .end local v1    # "byteNavipath":[B
    :sswitch_14
    invoke-static {v11, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1474
    const/4 v4, 0x0

    .line 1475
    goto/16 :goto_1

    .line 1479
    :sswitch_15
    invoke-static {v10, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1481
    const/4 v4, 0x0

    .line 1482
    goto/16 :goto_1

    .line 1485
    :sswitch_16
    invoke-static {v12, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1486
    const/4 v4, 0x0

    .line 1487
    goto/16 :goto_1

    .line 1490
    :sswitch_17
    const/4 v5, 0x6

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1491
    const/4 v4, 0x0

    .line 1492
    goto/16 :goto_1

    .line 1494
    :sswitch_18
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1519
    invoke-static {v12}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_22

    .line 1520
    const/4 v5, 0x6

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1496
    :pswitch_1
    invoke-static {v10}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_1f

    .line 1497
    invoke-static {v12, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1498
    :cond_1f
    invoke-static {v11}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 1499
    invoke-static {v10, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1503
    :pswitch_2
    invoke-static {v11}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_20

    .line 1504
    invoke-static {v10, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1505
    :cond_20
    invoke-static {v12}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 1506
    const/4 v5, 0x6

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1511
    :pswitch_3
    invoke-static {v12}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_21

    .line 1512
    const/4 v5, 0x6

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1513
    :cond_21
    invoke-static {v10}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 1514
    invoke-static {v12, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1521
    :cond_22
    invoke-static {v10}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_23

    .line 1522
    invoke-static {v12, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1523
    :cond_23
    invoke-static {v11}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 1524
    invoke-static {v10, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_1

    .line 1536
    :sswitch_19
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v11}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    .line 1537
    const/4 v4, 0x0

    .line 1538
    goto/16 :goto_1

    .line 1542
    :sswitch_1a
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1544
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->StartMic()V

    .line 1545
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ts/main/txz/TxzReg;->TxzStartMic(Ljava/lang/String;)V

    .line 1552
    :goto_7
    const/4 v4, 0x0

    .line 1553
    goto/16 :goto_1

    .line 1548
    :cond_24
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v11}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    goto :goto_7

    .line 1555
    :sswitch_1b
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1558
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v11}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    goto/16 :goto_1

    .line 1561
    :cond_25
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->StartMic()V

    .line 1562
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ts/main/txz/TxzReg;->TxzStartMic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1568
    :sswitch_1c
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PKEY_EQ = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v5

    .line 1571
    const-string v6, "com.ts.set.SettingSoundActivity"

    .line 1570
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1571
    if-nez v5, :cond_26

    .line 1572
    invoke-static {}, Lcom/ts/main/common/WinShow;->TurnToEq()V

    .line 1584
    :goto_8
    const/4 v4, 0x0

    .line 1587
    goto/16 :goto_1

    .line 1575
    :cond_26
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetEqm()I

    move-result v5

    iput v5, p0, Lcom/ts/main/common/MainUI;->nMode:I

    .line 1576
    iget v5, p0, Lcom/ts/main/common/MainUI;->nMode:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ts/main/common/MainUI;->nMode:I

    .line 1577
    iget v5, p0, Lcom/ts/main/common/MainUI;->nMode:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_27

    .line 1578
    iput v8, p0, Lcom/ts/main/common/MainUI;->nMode:I

    .line 1580
    :cond_27
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nMode:I

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/Evc;->evol_eqm_set(I)V

    goto :goto_8

    .line 1601
    :sswitch_1d
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v8}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    goto/16 :goto_1

    .line 1608
    :sswitch_1e
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 1609
    invoke-static {}, Lcom/ts/main/common/WinShow;->IsRadioActivity()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1610
    invoke-static {v11, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1611
    const/4 v4, 0x0

    .line 1615
    goto/16 :goto_1

    .line 1622
    :sswitch_1f
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v5

    if-nez v5, :cond_28

    .line 1624
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    .line 1626
    :cond_28
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsMathToMcu()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1628
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v9}, Lcom/ts/MainUI/Evc;->Evol_vol_tune(I)V

    .line 1629
    const/4 v4, 0x0

    .line 1632
    goto/16 :goto_1

    .line 1639
    :sswitch_20
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v5

    if-nez v5, :cond_29

    .line 1641
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    .line 1643
    :cond_29
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsMathToMcu()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1645
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v8}, Lcom/ts/MainUI/Evc;->Evol_vol_tune(I)V

    .line 1646
    const/4 v4, 0x0

    .line 1649
    goto/16 :goto_1

    .line 1652
    :sswitch_21
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    invoke-virtual {v5, v12}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1653
    const/4 v4, 0x0

    .line 1654
    goto/16 :goto_1

    .line 1657
    :sswitch_22
    const/4 v5, 0x7

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1658
    const/4 v4, 0x0

    .line 1659
    goto/16 :goto_1

    .line 1662
    :sswitch_23
    const/16 v5, 0xd

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1663
    const/4 v4, 0x0

    .line 1664
    goto/16 :goto_1

    .line 1666
    :sswitch_24
    const/16 v5, 0xe

    invoke-static {v5, v8}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1667
    const/4 v4, 0x0

    .line 1668
    goto/16 :goto_1

    .line 1671
    :sswitch_25
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 1672
    const/4 v4, 0x0

    .line 1673
    goto/16 :goto_1

    .line 1676
    :sswitch_26
    const/16 v5, 0x11

    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 1677
    const/4 v4, 0x0

    .line 1678
    goto/16 :goto_1

    .line 1682
    :sswitch_27
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v5

    if-ne v5, v10, :cond_2a

    .line 1683
    const/16 v5, 0x11

    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 1684
    const/4 v4, 0x0

    .line 1685
    goto/16 :goto_1

    .line 1686
    :cond_2a
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 1687
    const/4 v4, 0x0

    .line 1689
    goto/16 :goto_1

    .line 1697
    :sswitch_28
    new-instance v5, Lcom/ts/main/common/MainUI$4;

    invoke-direct {v5, p0}, Lcom/ts/main/common/MainUI$4;-><init>(Lcom/ts/main/common/MainUI;)V

    .line 1702
    invoke-virtual {v5}, Lcom/ts/main/common/MainUI$4;->start()V

    .line 1706
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1719
    :pswitch_4
    invoke-static {v4}, Lcom/ts/main/radio/RadioFunc;->DealKey(I)I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 1720
    const/4 v4, 0x0

    .line 1721
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->KeyBeep()V

    goto/16 :goto_2

    .line 1726
    :pswitch_5
    invoke-static {v4}, Lcom/ts/bt/BtFunc;->DealKey(I)I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 1727
    const/4 v4, 0x0

    .line 1728
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->KeyBeep()V

    goto/16 :goto_2

    .line 1733
    :pswitch_6
    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_2

    .line 1752
    :sswitch_29
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->getTopPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ex.dabplayer.pad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1754
    const/16 v5, 0x2e

    invoke-static {v5}, Lcom/ts/main/common/MainSet;->DABControl(I)V

    goto/16 :goto_2

    .line 1735
    :sswitch_2a
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x7f

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    goto/16 :goto_2

    .line 1738
    :sswitch_2b
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x7e

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    goto/16 :goto_2

    .line 1743
    :sswitch_2c
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x55

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    goto/16 :goto_2

    .line 1757
    :cond_2b
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x57

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1758
    const/16 v5, 0x2e

    invoke-static {v5}, Lcom/ts/main/common/MainSet;->DABControl(I)V

    goto/16 :goto_2

    .line 1768
    :sswitch_2d
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->getTopPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ex.dabplayer.pad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1770
    const/16 v5, 0x2d

    invoke-static {v5}, Lcom/ts/main/common/MainSet;->DABControl(I)V

    goto/16 :goto_2

    .line 1773
    :cond_2c
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    .line 1774
    const/16 v5, 0x2d

    invoke-static {v5}, Lcom/ts/main/common/MainSet;->DABControl(I)V

    goto/16 :goto_2

    .line 1786
    :pswitch_7
    :try_start_0
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v5, :cond_a

    .line 1787
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v5, v4}, Lcom/ts/dvdplayer/ITsPlayerService;->nDealMediaKey(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1789
    :catch_0
    move-exception v2

    .line 1791
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1795
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_8
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_a

    .line 1797
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ts/MainUI/Cmmb;->DealCmmbKey(I)I

    goto/16 :goto_2

    .line 1801
    :pswitch_9
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ts/MainUI/Cmmb;->DealCmmbKey(I)I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 1802
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->KeyBeep()V

    goto/16 :goto_2

    .line 1807
    :pswitch_a
    invoke-static {v4}, Lcom/ts/can/CanIF;->DealExdKey(I)I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 1808
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->KeyBeep()V

    goto/16 :goto_2

    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_e
        0xb -> :sswitch_13
        0xc -> :sswitch_14
        0xd -> :sswitch_15
        0xe -> :sswitch_16
        0xf -> :sswitch_17
        0x10 -> :sswitch_19
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_1d
        0x13 -> :sswitch_1f
        0x14 -> :sswitch_20
        0x15 -> :sswitch_3
        0x16 -> :sswitch_21
        0x17 -> :sswitch_22
        0x18 -> :sswitch_9
        0x19 -> :sswitch_23
        0x1a -> :sswitch_24
        0x1c -> :sswitch_18
        0x1d -> :sswitch_10
        0x1e -> :sswitch_11
        0x2b -> :sswitch_1e
        0x33 -> :sswitch_1e
        0x34 -> :sswitch_1e
        0x35 -> :sswitch_1e
        0x46 -> :sswitch_27
        0x47 -> :sswitch_28
        0x51 -> :sswitch_26
        0x52 -> :sswitch_25
        0x53 -> :sswitch_28
        0x5f -> :sswitch_12
        0x60 -> :sswitch_12
        0x63 -> :sswitch_d
        0x64 -> :sswitch_0
        0x101 -> :sswitch_a
        0x102 -> :sswitch_9
        0x103 -> :sswitch_c
        0x105 -> :sswitch_e
        0x106 -> :sswitch_13
        0x107 -> :sswitch_1e
        0x108 -> :sswitch_15
        0x109 -> :sswitch_16
        0x10a -> :sswitch_17
        0x10b -> :sswitch_19
        0x10c -> :sswitch_1c
        0x10e -> :sswitch_1f
        0x10f -> :sswitch_20
        0x110 -> :sswitch_21
        0x111 -> :sswitch_10
        0x112 -> :sswitch_11
        0x13a -> :sswitch_27
        0x13b -> :sswitch_28
        0x14c -> :sswitch_26
        0x14d -> :sswitch_25
        0x14e -> :sswitch_28
        0x201 -> :sswitch_20
        0x202 -> :sswitch_1f
        0x203 -> :sswitch_2
        0x204 -> :sswitch_1
        0x301 -> :sswitch_27
        0x306 -> :sswitch_1f
        0x308 -> :sswitch_1f
        0x309 -> :sswitch_1f
        0x30b -> :sswitch_20
        0x30d -> :sswitch_20
        0x30e -> :sswitch_20
        0x31a -> :sswitch_11
        0x31f -> :sswitch_f
        0x325 -> :sswitch_1a
        0x328 -> :sswitch_1b
        0x329 -> :sswitch_e
        0x32e -> :sswitch_10
        0x333 -> :sswitch_11
        0x33d -> :sswitch_13
    .end sparse-switch

    .line 1717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 1494
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1733
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_29
        0x2d -> :sswitch_2d
        0x38 -> :sswitch_29
        0x39 -> :sswitch_2d
        0x3c -> :sswitch_2c
        0x5a -> :sswitch_2b
        0x5b -> :sswitch_2a
        0x123 -> :sswitch_29
        0x124 -> :sswitch_2d
        0x12b -> :sswitch_2c
        0x203 -> :sswitch_2d
        0x204 -> :sswitch_29
        0x310 -> :sswitch_29
        0x315 -> :sswitch_2d
        0x31a -> :sswitch_29
        0x31f -> :sswitch_2d
        0x338 -> :sswitch_2c
    .end sparse-switch
.end method

.method public DealTask()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v8, 0xff

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 685
    sget v5, Lcom/ts/MainUI/Evc;->mSystemState:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 686
    iput v10, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 687
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->WmInint()V

    .line 688
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DealTask poweroff state  = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    sget v5, Lcom/ts/MainUI/Evc;->mSystemState:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_5

    .line 691
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->mcutask()I

    .line 692
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "## Acc Off = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GetMcuState()=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v5

    if-ne v5, v12, :cond_4

    .line 694
    :cond_2
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDelayWakeUp:I

    if-lez v5, :cond_3

    .line 696
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDelayWakeUp:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/ts/main/common/MainUI;->nDelayWakeUp:I

    goto :goto_0

    .line 699
    :cond_3
    sput v9, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 700
    iput v10, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    goto :goto_0

    .line 705
    :cond_4
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->IsBatOff()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    iget-boolean v5, p0, Lcom/ts/main/common/MainUI;->bShutDown:Z

    if-nez v5, :cond_0

    .line 708
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->SetACCOFF()V

    .line 709
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->QuiteNavi()V

    .line 710
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "## RUN_BATOFF START = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 712
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 714
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "## RUN_BATOFF END = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iput-boolean v9, p0, Lcom/ts/main/common/MainUI;->bShutDown:Z

    goto/16 :goto_0

    .line 722
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_5
    const-string v5, "forfan.tsbt.mute"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "nVal":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 725
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "call is comming "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v5, 0x32

    invoke-static {v5}, Lcom/yyw/ts70xhw/Iop;->PopMuteDelay(I)I

    .line 727
    const-string v5, "forfan.tsbt.mute"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_6
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    invoke-virtual {v5, v10}, Lcom/ts/main/common/KeyTouch;->SearchCtouchFile(I)I

    .line 732
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->mcutask()I

    .line 733
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->SendClock()V

    .line 734
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->GetMemory()V

    .line 736
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v5

    iput v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    .line 737
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-eqz v5, :cond_7

    .line 738
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "## nPowerMode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_7
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    iget v6, p0, Lcom/ts/main/common/MainUI;->nOldPowerMode:I

    if-eq v5, v6, :cond_b

    .line 742
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "## nPowerMode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v12, :cond_e

    .line 746
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mEvc.Evol.workmode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    if-ne v5, v12, :cond_a

    .line 750
    :cond_8
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    if-eqz v5, :cond_a

    .line 752
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v5

    iput v5, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    .line 754
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 756
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v5, :cond_9

    .line 758
    :try_start_0
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/ts/dvdplayer/ITsPlayerService;->enterMedia(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v5, v10}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 792
    :cond_a
    :goto_2
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    iput v5, p0, Lcom/ts/main/common/MainUI;->nOldPowerMode:I

    .line 795
    :cond_b
    iget v5, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    if-ne v5, v9, :cond_12

    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    if-ne v5, v8, :cond_12

    iget v5, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    if-ne v5, v9, :cond_12

    .line 797
    invoke-virtual {p0, v10}, Lcom/ts/main/common/MainUI;->SetVoiceState(Z)V

    .line 798
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->AdjustMcuTime()V

    .line 799
    const-string v5, "com.ts.main.uiaccoff"

    invoke-static {v5}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 800
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v5, :cond_c

    .line 801
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mServiceConnection:Lcom/ts/main/common/MainUI$DvpServiceConnection;

    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainUI;->unbindService(Landroid/content/ServiceConnection;)V

    .line 804
    :cond_c
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->tsxhwSleep()I

    .line 805
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 806
    invoke-virtual {p0, v10}, Lcom/ts/main/common/MainUI;->EnterCamera(I)V

    .line 807
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->FtDestroy()V

    .line 809
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_d

    .line 811
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->disconnect()V

    .line 815
    :cond_d
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 819
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mMainVolume:Lcom/ts/main/common/MainVolume;

    invoke-virtual {v5}, Lcom/ts/main/common/MainVolume;->Destroy()V

    .line 821
    const/16 v5, 0x14

    sput v5, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 822
    const-string v5, "MainUI"

    const-string v6, "######## Acc Off !"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 825
    const/16 v5, 0x14

    iput v5, p0, Lcom/ts/main/common/MainUI;->nDelayWakeUp:I

    .line 831
    const-string v5, "MainUI"

    .line 832
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "**************Power off ********************nPowerMode=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 833
    iget v7, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 832
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 831
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 770
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    iget v5, p0, Lcom/ts/main/common/MainUI;->nOldPowerMode:I

    if-ne v5, v12, :cond_10

    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-nez v5, :cond_10

    .line 774
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    if-eq v5, v8, :cond_f

    .line 776
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    invoke-static {v5}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    .line 781
    :goto_3
    iput v8, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    goto/16 :goto_2

    .line 779
    :cond_f
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto :goto_3

    .line 783
    :cond_10
    iget v5, p0, Lcom/ts/main/common/MainUI;->nOldPowerMode:I

    if-ne v5, v12, :cond_a

    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_a

    .line 785
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    if-eq v5, v8, :cond_11

    .line 787
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 790
    :cond_11
    iput v8, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    goto/16 :goto_2

    .line 838
    :cond_12
    iput v8, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 840
    sget-boolean v5, Lcom/ts/main/common/MainUI;->bSimConnect:Z

    if-nez v5, :cond_13

    .line 842
    sget v5, Lcom/ts/main/common/MainUI;->nnUM:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/ts/main/common/MainUI;->nnUM:I

    rem-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_13

    .line 844
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->CheckSIMState()V

    .line 856
    :cond_13
    iget v5, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    if-ne v5, v9, :cond_0

    iget v5, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    if-ne v5, v9, :cond_0

    .line 858
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/KeyTouch;->DealTask()V

    .line 860
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsTestMode()Z

    move-result v5

    if-nez v5, :cond_14

    .line 863
    sget v5, Lcom/ts/main/common/MainUI;->nDelayToCamera:I

    if-lez v5, :cond_28

    .line 864
    sget v5, Lcom/ts/main/common/MainUI;->nDelayToCamera:I

    add-int/lit8 v5, v5, -0x1

    sput v5, Lcom/ts/main/common/MainUI;->nDelayToCamera:I

    .line 865
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "nDelayToCamera-- nDelayToCamera="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/ts/main/common/MainUI;->nDelayToCamera:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_14
    :goto_4
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v5

    if-nez v5, :cond_18

    .line 919
    iget v5, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    if-lez v5, :cond_15

    .line 920
    iget v5, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    .line 921
    iget v5, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    if-nez v5, :cond_15

    .line 922
    invoke-static {v9, v10}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 925
    :cond_15
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    if-lez v5, :cond_16

    .line 927
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    .line 928
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    if-nez v5, :cond_16

    .line 930
    invoke-static {}, Lcom/ts/main/common/MainSet;->isZh()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 932
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/ts/main/txz/TxzReg;->Inint0(Landroid/content/Context;)V

    .line 937
    :cond_16
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    if-lez v5, :cond_18

    .line 939
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    .line 940
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_17

    .line 942
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->CheckKFRDvrDevice()V

    .line 943
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/MainUI/AuthServer;->IsAuthOk()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 945
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v5

    if-nez v5, :cond_17

    .line 947
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->InintSbcServer()V

    .line 954
    :cond_17
    iget v5, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    if-nez v5, :cond_18

    .line 955
    const/16 v5, 0x7f

    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_18

    .line 957
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->InintAdasInterface()V

    .line 958
    const-string v5, "MainUI"

    const-string v6, "******adas start********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_18
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/main/common/MainSet;->DealTask(I)I

    .line 970
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/TsDisplay;->DealTask(I)I

    .line 974
    :try_start_1
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->CheckMediaDevice()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 980
    :goto_5
    invoke-static {}, Lcom/ts/main/common/WinShow;->DealTask()V

    .line 981
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v5

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/main/txz/TxzReg;->Task(I)I

    .line 983
    const/16 v5, 0x7b

    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_1a

    .line 984
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/StTpms;->MainFunc(I)I

    .line 985
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    if-ne v5, v11, :cond_19

    .line 987
    iget v5, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    if-lez v5, :cond_19

    .line 989
    iget v5, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    .line 993
    :cond_19
    iget v5, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    if-nez v5, :cond_1a

    .line 995
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mStTpms:Lcom/ts/MainUI/StTpms;

    invoke-virtual {v5}, Lcom/ts/MainUI/StTpms;->CheckError()I

    move-result v5

    if-lez v5, :cond_1a

    .line 996
    const/16 v5, 0xfa

    iput v5, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    .line 997
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v12, v12, v10}, Landroid/media/SoundPool;-><init>(III)V

    .line 998
    .local v3, "soundPool":Landroid/media/SoundPool;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 999
    .local v4, "soundPoolMap":Ljava/util/HashMap;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/ts/MainUI/R$raw;->waring:I

    invoke-virtual {v3, p0, v6, v9}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v5, Lcom/ts/main/common/MainUI$3;

    invoke-direct {v5, p0}, Lcom/ts/main/common/MainUI$3;-><init>(Lcom/ts/main/common/MainUI;)V

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1007
    const-string v5, "com.ts.MainUI"

    .line 1008
    const-string v6, "com.ts.main.tpms.TPMSMainActivity"

    .line 1007
    invoke-static {v5, v6}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .end local v3    # "soundPool":Landroid/media/SoundPool;
    .end local v4    # "soundPoolMap":Ljava/util/HashMap;
    :cond_1a
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mMainVolume:Lcom/ts/main/common/MainVolume;

    invoke-virtual {v5}, Lcom/ts/main/common/MainVolume;->CheckVol()V

    .line 1015
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mMainCScreen:Lcom/ts/main/common/MainCScreen;

    invoke-virtual {v5, v10}, Lcom/ts/main/common/MainCScreen;->DealTask(I)V

    .line 1017
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v5, :cond_1c

    .line 1019
    :try_start_2
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-interface {v5, v6}, Lcom/ts/dvdplayer/ITsPlayerService;->mediaTask(I)I

    move-result v5

    if-eq v5, v8, :cond_1c

    .line 1020
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_1b

    .line 1021
    const-string v5, "MainUI"

    const-string v6, "Media  PowerOff Err "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_1b
    const/4 v5, 0x0

    iput v5, p0, Lcom/ts/main/common/MainUI;->nPowerState:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1030
    :cond_1c
    :goto_6
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->SetAdasLightState()V

    .line 1031
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v5

    if-ne v5, v9, :cond_1d

    .line 1033
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v5

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/bt/BtExe;->timerCall(I)I

    .line 1036
    :cond_1d
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v5

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/main/common/ScreenSet;->Task(I)V

    .line 1037
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsTestMode()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1039
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-static {v5}, Lcom/yyw/ts70xhw/Radio;->TuneTask(I)I

    move-result v5

    if-eq v5, v8, :cond_1f

    .line 1040
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_1e

    .line 1041
    const-string v5, "MainUI"

    const-string v6, "mRadio  PowerOff Err "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_1e
    iput v10, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 1048
    :cond_1f
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1056
    :cond_20
    invoke-static {}, Lcom/ts/MainUI/CstTv;->GetInstance()Lcom/ts/MainUI/CstTv;

    move-result-object v5

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6, v9}, Lcom/ts/MainUI/CstTv;->Tv_Main(IZ)I

    move-result v5

    if-eq v5, v8, :cond_22

    .line 1057
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_21

    .line 1058
    const-string v5, "MainUI"

    const-string v6, "CstTv  PowerOff Err "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_21
    iput v10, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 1071
    :cond_22
    iget-object v5, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/Evc;->task(I)I

    move-result v5

    if-eq v5, v8, :cond_24

    .line 1072
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_23

    .line 1073
    const-string v5, "MainUI"

    const-string v6, "mEvc  PowerOff Err "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_23
    iput v10, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 1084
    :cond_24
    sget-object v5, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    if-eqz v5, :cond_27

    .line 1085
    iget-boolean v5, p0, Lcom/ts/main/common/MainUI;->bCaninit:Z

    if-nez v5, :cond_25

    .line 1086
    sget-object v5, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ts/main/common/CanInterface;->CanInit(Landroid/content/Context;)V

    .line 1087
    iput-boolean v9, p0, Lcom/ts/main/common/MainUI;->bCaninit:Z

    .line 1089
    :cond_25
    sget v5, Lcom/ts/main/common/MainUI;->nDelayToCamera:I

    if-nez v5, :cond_27

    sget-object v5, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    iget v6, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    invoke-interface {v5, v6}, Lcom/ts/main/common/CanInterface;->CanTask(I)I

    move-result v5

    if-eq v5, v8, :cond_27

    .line 1090
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_26

    .line 1091
    const-string v5, "MainUI"

    const-string v6, "CanFunc  PowerOff Err "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_26
    iput v10, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    .line 1097
    :cond_27
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v5, v11, :cond_0

    .line 1098
    iget v5, p0, Lcom/ts/main/common/MainUI;->nPowerState:I

    if-ne v5, v8, :cond_0

    .line 1099
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->SendByeBye()I

    goto/16 :goto_0

    .line 869
    :cond_28
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v5

    if-ne v5, v9, :cond_29

    sget-boolean v5, Lcom/ts/main/common/MainUI;->bIsInCamera:Z

    if-nez v5, :cond_29

    .line 871
    sput-boolean v9, Lcom/ts/main/common/MainUI;->bIsInCamera:Z

    .line 872
    const-string v5, "MainUI"

    const-string v6, "IsCameraMode() && !bIsInCamera "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0, v10}, Lcom/ts/main/common/MainUI;->SetCameraVPort(I)V

    .line 874
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->TransToCamera()V

    goto/16 :goto_4

    .line 875
    :cond_29
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsRightCamMode()I

    move-result v5

    if-ne v5, v9, :cond_2a

    sget-boolean v5, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    if-nez v5, :cond_2a

    .line 877
    const-string v5, "MainUI"

    const-string v6, "IsRightCamMode() && !bIsInRight "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sput-boolean v9, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    .line 879
    invoke-direct {p0, v9}, Lcom/ts/main/common/MainUI;->SetCameraVPort(I)V

    .line 880
    invoke-virtual {p0, v9}, Lcom/ts/main/common/MainUI;->EnterRightCamera(I)V

    goto/16 :goto_4

    .line 882
    :cond_2a
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v5

    if-ne v5, v9, :cond_2b

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsRightCamMode()I

    move-result v5

    if-nez v5, :cond_2b

    sget v5, Lcom/ts/main/common/MainUI;->nCamVport:I

    if-ne v5, v9, :cond_2b

    .line 883
    sput-boolean v10, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    .line 884
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->TransToCamera()V

    goto/16 :goto_4

    .line 885
    :cond_2b
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v5

    if-nez v5, :cond_2c

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsRightCamMode()I

    move-result v5

    if-ne v5, v9, :cond_2c

    sget v5, Lcom/ts/main/common/MainUI;->nCamVport:I

    if-nez v5, :cond_2c

    .line 886
    sput-boolean v9, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    .line 887
    invoke-direct {p0, v9}, Lcom/ts/main/common/MainUI;->SetCameraVPort(I)V

    .line 888
    invoke-virtual {p0, v9}, Lcom/ts/main/common/MainUI;->EnterRightCamera(I)V

    goto/16 :goto_4

    .line 889
    :cond_2c
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v5

    if-nez v5, :cond_14

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsRightCamMode()I

    move-result v5

    if-nez v5, :cond_14

    sget-boolean v5, Lcom/ts/main/common/MainUI;->bIsInCamera:Z

    if-nez v5, :cond_2d

    sget-boolean v5, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    if-eqz v5, :cond_14

    .line 891
    :cond_2d
    sput-boolean v10, Lcom/ts/main/common/MainUI;->bIsInCamera:Z

    .line 892
    sput-boolean v10, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    .line 893
    iget v5, p0, Lcom/ts/main/common/MainUI;->nBklCanOn:I

    if-ne v5, v9, :cond_2e

    .line 894
    invoke-static {v10}, Lcom/yyw/ts70xhw/Mcu;->BklTurnCan(I)I

    .line 896
    :cond_2e
    const-string v5, "MainUI"

    const-string v6, "!IsCameraMode() && bIsInCamera "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p0, v10}, Lcom/ts/main/common/MainUI;->EnterCamera(I)V

    .line 898
    invoke-virtual {p0, v10}, Lcom/ts/main/common/MainUI;->EnterRightCamera(I)V

    .line 910
    const-string v5, "MainUI"

    const-string v6, "******forfan.backcar.cmd stop********"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 975
    :catch_1
    move-exception v0

    .line 977
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .line 1025
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 1027
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public DealWorkMode(II)V
    .locals 5
    .param p1, "oldMode"    # I
    .param p2, "newWorkmode"    # I

    .prologue
    const/4 v4, 0x0

    .line 4142
    iget v1, p0, Lcom/ts/main/common/MainUI;->nOldWorkMode:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4143
    const-string v1, "MainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dvd  workmode nOldWorkMode=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/main/common/MainUI;->nOldWorkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    const-string v1, "MainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dvd  workmode mEvc.Evol.workmode=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4145
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4144
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    iget v1, p0, Lcom/ts/main/common/MainUI;->nOldWorkMode:I

    packed-switch v1, :pswitch_data_0

    .line 4177
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainUI;->nOldWorkMode:I

    .line 4181
    :cond_1
    return-void

    .line 4152
    :pswitch_1
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->IsMediaMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 4153
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v1, :cond_0

    .line 4156
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ts/dvdplayer/ITsPlayerService;->enterMedia(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4157
    :catch_0
    move-exception v0

    .line 4160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4167
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->SetCmmbstate(B)I

    goto :goto_0

    .line 4170
    :pswitch_3
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->musicPause()V

    goto :goto_0

    .line 4147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public DvdLoadOK()Z
    .locals 2

    .prologue
    .line 2750
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v1, :cond_0

    .line 2752
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v1}, Lcom/ts/dvdplayer/ITsPlayerService;->isDvdLoadOK()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2758
    :goto_0
    return v1

    .line 2753
    :catch_0
    move-exception v0

    .line 2755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2758
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method EnterCamera(I)V
    .locals 9
    .param p1, "nMode"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 280
    invoke-static {p1}, Lcom/ts/main/txz/AmapAuto;->SetBackStateToWeNavi(I)V

    .line 281
    if-ne p1, v4, :cond_6

    .line 283
    const-string v2, "com.autokingvr.FORCE_CLOSE_VR_CMD"

    invoke-static {v2}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    .line 285
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/adasplus/ts/IAdasBinderInterface;->setAdasEnable(I)V

    .line 291
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/adasplus/ts/IAdasBinderInterface;->setBackSignal(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->GetWorkMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 300
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v2, :cond_1

    .line 304
    :try_start_1
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->pause()V

    .line 305
    const/4 v2, 0x1

    iput v2, p0, Lcom/ts/main/common/MainUI;->nPaunseFlag:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :cond_1
    :goto_1
    iget v2, p0, Lcom/ts/main/common/MainUI;->nPowerMode:I

    if-ne v2, v7, :cond_4

    .line 316
    const-wide/16 v2, 0x5dc

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 321
    :goto_2
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->BklTurnCan(I)I

    .line 322
    iput v4, p0, Lcom/ts/main/common/MainUI;->nBklCanOn:I

    .line 330
    :cond_2
    :goto_3
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/main/common/MainSet;->IsXT5()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    sget-object v2, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    if-eqz v2, :cond_3

    .line 333
    sget-object v2, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    invoke-interface {v2, v4}, Lcom/ts/main/common/CanInterface;->EnterCamera(I)V

    .line 394
    :cond_3
    :goto_4
    return-void

    .line 293
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v1    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 324
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v2

    if-nez v2, :cond_2

    .line 326
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    goto :goto_3

    .line 338
    :cond_5
    const-string v2, "com.ts.MainUI"

    const-string v3, "com.ts.backcar.BackcarMainActivity"

    invoke-static {v2, v3}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 345
    :cond_6
    const-string v2, "com.autoking.START_VR_SERVICE"

    invoke-static {v2}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    if-eqz v2, :cond_7

    .line 350
    :try_start_3
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/adasplus/ts/IAdasBinderInterface;->setAdasEnable(I)V

    .line 351
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/adasplus/ts/IAdasBinderInterface;->setBackSignal(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 360
    :cond_7
    :goto_5
    iget v2, p0, Lcom/ts/main/common/MainUI;->nPaunseFlag:I

    if-ne v2, v4, :cond_9

    .line 362
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/Evc;->GetWorkMode()I

    move-result v2

    if-ne v2, v6, :cond_8

    .line 366
    :try_start_4
    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->play()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 373
    :cond_8
    :goto_6
    iput v5, p0, Lcom/ts/main/common/MainUI;->nPaunseFlag:I

    .line 376
    :cond_9
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 378
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    .line 380
    :cond_a
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    .line 381
    iget v2, p0, Lcom/ts/main/common/MainUI;->nCameraForbiden:I

    if-ne v2, v4, :cond_b

    .line 383
    iput v6, p0, Lcom/ts/main/common/MainUI;->nCameraForbiden:I

    .line 384
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    invoke-static {v2}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    .line 386
    :cond_b
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/main/common/MainSet;->IsXT5()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    sget-object v2, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    if-eqz v2, :cond_3

    .line 389
    sget-object v2, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    invoke-interface {v2, v5}, Lcom/ts/main/common/CanInterface;->EnterCamera(I)V

    goto/16 :goto_4

    .line 354
    :catch_3
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v0

    .line 370
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public EnterMyDvdMode(I)V
    .locals 2
    .param p1, "nMode"    # I

    .prologue
    .line 2739
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v1, :cond_0

    .line 2741
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v1, p1}, Lcom/ts/dvdplayer/ITsPlayerService;->enterMedia(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2747
    :cond_0
    :goto_0
    return-void

    .line 2742
    :catch_0
    move-exception v0

    .line 2744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method EnterRightCamera(I)V
    .locals 3
    .param p1, "nMode"    # I

    .prologue
    .line 398
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 399
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.backcar.RightCameraActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 404
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "forfan.right.camera.switch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "switch"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public GetCanId3()V
    .locals 3

    .prologue
    .line 562
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v1, :cond_0

    .line 564
    :try_start_0
    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getId3AlbumName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ts/can/CanIF$CAN_ID3;->sAlbum:Ljava/lang/String;

    .line 565
    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getId3Artist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ts/can/CanIF$CAN_ID3;->sArtist:Ljava/lang/String;

    .line 566
    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getPlayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ts/can/CanIF$CAN_ID3;->sName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 573
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v2, ""

    iput-object v2, v1, Lcom/ts/can/CanIF$CAN_ID3;->sAlbum:Ljava/lang/String;

    .line 574
    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v2, ""

    iput-object v2, v1, Lcom/ts/can/CanIF$CAN_ID3;->sArtist:Ljava/lang/String;

    .line 575
    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v2, ""

    iput-object v2, v1, Lcom/ts/can/CanIF$CAN_ID3;->sName:Ljava/lang/String;

    goto :goto_0
.end method

.method public GetMcuState()I
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPowState()I

    move-result v0

    .line 254
    .local v0, "nState":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x2

    .line 260
    :goto_0
    return v1

    .line 256
    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 257
    const/4 v1, 0x3

    goto :goto_0

    .line 260
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetMediaInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->Avalid:I

    .line 473
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->MediaType:I

    .line 474
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgNumAvalid:I

    .line 475
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurNum:I

    .line 476
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalNum:I

    .line 477
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgTimeAvalid:I

    .line 478
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurHour:I

    .line 479
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurMin:I

    .line 480
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurSec:I

    .line 481
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalHour:I

    .line 482
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalMin:I

    .line 483
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalSec:I

    .line 484
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurTime:I

    .line 485
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalTime:I

    .line 486
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgPause:I

    .line 487
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgLoading:I

    .line 490
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-nez v1, :cond_0

    .line 491
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->Avalid:I

    .line 492
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgNumAvalid:I

    .line 493
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgTimeAvalid:I

    .line 559
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iput v3, v1, Lcom/ts/can/CanIF$MediaInfo;->Avalid:I

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v1}, Lcom/ts/dvdplayer/ITsPlayerService;->getMediaDevice()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 526
    :pswitch_0
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->MediaType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->MediaType:I

    .line 500
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getPlayId()I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurNum:I

    .line 501
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getMediaCnt()I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalNum:I

    .line 502
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgNumAvalid:I

    .line 530
    :goto_1
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v1}, Lcom/ts/dvdplayer/ITsPlayerService;->getPlayStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 531
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgPause:I

    .line 533
    :cond_1
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 534
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getCurrentTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit16 v2, v2, 0xe10

    .line 533
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurHour:I

    .line 535
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 536
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getCurrentTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 535
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurMin:I

    .line 537
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 538
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getCurrentTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    rem-int/lit8 v2, v2, 0x3c

    .line 537
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurSec:I

    .line 540
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 541
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getTotoalTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit16 v2, v2, 0xe10

    .line 540
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalHour:I

    .line 542
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 543
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getTotoalTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 542
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalMin:I

    .line 544
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 545
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getTotoalTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    rem-int/lit8 v2, v2, 0x3c

    .line 544
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalSec:I

    .line 547
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 548
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getCurrentTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 547
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurTime:I

    .line 549
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 550
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getTotoalTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 549
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalTime:I

    .line 551
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgTimeAvalid:I

    goto/16 :goto_0

    .line 505
    :pswitch_2
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->MediaType:I

    .line 506
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getPlayId()I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurNum:I

    .line 507
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getMediaCnt()I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalNum:I

    .line 508
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgNumAvalid:I

    goto/16 :goto_1

    .line 512
    :pswitch_3
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->MediaType:I

    .line 519
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getPlayId()I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->CurNum:I

    .line 520
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget-object v2, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 521
    invoke-interface {v2}, Lcom/ts/dvdplayer/ITsPlayerService;->getMediaCnt()I

    move-result v2

    .line 520
    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalNum:I

    .line 523
    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaInfo;->fgNumAvalid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public GetMediaStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->PlaySta:I

    .line 583
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRnd:I

    .line 584
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRpt:I

    .line 587
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-nez v1, :cond_0

    .line 588
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->PlaySta:I

    .line 589
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRnd:I

    .line 590
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRpt:I

    .line 621
    :goto_0
    return-void

    .line 593
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v1}, Lcom/ts/dvdplayer/ITsPlayerService;->getPlayStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 603
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->PlaySta:I

    .line 607
    :goto_1
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    invoke-interface {v1}, Lcom/ts/dvdplayer/ITsPlayerService;->getShuffleMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 608
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRnd:I

    .line 609
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRpt:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 597
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->PlaySta:I

    goto :goto_1

    .line 600
    :pswitch_1
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x2

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->PlaySta:I

    goto :goto_1

    .line 611
    :cond_1
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRnd:I

    .line 612
    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRpt:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public GetNaviInfo()V
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->GetInstance()Lcom/ts/main/txz/AmapAuto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/AmapAuto;->GetNaviInfo()V

    .line 467
    return-void
.end method

.method InintAdasInterface()V
    .locals 3

    .prologue
    .line 3404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3405
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    const-string v2, "com.adasplus.ts"

    invoke-virtual {v1, v2}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3407
    const-string v1, "com.adasplus.ts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3408
    const-string v1, "com.adasplus.ts.AdasRemoteSettingService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3410
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mAdasServiceConnection:Lcom/ts/main/common/MainUI$AdasServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/main/common/MainUI;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3411
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3412
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.adasplus.ts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3413
    const-string v1, "com.adasplus.ts.CameraService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3419
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3421
    return-void

    .line 3417
    :cond_0
    const-string v1, "android.intent.action.START_ADAS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method InintAdasServer()V
    .locals 0

    .prologue
    .line 3446
    return-void
.end method

.method InintDvpInterface()V
    .locals 3

    .prologue
    .line 3396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3397
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.dvdplayer.MediaPlayerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3398
    const-string v1, "com.ts.dvdplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3399
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mServiceConnection:Lcom/ts/main/common/MainUI$DvpServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/main/common/MainUI;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3400
    return-void
.end method

.method InintDvrServer()V
    .locals 2

    .prologue
    .line 3439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3440
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DVR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3441
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3442
    return-void
.end method

.method InintParat()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 3520
    const/4 v0, 0x5

    sput v0, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 3521
    iput v1, p0, Lcom/ts/main/common/MainUI;->nErrorNum:I

    .line 3523
    iput-boolean v3, p0, Lcom/ts/main/common/MainUI;->bHaveDvd:Z

    .line 3524
    iput v1, p0, Lcom/ts/main/common/MainUI;->nLastflag:I

    .line 3525
    iput v2, p0, Lcom/ts/main/common/MainUI;->nOldWorkMode:I

    .line 3526
    iput v1, p0, Lcom/ts/main/common/MainUI;->nDvdMode:I

    .line 3527
    const/16 v0, 0x64

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDelayToGetVerSion:I

    .line 3528
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bIsInCamera:Z

    .line 3529
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bIsInRight:Z

    .line 3530
    sput v1, Lcom/ts/main/common/MainUI;->nCamVport:I

    .line 3531
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bBtConnect:Z

    .line 3532
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bmusicactive:Z

    .line 3533
    iput v1, p0, Lcom/ts/main/common/MainUI;->nNetIsConnect:I

    .line 3534
    iput v1, p0, Lcom/ts/main/common/MainUI;->nOldConnect:I

    .line 3535
    iput v1, p0, Lcom/ts/main/common/MainUI;->nUpdateTime:I

    .line 3536
    iput v1, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    .line 3537
    sput-boolean v1, Lcom/ts/main/common/MainUI;->bIsScreenMode:Z

    .line 3538
    iput v1, p0, Lcom/ts/main/common/MainUI;->nTpmsOnce:I

    .line 3539
    const/16 v0, 0x12c

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDvrDelayTime:I

    .line 3540
    iput v1, p0, Lcom/ts/main/common/MainUI;->nOldPowerMode:I

    .line 3541
    iput v2, p0, Lcom/ts/main/common/MainUI;->nILL:I

    .line 3542
    iput v1, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    .line 3543
    iput v2, p0, Lcom/ts/main/common/MainUI;->nPowerOldWorkMode:I

    .line 3544
    iput v3, p0, Lcom/ts/main/common/MainUI;->nHomeKey_enable:I

    .line 3545
    iput v1, p0, Lcom/ts/main/common/MainUI;->nAccOffEnable:I

    .line 3548
    return-void
.end method

.method public InintSbcServer()V
    .locals 2

    .prologue
    .line 3455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3456
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "com.chinatsp.sendcar.ls.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3457
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3462
    return-void
.end method

.method InintVoiceInterface()V
    .locals 1

    .prologue
    .line 3427
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ts/main/common/MainSet;->isZh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->VoiceBtnShow(Z)V

    .line 3436
    :goto_0
    return-void

    .line 3432
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->VoiceBtnShow(Z)V

    goto :goto_0
.end method

.method SendClock()V
    .locals 9

    .prologue
    .line 653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/ts/main/common/MainUI;->TimeTicket:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ts/main/common/MainUI;->TimeTicket:J

    .line 656
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 658
    .local v2, "mResolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 660
    .local v1, "mCalendar":Landroid/icu/util/Calendar;
    if-eqz v2, :cond_1

    .line 662
    const-string v5, "time_12_24"

    .line 661
    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, "timeFormat":Ljava/lang/String;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 664
    .local v3, "t":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 665
    const/4 v0, 0x1

    .line 666
    .local v0, "Format":I
    if-eqz v4, :cond_0

    .line 668
    const-string v5, "MainUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "timeFormat = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "t.minute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 675
    :cond_0
    iget v5, v3, Landroid/text/format/Time;->hour:I

    iget v6, v3, Landroid/text/format/Time;->minute:I

    invoke-static {v5, v6, v0}, Lcom/yyw/ts70xhw/Mcu;->SendClock(III)I

    .line 678
    .end local v0    # "Format":I
    .end local v1    # "mCalendar":Landroid/icu/util/Calendar;
    .end local v2    # "mResolver":Landroid/content/ContentResolver;
    .end local v3    # "t":Landroid/text/format/Time;
    .end local v4    # "timeFormat":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method SetAdasLightState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3466
    iget v1, p0, Lcom/ts/main/common/MainUI;->nILL:I

    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetIll()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3468
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetIll()I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainUI;->nILL:I

    .line 3469
    iget v1, p0, Lcom/ts/main/common/MainUI;->nILL:I

    if-ne v1, v3, :cond_1

    .line 3471
    const-string v1, "forfan.adas.light_state"

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const-string v1, "MainUI"

    const-string v2, "BROADCAST_ADAS_LIGHT_STATE   on "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    invoke-static {v4}, Lcom/ts/main/txz/AmapAuto;->SetHeadLight(I)V

    .line 3474
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->GetInstance()Lcom/ts/main/txz/AmapAuto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/txz/AmapAuto;->SendCarInfordata()V

    .line 3477
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    if-eqz v1, :cond_0

    .line 3479
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/adasplus/ts/IAdasBinderInterface;->setHeadLight(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3509
    :cond_0
    :goto_0
    return-void

    .line 3482
    :catch_0
    move-exception v0

    .line 3485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3490
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "forfan.adas.light_state"

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    const-string v1, "MainUI"

    const-string v2, "BROADCAST_ADAS_LIGHT_STATE   off "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    invoke-static {v3}, Lcom/ts/main/txz/AmapAuto;->SetHeadLight(I)V

    .line 3493
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->GetInstance()Lcom/ts/main/txz/AmapAuto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/txz/AmapAuto;->SendCarInfordata()V

    .line 3496
    :try_start_1
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    if-eqz v1, :cond_0

    .line 3498
    iget-object v1, p0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/adasplus/ts/IAdasBinderInterface;->setHeadLight(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3500
    :catch_1
    move-exception v0

    .line 3503
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method SetNetConState(Z)V
    .locals 8
    .param p1, "mobileDataEnabled"    # Z

    .prologue
    .line 3650
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3652
    .local v2, "telephonyService":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 3654
    .local v1, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setDataEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3659
    :goto_0
    if-eqz v1, :cond_0

    .line 3662
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3676
    :cond_0
    :goto_1
    return-void

    .line 3655
    :catch_0
    move-exception v0

    .line 3657
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 3663
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 3665
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 3666
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 3668
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 3669
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 3671
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public SetVoiceState(Z)V
    .locals 3
    .param p1, "bState"    # Z

    .prologue
    .line 1843
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1844
    .local v0, "Aintent":Landroid/content/Intent;
    const-string v1, "com.globalconstant.BROADCAST_CAR_SEND_CMD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    const-string v1, "domain"

    const-string v2, "awaken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    if-eqz p1, :cond_0

    .line 1848
    const-string v1, "action"

    const-string v2, "RECORDER_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->sendBroadcast(Landroid/content/Intent;)V

    .line 1855
    return-void

    .line 1852
    :cond_0
    const-string v1, "action"

    const-string v2, "RECORDER_STOP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public Settts_info(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "strinfo"    # Ljava/lang/String;
    .param p2, "bShow"    # Z

    .prologue
    .line 1830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1831
    .local v0, "Aintent":Landroid/content/Intent;
    const-string v1, "com.globalconstant.BROADCAST_TTS_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1832
    const-string v1, "info_tts"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string v1, "info_play"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1834
    if-eqz p2, :cond_0

    .line 1836
    const-string v1, "info_show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1838
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->sendBroadcast(Landroid/content/Intent;)V

    .line 1839
    return-void
.end method

.method public StartMic()V
    .locals 2

    .prologue
    .line 1824
    const-string v0, "MainUI"

    const-string v1, "ACTION_RECOGNIZE_CMD StartMic=="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string v0, "com.globalconstant.BROADCAST_MIC_CLICK"

    invoke-static {v0}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 1826
    return-void
.end method

.method StrToByte128(Ljava/lang/String;)[B
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 3717
    const/16 v3, 0x80

    new-array v2, v3, [B

    .line 3718
    .local v2, "naviname2":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3719
    .local v1, "naviname":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 3723
    return-object v2

    .line 3721
    :cond_0
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    .line 3719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method TransToCamera()V
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->EnterCamera(I)V

    .line 626
    iget v0, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    if-lez v0, :cond_0

    .line 628
    const/16 v0, 0xc8

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    .line 632
    :cond_0
    return-void
.end method

.method public VoiceBtnShow(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 3386
    if-eqz p1, :cond_0

    .line 3387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ts.tts_touch.TouchService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3388
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3393
    :goto_0
    return-void

    .line 3390
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ts.tts_touch.TouchService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3391
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainUI;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public WmInint()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3727
    sget v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    if-ge v7, v12, :cond_4

    .line 3728
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInit = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v7

    iget-boolean v7, v7, Lcom/ts/backcar/BackcarService;->bIninOK:Z

    if-nez v7, :cond_1

    .line 3736
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BackcarService.nStep = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/ts/backcar/BackcarService;->nStep:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsXT5()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3739
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 3947
    :cond_0
    :goto_0
    return-void

    .line 3744
    :cond_1
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->FtSetInint()I

    move-result v7

    iput v7, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    .line 3745
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSdSwap()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 3747
    const-string v7, "forfan.version.info"

    const-string v8, "7.1.1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    :cond_2
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->InintParat()V

    .line 3752
    const-string v7, "ro.forfan.hardware.width"

    const/16 v8, 0x400

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3753
    .local v5, "mScrW":I
    const-string v7, "ro.forfan.hardware.height"

    const/16 v8, 0x258

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3754
    .local v4, "mScrH":I
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInit = mScrW = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInit = mScrH = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    const/16 v7, 0x320

    if-ne v5, v7, :cond_6

    const/16 v7, 0x1e0

    if-ne v4, v7, :cond_6

    .line 3757
    invoke-static {v10}, Lcom/yyw/ts70xhw/Iop;->tsxhwStart(I)I

    .line 3766
    :goto_1
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->mcutask()I

    move-result v7

    iput v7, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    .line 3768
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mMainSet:Lcom/ts/main/common/MainSet;

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsTestMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3770
    iput v10, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    .line 3792
    :goto_2
    :pswitch_0
    sget-object v7, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    if-eqz v7, :cond_3

    .line 3794
    sget-object v7, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ts/main/common/CanInterface;->CanInit(Landroid/content/Context;)V

    .line 3795
    iput-boolean v10, p0, Lcom/ts/main/common/MainUI;->bCaninit:Z

    .line 3798
    :cond_3
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->mcunext()I

    .line 3804
    .end local v4    # "mScrH":I
    .end local v5    # "mScrW":I
    :cond_4
    iget v7, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    if-eq v7, v10, :cond_8

    .line 3805
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->mcutask()I

    move-result v7

    iput v7, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    .line 3806
    iget v7, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    if-nez v7, :cond_5

    .line 3807
    iget v7, p0, Lcom/ts/main/common/MainUI;->nErrorNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/ts/main/common/MainUI;->nErrorNum:I

    .line 3809
    :cond_5
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nMcuRet = 0=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/ts/main/common/MainUI;->nErrorNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3760
    .restart local v4    # "mScrH":I
    .restart local v5    # "mScrW":I
    :cond_6
    invoke-static {v11}, Lcom/yyw/ts70xhw/Iop;->tsxhwStart(I)I

    goto :goto_1

    .line 3772
    :cond_7
    iget v7, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 3774
    :pswitch_1
    const/16 v7, 0xf

    invoke-static {v7, v11}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 3775
    const/16 v7, 0xc

    sput v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 3776
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->bCheckFist()Z

    .line 3777
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInitFactory = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3778
    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3777
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3817
    .end local v4    # "mScrH":I
    .end local v5    # "mScrW":I
    :cond_8
    iget v7, p0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    if-nez v7, :cond_9

    .line 3818
    const/16 v7, 0xd

    sput v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 3819
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInitSyncErr = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    const-string v7, "MainUI"

    .line 3821
    const-string v8, "******************WmInit error MCU SYSNC ERROR*****************"

    .line 3820
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3824
    :cond_9
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPowState()I

    move-result v7

    and-int/lit8 v6, v7, 0x1

    .line 3825
    .local v6, "nBatFirst":I
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->SetInit()I

    .line 3826
    invoke-static {}, Lcom/ts/main/common/MainSet;->isZh()Z

    move-result v7

    if-nez v7, :cond_10

    .line 3828
    const/16 v7, 0x80

    new-array v2, v7, [B

    .line 3829
    .local v2, "byteNavipath":[B
    invoke-static {v2}, Lcom/yyw/ts70xhw/StSet;->GetNaviPack([B)I

    .line 3830
    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v0

    .line 3831
    .local v0, "NaviPath":Ljava/lang/String;
    const-string v7, "com.autonavi.amapauto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    const-string v8, "com.google.android.apps.maps"

    invoke-virtual {v7, v8}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3833
    const-string v7, "Maps"

    invoke-virtual {p0, v7}, Lcom/ts/main/common/MainUI;->StrToByte128(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/yyw/ts70xhw/StSet;->SetNaviName([B)I

    .line 3834
    const-string v7, "com.google.android.apps.maps"

    invoke-virtual {p0, v7}, Lcom/ts/main/common/MainUI;->StrToByte128(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/yyw/ts70xhw/StSet;->SetNaviPack([B)I

    .line 3835
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->SetSave()I

    .line 3847
    .end local v0    # "NaviPath":Ljava/lang/String;
    .end local v2    # "byteNavipath":[B
    :cond_a
    :goto_3
    if-ne v6, v10, :cond_11

    .line 3848
    const/16 v7, 0xa

    sput v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 3849
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInitSyncB+ = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    :goto_4
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->AdjustArmLocalTime()V

    .line 3859
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->InintDvpInterface()V

    .line 3862
    invoke-static {v12}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v7

    if-ne v7, v10, :cond_b

    .line 3864
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/bt/BtExe;->Init()V

    .line 3868
    :cond_b
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsTestMode()Z

    move-result v7

    if-nez v7, :cond_c

    .line 3870
    invoke-static {v6}, Lcom/yyw/ts70xhw/Radio;->TuneTask(I)I

    .line 3873
    :cond_c
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mStTpms:Lcom/ts/MainUI/StTpms;

    invoke-virtual {v7, v6}, Lcom/ts/MainUI/StTpms;->Inint(I)V

    .line 3874
    invoke-static {v6}, Lcom/yyw/ts70xhw/Iop;->EvolTask(I)I

    .line 3876
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v7

    const/16 v8, 0x1e

    iput v8, v7, Lcom/ts/MainUI/Evc;->nWorkModeMute:I

    .line 3877
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v7, p0}, Lcom/ts/MainUI/Evc;->InintEvc(Landroid/content/Context;)V

    .line 3878
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v7, p0}, Lcom/ts/MainUI/Evc;->SetEvcCallBack(Lcom/ts/MainUI/EvcCallBack;)V

    .line 3880
    invoke-static {}, Lcom/ts/main/common/ScreenSet;->GetInstance()Lcom/ts/main/common/ScreenSet;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/ts/main/common/ScreenSet;->Inint(Landroid/content/Context;)V

    .line 3881
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    invoke-virtual {v7}, Lcom/ts/MainUI/TsDisplay;->Inint()V

    .line 3882
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v7

    sput v7, Lcom/ts/main/common/MainVolume;->nBklisOn:I

    .line 3883
    invoke-static {}, Lcom/ts/MainUI/CstTv;->GetInstance()Lcom/ts/MainUI/CstTv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/MainUI/CstTv;->Inint()V

    .line 3884
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->bCheckFist()Z

    .line 3885
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mMainSet:Lcom/ts/main/common/MainSet;

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsTestMode()Z

    move-result v7

    if-nez v7, :cond_13

    iget v7, p0, Lcom/ts/main/common/MainUI;->nFsok:I

    if-ne v7, v10, :cond_13

    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/MainUI/AuthServer;->IsAuthOk()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 3887
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->WriteLicenceToFile()V

    .line 3888
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mEvc.Evol.workmode = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v7

    if-ne v7, v12, :cond_d

    .line 3890
    invoke-static {v10}, Lcom/yyw/ts70xhw/Iop;->SetWorkMode(I)I

    .line 3893
    :cond_d
    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    .line 3894
    .local v1, "TopName":Ljava/lang/String;
    const-string v7, "Launcher"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 3897
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TopName = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 3900
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3906
    :cond_e
    :goto_5
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v7

    if-nez v7, :cond_12

    .line 3908
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v7

    invoke-static {v7}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    .line 3912
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAutoNavi()I

    move-result v7

    if-ne v7, v10, :cond_f

    .line 3913
    const/16 v7, 0x64

    iput v7, p0, Lcom/ts/main/common/MainUI;->nAutoToNavi:I

    .line 3931
    .end local v1    # "TopName":Ljava/lang/String;
    :cond_f
    :goto_6
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mMainVolume:Lcom/ts/main/common/MainVolume;

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ts/main/common/MainVolume;->Inint(Landroid/app/Application;Landroid/content/Context;)V

    .line 3932
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ts/main/common/KeyTouch;->Inint(Landroid/content/Context;)V

    .line 3933
    invoke-direct {p0}, Lcom/ts/main/common/MainUI;->UpLoadTheLocation()V

    .line 3934
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ts/MainUI/AuthServer;->UpLoadTheLocation(Landroid/content/Context;)V

    .line 3935
    invoke-static {}, Lcom/ts/main/txz/Glsx;->GetInstance()Lcom/ts/main/txz/Glsx;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ts/main/txz/Glsx;->Inint(Landroid/content/Context;)V

    .line 3936
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->GetInstance()Lcom/ts/main/txz/AmapAuto;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ts/main/txz/AmapAuto;->Inint(Landroid/content/Context;)V

    .line 3937
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ts/main/common/MainSet;->Inint(I)V

    .line 3938
    const-string v7, "MainUI"

    const-string v8, "InintVolBar ok"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const-string v7, "MainUI"

    const-string v8, "******************WmInit*****************"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3839
    :cond_10
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3841
    const-string v7, "\u6a02\u5ba2\u5c0e\u822a\u738bA5i 3D"

    invoke-virtual {p0, v7}, Lcom/ts/main/common/MainUI;->StrToByte128(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/yyw/ts70xhw/StSet;->SetNaviName([B)I

    .line 3842
    const-string v7, "com.kingwaytek.naviking3d"

    invoke-virtual {p0, v7}, Lcom/ts/main/common/MainUI;->StrToByte128(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/yyw/ts70xhw/StSet;->SetNaviPack([B)I

    .line 3843
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->SetSave()I

    goto/16 :goto_3

    .line 3854
    :cond_11
    const/16 v7, 0xb

    sput v7, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 3855
    const-string v7, "MainUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "######## WmInitSyncAcc = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3856
    const-string v9, " !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3855
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3901
    .restart local v1    # "TopName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3903
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 3917
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_12
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_6

    .line 3921
    .end local v1    # "TopName":Ljava/lang/String;
    :cond_13
    iget-object v7, p0, Lcom/ts/main/common/MainUI;->mMainSet:Lcom/ts/main/common/MainSet;

    invoke-virtual {v7}, Lcom/ts/main/common/MainSet;->IsTestMode()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 3922
    const-string v7, "com.ts.MainUI"

    .line 3923
    const-string v8, "com.ts.main.auth.FactoryMainActivity"

    .line 3922
    invoke-static {v7, v8}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3925
    :cond_14
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/MainUI/AuthServer;->IsAuthOk()Z

    move-result v7

    if-nez v7, :cond_f

    .line 3926
    const/16 v7, 0x10

    invoke-static {v7, v11}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_6

    .line 3772
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method WriteLicenceToFile()V
    .locals 10

    .prologue
    const/16 v2, 0x190

    .line 3596
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 3598
    .local v6, "appid":[B
    invoke-static {v6}, Lcom/yyw/ts70xhw/Mcu;->Getid32([B)I

    .line 3600
    const/16 v0, 0x28

    new-array v9, v0, [B

    .line 3602
    .local v9, "token":[B
    invoke-static {v9}, Lcom/yyw/ts70xhw/Mcu;->Getid40([B)I

    .line 3603
    const/16 v0, 0xe

    new-array v8, v0, [B

    .line 3604
    .local v8, "mcuid":[B
    invoke-static {v8}, Lcom/yyw/ts70xhw/Mcu;->GetSerialId([B)I

    .line 3607
    const/16 v0, 0xc8

    iput v0, p0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    .line 3611
    const-string v0, "/mnt/sdcard/EasyConnected/License.ini"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3613
    const-string v0, "MainUI"

    const-string v1, "fiel not exit "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    const-string v0, "/mnt/sdcard/EasyConnected"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->NewDir(Ljava/lang/String;)V

    .line 3616
    :try_start_0
    const-string v0, "/mnt/sdcard/EasyConnected/License.ini"

    .line 3617
    invoke-static {v8}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    .line 3616
    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3627
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "/mnt/sdcard/EasyConnected/License.ini"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->readFileSdcardFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3628
    invoke-static {v8}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    .line 3627
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3628
    if-nez v0, :cond_2

    .line 3630
    const-string v0, "/mnt/sdcard/EasyConnected/License.ini"

    .line 3631
    invoke-static {v8}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    .line 3630
    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    const-string v0, "MainUI"

    const-string v1, "fiel read ok and not equals= "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3642
    :goto_1
    const-string v0, "/mnt/sdcard/EasyConnected/adas.bmp"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3644
    invoke-static {}, Lcom/ts/main/common/TwoDimension;->GetInstance()Lcom/ts/main/common/TwoDimension;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://car.forfan.com.cn/weixin/product.php?id=3&device="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "adas"

    const-string v5, "/mnt/sdcard/EasyConnected"

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/common/TwoDimension;->CreateTheAdas2D(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3646
    :cond_1
    return-void

    .line 3620
    :catch_0
    move-exception v7

    .line 3622
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3636
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v0, "MainUI"

    const-string v1, "fiel read ok and  equals= "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3638
    :catch_1
    move-exception v7

    .line 3640
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1859
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su \n"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 1860
    .local v1, "process":Ljava/lang/Process;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "am force-stop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    .end local v1    # "process":Ljava/lang/Process;
    :goto_0
    return-void

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/ts/main/common/MainUI;->mTsCom:Lcom/ts/main/common/MainUI$ITsCom;

    return-object v0
.end method

.method public onCreate()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 4033
    const-string v9, "MainUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "######## onCreate = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v13, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " !"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    new-instance v0, Ljava/io/File;

    const-string v9, "/mnt/sdcard/record.amr"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4036
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4038
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4042
    :cond_0
    sput-object p0, Lcom/ts/main/common/MainUI;->mMainUI:Lcom/ts/main/common/MainUI;

    .line 4047
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "device_provisioned"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v5, v10

    .line 4048
    .local v5, "provisioned":Z
    :goto_0
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "user_setup_complete"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    move v6, v10

    .line 4050
    .local v6, "setupComplete":Z
    :goto_1
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 4053
    :cond_1
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "device_provisioned"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4054
    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "user_setup_complete"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4057
    :cond_2
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/ts/backcar/BackcarService;->InintCamera(Landroid/content/Context;)V

    .line 4058
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/ts/main/common/MainUI;->audioManager:Landroid/media/AudioManager;

    .line 4059
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/ts/MainUI/MainTask;->SetTaskCallBack(Lcom/ts/MainUI/TaskCallBack;)V

    .line 4060
    const-string v9, "storage"

    invoke-virtual {p0, v9}, Lcom/ts/main/common/MainUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 4061
    .local v4, "mStorageManager":Landroid/os/storage/StorageManager;
    iget-object v9, p0, Lcom/ts/main/common/MainUI;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4063
    const-string v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 4064
    .local v3, "mMountService":Landroid/os/storage/IMountService;
    const-string v9, "MainUI"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "######## onCreate = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v13, Lcom/ts/MainUI/Evc;->mSystemState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " !"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    invoke-static {v10}, Lcom/ts/main/MiraVision/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 4078
    new-instance v1, Landroid/content/IntentFilter;

    const-string v9, "net.easyconn.bt.checkstatus"

    invoke-direct {v1, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4080
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v9, "net.easyconn.a2dp.acquire"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4081
    const-string v9, "net.easyconn.a2dp.release"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4082
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4083
    const-string v9, "com.globalconstant.BROADCAST_SEND_CMD"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4084
    const-string v9, "com.globalconstant.BROADCAST_SEND_VOLUME"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4085
    const-string v9, "forfan.intent.action.ACCELERATION"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4086
    const-string v9, "forfan.intent.action.MUTE"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4087
    const-string v9, "forfan.intent.action.VOLUME"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4088
    const-string v9, "forfan.intent.action.BRIGHTNESS"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4089
    const-string v9, "forfan.intent.action.BLUETOOTH"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4090
    const-string v9, "forfan.intent.action.VOLUMEUP"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4091
    const-string v9, "forfan.intent.action.VOLUMEDN"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4092
    const-string v9, "forfan.intent.action.SCREENOFF"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4093
    const-string v9, "forfan.intent.action.MODE"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4094
    const-string v9, "com.globalconstant.BROADCAST_register_status"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4095
    const-string v9, "com.ts.media.listupdate"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4096
    const-string v9, "txz_get_weather_data"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4097
    const-string v9, "com.glsx.ddbox.action.VOICE"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

#START receive Brigthness API broadcast
	const-string v6, "forfan.intent.action.BRIGHT_LEVEL_DAY"
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

const-string v6, "forfan.intent.action.BRIGHT_LEVEL_NIGHT"
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
#END  receive Brigthness API broadcast
    .line 4099
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 4100
    new-instance v9, Lcom/ts/main/common/MainUI$easyConnectRecevie;

    invoke-direct {v9, p0}, Lcom/ts/main/common/MainUI$easyConnectRecevie;-><init>(Lcom/ts/main/common/MainUI;)V

    iput-object v9, p0, Lcom/ts/main/common/MainUI;->mEasyConnextReceiver:Lcom/ts/main/common/MainUI$easyConnectRecevie;

    .line 4101
    iget-object v9, p0, Lcom/ts/main/common/MainUI;->mEasyConnextReceiver:Lcom/ts/main/common/MainUI$easyConnectRecevie;

    invoke-virtual {p0, v9, v1}, Lcom/ts/main/common/MainUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4103
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4104
    .local v2, "intentService":Landroid/content/Intent;
    const-string v9, "com.ts.MainUI.NaviBarService"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4105
    invoke-virtual {p0, v2}, Lcom/ts/main/common/MainUI;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4107
    new-instance v7, Landroid/media/SoundPool;

    invoke-direct {v7, v14, v14, v11}, Landroid/media/SoundPool;-><init>(III)V

    .line 4108
    .local v7, "soundPool":Landroid/media/SoundPool;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4109
    .local v8, "soundPoolMap":Ljava/util/HashMap;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v11, Lcom/ts/MainUI/R$raw;->ring:I

    invoke-virtual {v7, p0, v11, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4110
    new-instance v9, Lcom/ts/main/common/MainUI$5;

    invoke-direct {v9, p0}, Lcom/ts/main/common/MainUI$5;-><init>(Lcom/ts/main/common/MainUI;)V

    invoke-virtual {v7, v9}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 4121
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4123
    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "intentService":Landroid/content/Intent;
    .end local v3    # "mMountService":Landroid/os/storage/IMountService;
    .end local v4    # "mStorageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "provisioned":Z
    .end local v6    # "setupComplete":Z
    .end local v7    # "soundPool":Landroid/media/SoundPool;
    .end local v8    # "soundPoolMap":Ljava/util/HashMap;
    :cond_3
    move v5, v11

    .line 4047
    goto/16 :goto_0

    .restart local v5    # "provisioned":Z
    :cond_4
    move v6, v11

    .line 4048
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 3952
    const-string v0, "MainUI"

    const-string v1, "######## Service Destroy !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3954
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4136
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 4137
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 4128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
