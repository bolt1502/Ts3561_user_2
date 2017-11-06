.class public Lcom/ts/bt/BtExe;
.super Ljava/lang/Object;
.source "BtExe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/bt/BtExe$PbItem;,
        Lcom/ts/bt/BtExe$SearchItem;,
        Lcom/ts/bt/BtExe$SharedPreferencesCommitor;
    }
.end annotation


# static fields
.field public static final ACTION_BLUETOOTH_CALL_LOG:Ljava/lang/String; = "com.autochips.bluetooth.BtUtils.action.ACTION_BLUETOOTH_CALL_LOG"

.field public static final AUTO_ANSWER_CHK_TIME:I = 0x1388

.field public static final BthPbStaDel:I = 0x3

.field public static final BthPbStaIdle:I = 0x0

.field public static final BthPbStaReadOK:I = 0x2

.field public static final BthPbStaReading:I = 0x1

.field public static final BthStaCallActive:I = 0x4

.field public static final BthStaCallIn:I = 0x3

.field public static final BthStaCallOut:I = 0x2

.field public static final BthStaConnected:I = 0x1

.field public static final BthStaOffLine:I = 0x0

.field private static final CONTACT_SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field private static final CONTACT_SELECT_BY_NUMBER:Ljava/lang/String; = "data1=?"

.field private static D:Z = false

.field private static final DEFAULT_DISCOVERABLE_TIMEOUT:I = -0x1

.field public static final EXTRA_CALL_NAME:Ljava/lang/String; = "com.autochips.bluetooth.BtUtils.extra.EXTRA_CALL_NAME"

.field public static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "com.autochips.bluetooth.BtUtils.extra.EXTRA_CALL_NUMBER"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "com.autochips.bluetooth.BtUtils.extra.EXTRA_CALL_TYPE"

.field public static final LOG_MAX:I = 0x1f4

.field public static final MSG_ADD_CALL_LOG:I = 0x54

.field public static final MSG_ADD_CONTACT:I = 0x47

.field public static final MSG_ADD_HISTORY:I = 0x5b

.field public static final MSG_ADD_HISTORYLIST:I = 0x51

.field public static final MSG_ADD_PBLIST:I = 0x3d

.field public static final MSG_BOND_STATE_CHANGED:I = 0xe

.field public static final MSG_BT_STATE_CHANGED:I = 0xa

.field public static final MSG_CLEAR_HISTORYLIST:I = 0x53

.field public static final MSG_CLEAR_PBLIST:I = 0x3e

.field public static final MSG_CONNECT_STATE_CHANGED:I = 0xf

.field public static final MSG_DEVICE_ACL_DISCONNECTED:I = 0x12

.field public static final MSG_DEVICE_ADD:I = 0xc

.field public static final MSG_DEVICE_ATTR_CHANGED:I = 0x10

.field public static final MSG_DEVICE_DELETE:I = 0xd

.field public static final MSG_FLUSH_FILTER_LIST:I = 0x52

.field public static final MSG_LOAD_CONTACT:I = 0x46

.field public static final MSG_LOAD_HISTORY:I = 0x5a

.field public static final MSG_META_DATA_CHANGED:I = 0x1f

.field public static final MSG_PLAY_STATE_CHANGED:I = 0x1e

.field public static final MSG_PROFILE_STATE_CHANGED:I = 0x11

.field public static final MSG_SCAN_STATE_CHANGED:I = 0xb

.field public static final MSG_SERVICE_ATTACH:I = 0x0

.field public static final MSG_SERVICE_DETACH:I = 0x1

.field public static final MSG_UPDATE_HISTORYLIST:I = 0x50

.field public static final MSG_UPDATE_PBLIST:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "BtExe"

.field public static final UNKOWN_PHONE_NUMBER:Ljava/lang/String; = "unkown"

.field private static VER_ID:Ljava/lang/String; = null

.field private static final VER_STR:Ljava/lang/String; = "BT.17.04.21.0822"

.field public static db:Landroid/database/sqlite/SQLiteDatabase;

.field public static dbHelper:Lcom/ts/bt/BtDatabaseHelper;

.field public static isAutoAnswer:Z

.field public static isDownLoading:Z

.field public static isFirstCallLog:Z

.field private static isWrcConnected:Z

.field private static lastClickTime:J

.field private static mA2dpSinkProfile:Lcom/autochips/bluetooth/A2dpSinkProfile;

.field public static mA2dpsinkstate:I

.field public static mActiveSecond:J

.field public static mActiveTick:J

.field public static mAudioManager:Landroid/media/AudioManager;

.field private static mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

.field public static mAvrcpctstate:I

.field public static mBtIsEnabled:Z

.field public static mCallPath:I

.field public static mCallSta:I

.field public static mCallTime:Landroid/text/format/Time;

.field static mContext:Landroid/content/Context;

.field public static mCount:J

.field public static mDeviceLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

.field public static mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

.field private static mHandlerLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static mHeadsetClientProfile:Lcom/autochips/bluetooth/HeadsetClientProfile;

.field public static mHfConnectedDeviceAddr:Ljava/lang/String;

.field public static mIndex:I

.field public static mInstance:Lcom/ts/bt/BtExe;

.field private static mIsAutoConnect:Z

.field public static mIsId3Update:Z

.field public static final mLanguages:[Ljava/lang/String;

.field private static mLastAccOnTick:J

.field public static mLastCallSta:I

.field private static mLastConnectTick:J

.field public static mLastDevice:Landroid/bluetooth/BluetoothDevice;

.field public static mLastDeviceAddr:Ljava/lang/String;

.field public static mLastOBDAddr:Ljava/lang/String;

.field public static mLastPhoneNo:Ljava/lang/String;

.field public static mListPb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$PbItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mListSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

.field public static mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

.field public static mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

.field public static mNum:J

.field private static mOldMcuSta:I

.field private static mPBManager:Lcom/autochips/bluetooth/BluetoothPBManager;

.field public static mPbStartTick:J

.field public static mPbStatus:I

.field public static mPhoneName:Ljava/lang/String;

.field public static mPin:Ljava/lang/String;

.field private static mProfileCallback:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ProfileCallback;

.field public static mQueryNoCount:J

.field public static mQueryNoLastTick:J

.field private static final mServiceListener:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;

.field private static mStrCallName:Ljava/lang/String;

.field public static mStrId3Album:Ljava/lang/String;

.field public static mStrId3Artist:Ljava/lang/String;

.field public static mStrId3Name:Ljava/lang/String;

.field private static mStrOldCallNo:Ljava/lang/String;

.field public static mStrPhoneNo:Ljava/lang/String;

.field public static mSyncNum:I

.field private static mToast:Landroid/widget/Toast;

.field public static mbAbNomarl:Z

.field private static mbConnectUI:Z

.field public static mbConnecting:Z

.field public static mbFirstConnect:Z

.field private static mbFsInit:Z

.field public static mbHfConnected:Z

.field public static mbMicmute:Z

.field private static mbModuleInit:Z

.field private static mbNeedAutoConnect:Z

.field public static mbNeedPWROn:Z

.field public static mbNeedSaveData:Z

.field private static mbNeedSetName:Z

.field public static mbNeedUpdatePhoneName:Z

.field static mbtCallback:Lcom/autochips/bluetooth/BluetoothCallback;

.field public static musicState:B


# instance fields
.field private mAutoAnswerStart:J

.field private mChkAutoAnswer:Z

.field protected mCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurName:Ljava/lang/String;

.field private mEvc:Lcom/ts/MainUI/Evc;

.field private mIsAutoAnswer:Z

.field public mPBCallback:Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->VER_ID:Ljava/lang/String;

    .line 64
    sput-boolean v2, Lcom/ts/bt/BtExe;->D:Z

    .line 67
    const-string v0, "0000"

    sput-object v0, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    .line 71
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbFsInit:Z

    .line 72
    sput-boolean v2, Lcom/ts/bt/BtExe;->mbNeedSetName:Z

    .line 73
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbConnectUI:Z

    .line 74
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbNeedUpdatePhoneName:Z

    .line 76
    sput-object v1, Lcom/ts/bt/BtExe;->mInstance:Lcom/ts/bt/BtExe;

    .line 99
    sput v3, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    .line 100
    sput v3, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    .line 102
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    .line 103
    sput-object v1, Lcom/ts/bt/BtExe;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 104
    sput-object v1, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    .line 105
    sput-object v1, Lcom/ts/bt/BtExe;->mPhoneName:Ljava/lang/String;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    .line 111
    sput-boolean v3, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    .line 112
    sput v6, Lcom/ts/bt/BtExe;->mOldMcuSta:I

    .line 113
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    .line 114
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mStrOldCallNo:Ljava/lang/String;

    .line 115
    sput-boolean v2, Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z

    .line 116
    const-wide/32 v0, -0xe678

    sput-wide v0, Lcom/ts/bt/BtExe;->mLastConnectTick:J

    .line 117
    sput-wide v4, Lcom/ts/bt/BtExe;->mLastAccOnTick:J

    .line 118
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mHfConnectedDeviceAddr:Ljava/lang/String;

    .line 119
    sput-boolean v2, Lcom/ts/bt/BtExe;->mbFirstConnect:Z

    .line 120
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbNeedSaveData:Z

    .line 124
    const-string v0, "unkown"

    sput-object v0, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 126
    sput-wide v4, Lcom/ts/bt/BtExe;->mQueryNoCount:J

    .line 127
    sput-wide v4, Lcom/ts/bt/BtExe;->mActiveSecond:J

    .line 128
    sput-wide v4, Lcom/ts/bt/BtExe;->mActiveTick:J

    .line 130
    sput-boolean v3, Lcom/ts/bt/BtExe;->mBtIsEnabled:Z

    .line 131
    sput-wide v4, Lcom/ts/bt/BtExe;->mCount:J

    .line 132
    sput-wide v4, Lcom/ts/bt/BtExe;->mNum:J

    .line 134
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    .line 135
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    .line 137
    sput-boolean v3, Lcom/ts/bt/BtExe;->mIsId3Update:Z

    .line 138
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtExe;->mLastPhoneNo:Ljava/lang/String;

    .line 139
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbAbNomarl:Z

    .line 140
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbNeedPWROn:Z

    .line 142
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbModuleInit:Z

    .line 144
    sput-boolean v3, Lcom/ts/bt/BtExe;->mbConnecting:Z

    .line 145
    sput-boolean v3, Lcom/ts/bt/BtExe;->isAutoAnswer:Z

    .line 146
    sput-boolean v3, Lcom/ts/bt/BtExe;->isFirstCallLog:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mHandlerLists:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    .line 192
    sput v3, Lcom/ts/bt/BtExe;->mCallPath:I

    .line 193
    sput v3, Lcom/ts/bt/BtExe;->mCallSta:I

    .line 194
    sput v3, Lcom/ts/bt/BtExe;->mLastCallSta:I

    .line 195
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zh"

    aput-object v1, v0, v3

    const-string v1, "ko"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "mn"

    aput-object v2, v0, v1

    .line 196
    const-string v1, "ja"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hu"

    aput-object v2, v0, v1

    .line 195
    sput-object v0, Lcom/ts/bt/BtExe;->mLanguages:[Ljava/lang/String;

    .line 208
    sput-byte v3, Lcom/ts/bt/BtExe;->musicState:B

    .line 226
    sput-boolean v3, Lcom/ts/bt/BtExe;->isWrcConnected:Z

    .line 242
    sput v3, Lcom/ts/bt/BtExe;->mIndex:I

    .line 243
    sput-boolean v3, Lcom/ts/bt/BtExe;->isDownLoading:Z

    .line 244
    sput v3, Lcom/ts/bt/BtExe;->mPbStatus:I

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    .line 248
    sput v3, Lcom/ts/bt/BtExe;->mSyncNum:I

    .line 568
    new-instance v0, Lcom/ts/bt/BtExe$1;

    invoke-direct {v0}, Lcom/ts/bt/BtExe$1;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mServiceListener:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 606
    new-instance v0, Lcom/ts/bt/BtExe$2;

    invoke-direct {v0}, Lcom/ts/bt/BtExe$2;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mProfileCallback:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ProfileCallback;

    .line 638
    new-instance v0, Lcom/ts/bt/BtExe$3;

    invoke-direct {v0}, Lcom/ts/bt/BtExe$3;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mbtCallback:Lcom/autochips/bluetooth/BluetoothCallback;

    .line 673
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    .line 109
    iput-boolean v1, p0, Lcom/ts/bt/BtExe;->mChkAutoAnswer:Z

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/bt/BtExe;->mAutoAnswerStart:J

    .line 210
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtExe;->mEvc:Lcom/ts/MainUI/Evc;

    .line 2553
    new-instance v0, Lcom/ts/bt/BtExe$4;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtExe$4;-><init>(Lcom/ts/bt/BtExe;)V

    iput-object v0, p0, Lcom/ts/bt/BtExe;->mPBCallback:Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;

    .line 258
    sget-boolean v0, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "BtExe"

    const-string v1, "BtUtils "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    return-void
.end method

.method public static PbSearch(Ljava/lang/String;)V
    .locals 7
    .param p0, "strKey"    # Ljava/lang/String;

    .prologue
    .line 2458
    const-string v4, "BtExe"

    const-string v5, "PbSearch begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    sget-object v4, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2460
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2461
    sget-object v4, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2492
    :cond_0
    :goto_0
    return-void

    .line 2465
    :cond_1
    invoke-static {p0}, Lcom/lgb/pymatch/PyMatch;->SetSubstr(Ljava/lang/String;)V

    .line 2466
    const/4 v2, 0x0

    .line 2467
    .local v2, "pi":Lcom/ts/bt/BtExe$PbItem;
    const/4 v1, 0x0

    .line 2468
    .local v1, "matchPos":I
    const/4 v3, 0x0

    .line 2469
    .local v3, "si":Lcom/ts/bt/BtExe$SearchItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 2480
    const-string v4, "BtExe"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PbSearch list = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    sget-object v4, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2482
    sget-object v4, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    new-instance v5, Lcom/ts/bt/BtExe$6;

    invoke-direct {v5}, Lcom/ts/bt/BtExe$6;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 2470
    :cond_2
    sget-object v4, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pi":Lcom/ts/bt/BtExe$PbItem;
    check-cast v2, Lcom/ts/bt/BtExe$PbItem;

    .line 2471
    .restart local v2    # "pi":Lcom/ts/bt/BtExe$PbItem;
    iget-object v4, v2, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/lgb/pymatch/PyMatch;->GetMatchVal(Ljava/lang/String;)I

    move-result v1

    .line 2472
    const/4 v4, -0x1

    if-eq v4, v1, :cond_3

    .line 2473
    new-instance v3, Lcom/ts/bt/BtExe$SearchItem;

    .end local v3    # "si":Lcom/ts/bt/BtExe$SearchItem;
    invoke-direct {v3}, Lcom/ts/bt/BtExe$SearchItem;-><init>()V

    .line 2474
    .restart local v3    # "si":Lcom/ts/bt/BtExe$SearchItem;
    iput-object v2, v3, Lcom/ts/bt/BtExe$SearchItem;->pb:Lcom/ts/bt/BtExe$PbItem;

    .line 2475
    iput v1, v3, Lcom/ts/bt/BtExe$SearchItem;->MatchPos:I

    .line 2476
    sget-object v4, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/ts/bt/BtExe;->D:Z

    return v0
.end method

.method static synthetic access$1(Lcom/autochips/bluetooth/HeadsetClientProfile;)V
    .locals 0

    .prologue
    .line 219
    sput-object p0, Lcom/ts/bt/BtExe;->mHeadsetClientProfile:Lcom/autochips/bluetooth/HeadsetClientProfile;

    return-void
.end method

.method static synthetic access$2(Lcom/autochips/bluetooth/A2dpSinkProfile;)V
    .locals 0

    .prologue
    .line 220
    sput-object p0, Lcom/ts/bt/BtExe;->mA2dpSinkProfile:Lcom/autochips/bluetooth/A2dpSinkProfile;

    return-void
.end method

.method static synthetic access$3(Lcom/autochips/bluetooth/AvrcpControllerProfile;)V
    .locals 0

    .prologue
    .line 221
    sput-object p0, Lcom/ts/bt/BtExe;->mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

    return-void
.end method

.method static synthetic access$4(Lcom/autochips/bluetooth/BluetoothPBManager;)V
    .locals 0

    .prologue
    .line 222
    sput-object p0, Lcom/ts/bt/BtExe;->mPBManager:Lcom/autochips/bluetooth/BluetoothPBManager;

    return-void
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    return v0
.end method

.method static synthetic access$6()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z

    return v0
.end method

.method public static declared-synchronized addHandler(Landroid/os/Handler;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 553
    const-class v1, Lcom/ts/bt/BtExe;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "BtExe"

    const-string v2, "addHandler "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mHandlerLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    sget-object v0, Lcom/ts/bt/BtExe;->mHandlerLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_1
    monitor-exit v1

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkIfAbnormal()Z
    .locals 3

    .prologue
    .line 2342
    sget-object v1, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2343
    const/4 v0, 0x0

    .line 2344
    .local v0, "IsHfConnected":Z
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->bluetoothIsConnected()Z

    move-result v0

    .line 2345
    sget-boolean v1, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    if-eq v0, v1, :cond_0

    .line 2346
    const-string v1, "BtExe"

    const-string v2, "checkIfAbnormal IsHfConnected != mbHfConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    const/4 v1, 0x1

    .line 2351
    .end local v0    # "IsHfConnected":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkNeedPWROn()V
    .locals 2

    .prologue
    .line 1770
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbNeedPWROn:Z

    if-eqz v0, :cond_0

    .line 1771
    const-string v0, "BtExe"

    const-string v1, "checkNeedPWROn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->powerOn()V

    .line 1773
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtExe;->mbNeedPWROn:Z

    .line 1775
    :cond_0
    return-void
.end method

.method public static close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    sget-object v0, Lcom/ts/bt/BtExe;->mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/ts/bt/BtExe;->mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

    sget-object v1, Lcom/ts/bt/BtExe;->mbtCallback:Lcom/autochips/bluetooth/BluetoothCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/autochips/bluetooth/BluetoothCallback;)V

    .line 271
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mPBManager:Lcom/autochips/bluetooth/BluetoothPBManager;

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/ts/bt/BtExe;->mPBManager:Lcom/autochips/bluetooth/BluetoothPBManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BluetoothPBManager;->close()V

    .line 273
    sput-object v2, Lcom/ts/bt/BtExe;->mPBManager:Lcom/autochips/bluetooth/BluetoothPBManager;

    .line 275
    :cond_1
    invoke-static {}, Lcom/ts/bt/BtExe;->deinitLocalBluetooth()V

    .line 276
    sput-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 277
    sput-object v2, Lcom/ts/bt/BtExe;->mInstance:Lcom/ts/bt/BtExe;

    .line 278
    return-void
.end method

.method public static declared-synchronized deinitLocalBluetooth()V
    .locals 4

    .prologue
    .line 426
    const-class v1, Lcom/ts/bt/BtExe;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :try_start_1
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    sget-object v3, Lcom/ts/bt/BtExe;->mServiceListener:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 429
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    sget-object v3, Lcom/ts/bt/BtExe;->mProfileCallback:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ProfileCallback;

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->removeProfileCallback(Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ProfileCallback;)V

    .line 432
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    .line 433
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtExe;->mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

    .line 434
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtExe;->mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    .line 435
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    .line 436
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtExe;->mA2dpSinkProfile:Lcom/autochips/bluetooth/A2dpSinkProfile;

    .line 437
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtExe;->mHeadsetClientProfile:Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 426
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    monitor-exit v1

    return-void

    .line 426
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dispatchMessage(ILjava/lang/Object;II)V
    .locals 5
    .param p0, "what"    # I
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 616
    sget-boolean v2, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v2, :cond_0

    .line 617
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dispatchMessage("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "arg1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 618
    const-string v4, "arg2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    sget-object v2, Lcom/ts/bt/BtExe;->mHandlerLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 636
    return-void

    .line 619
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 620
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 622
    .local v1, "msg":Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 623
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 624
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 625
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 626
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 817
    sget-object v1, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    const-string v1, "BtExe"

    const-string v2, "getAddr mDeviceLists == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, 0x0

    .line 822
    .local v0, "remoteAddr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 821
    .end local v0    # "remoteAddr":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 822
    .restart local v0    # "remoteAddr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBtInstance()Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/ts/bt/BtExe;->mInstance:Lcom/ts/bt/BtExe;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/ts/bt/BtExe;

    invoke-direct {v0}, Lcom/ts/bt/BtExe;-><init>()V

    sput-object v0, Lcom/ts/bt/BtExe;->mInstance:Lcom/ts/bt/BtExe;

    .line 254
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mInstance:Lcom/ts/bt/BtExe;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/ts/bt/BtExe;->mPBManager:Lcom/autochips/bluetooth/BluetoothPBManager;

    return-object v0
.end method

.method public static getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p0, "profile"    # I

    .prologue
    .line 377
    packed-switch p0, :pswitch_data_0

    .line 398
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 379
    :pswitch_1
    sget-object v0, Lcom/ts/bt/BtExe;->mHeadsetClientProfile:Lcom/autochips/bluetooth/HeadsetClientProfile;

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/ts/bt/BtExe;->mHeadsetClientProfile:Lcom/autochips/bluetooth/HeadsetClientProfile;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/HeadsetClientProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/ts/bt/BtExe;->mHeadsetClientProfile:Lcom/autochips/bluetooth/HeadsetClientProfile;

    goto :goto_0

    .line 386
    :pswitch_2
    sget-object v0, Lcom/ts/bt/BtExe;->mA2dpSinkProfile:Lcom/autochips/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ts/bt/BtExe;->mA2dpSinkProfile:Lcom/autochips/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Lcom/ts/bt/BtExe;->mA2dpSinkProfile:Lcom/autochips/bluetooth/A2dpSinkProfile;

    goto :goto_0

    .line 392
    :pswitch_3
    sget-object v0, Lcom/ts/bt/BtExe;->mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ts/bt/BtExe;->mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/ts/bt/BtExe;->mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTickCount()J
    .locals 2

    .prologue
    .line 2170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static handleBtConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    packed-switch p1, :pswitch_data_0

    .line 533
    :goto_0
    :pswitch_0
    return-void

    .line 492
    :pswitch_1
    const-string v2, "BtExe"

    const-string v3, "BluetoothProfile.STATE_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sput-boolean v5, Lcom/ts/bt/BtExe;->mbNeedUpdatePhoneName:Z

    .line 494
    sput-boolean v5, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    .line 495
    sput v5, Lcom/ts/bt/BtExe;->mCallSta:I

    .line 496
    sput-boolean v5, Lcom/ts/bt/BtExe;->mbNeedSaveData:Z

    .line 498
    sget-object v3, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    monitor-enter v3

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 505
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->saveLastAddr()V

    .line 510
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->UpdateHfpSta()V

    .line 511
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->updatePbList()V

    .line 512
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->UpdatePbMap()V

    .line 513
    const/4 v2, 0x2

    sput v2, Lcom/ts/bt/BtExe;->mPbStatus:I

    goto :goto_0

    .line 500
    :cond_1
    :try_start_1
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 501
    .local v0, "btdevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "btdevice":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 517
    .end local v1    # "i":I
    :pswitch_2
    const-string v2, "BtExe"

    const-string v3, "BluetoothProfile.STATE_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbNeedSaveData:Z

    .line 519
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbNeedUpdatePhoneName:Z

    .line 520
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    .line 521
    sput v4, Lcom/ts/bt/BtExe;->mCallSta:I

    .line 522
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->pbClear()V

    .line 523
    sget-object v3, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    monitor-enter v3

    .line 524
    :try_start_2
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 523
    :cond_3
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static handleBtStateChanged(I)V
    .locals 3
    .param p0, "btState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 461
    packed-switch p0, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 463
    :pswitch_1
    invoke-static {}, Lcom/ts/bt/BtExe;->isBluetoothReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->initLocalBluetooth(Landroid/content/Context;)V

    .line 465
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/bt/BtExe;->setBluetoothDiscoverability(Z)V

    .line 466
    const-string v0, "BtExe"

    const-string v1, "Bluetooth open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :pswitch_2
    invoke-static {}, Lcom/ts/bt/BtExe;->isBluetoothReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-static {}, Lcom/ts/bt/BtExe;->deinitLocalBluetooth()V

    .line 474
    :cond_1
    sput-boolean v1, Lcom/ts/bt/BtExe;->mbModuleInit:Z

    .line 475
    sput-boolean v1, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    .line 477
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbAbNomarl:Z

    if-eqz v0, :cond_0

    .line 478
    sput-boolean v2, Lcom/ts/bt/BtExe;->mbNeedPWROn:Z

    .line 479
    sput-boolean v1, Lcom/ts/bt/BtExe;->mbAbNomarl:Z

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static handleDeviceSelected(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "isSelected"    # Z

    .prologue
    .line 537
    if-eqz p1, :cond_1

    .line 538
    sget-object v1, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    monitor-enter v1

    .line 539
    :try_start_0
    sget-object v0, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_0
    monitor-exit v1

    .line 550
    :goto_0
    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 544
    :cond_1
    sget-object v1, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    monitor-enter v1

    .line 545
    :try_start_1
    sget-object v0, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    sget-object v0, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 544
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static declared-synchronized initLocalBluetooth(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    const-class v1, Lcom/ts/bt/BtExe;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 409
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :goto_0
    monitor-exit v1

    return-void

    .line 411
    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    .line 412
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/autochips/bluetooth/BluetoothEventManager;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

    .line 414
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    .line 415
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    .line 418
    :cond_1
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_2

    .line 419
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    sget-object v3, Lcom/ts/bt/BtExe;->mServiceListener:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 420
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    sget-object v3, Lcom/ts/bt/BtExe;->mProfileCallback:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ProfileCallback;

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->addProfileCallback(Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ProfileCallback;)V

    .line 407
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isBluetoothReady()Z
    .locals 2

    .prologue
    .line 442
    const-class v1, Lcom/ts/bt/BtExe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalBtManager:Lcom/autochips/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDialFastDoubleClick()Z
    .locals 6

    .prologue
    .line 2388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2389
    .local v0, "time":J
    sget-wide v4, Lcom/ts/bt/BtExe;->lastClickTime:J

    sub-long v2, v0, v4

    .line 2390
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 2391
    const/4 v4, 0x1

    .line 2394
    :goto_0
    return v4

    .line 2393
    :cond_0
    sput-wide v0, Lcom/ts/bt/BtExe;->lastClickTime:J

    .line 2394
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 2378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2379
    .local v0, "time":J
    sget-wide v4, Lcom/ts/bt/BtExe;->lastClickTime:J

    sub-long v2, v0, v4

    .line 2380
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x4b0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 2381
    const/4 v4, 0x1

    .line 2384
    :goto_0
    return v4

    .line 2383
    :cond_0
    sput-wide v0, Lcom/ts/bt/BtExe;->lastClickTime:J

    .line 2384
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readAutoAnswerData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1517
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1518
    const-string v2, "bt.setting.autoanswer"

    .line 1517
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1519
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "IS_BT_AUTO_ANSWER"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    .line 1520
    return-void
.end method

.method private readAutoConnectData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1497
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1498
    const-string v2, "bt.setting.autoconnect"

    .line 1497
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1499
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "IS_BT_AUTO_CONNECT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    .line 1500
    return-void
.end method

.method public static declared-synchronized removeHandler(Landroid/os/Handler;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 561
    const-class v1, Lcom/ts/bt/BtExe;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "BtExe"

    const-string v2, "removeHandler "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mHandlerLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    sget-object v0, Lcom/ts/bt/BtExe;->mHandlerLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_1
    monitor-exit v1

    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1571
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1574
    :cond_0
    sput-object p0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static showToast(I)V
    .locals 3
    .param p0, "resid"    # I

    .prologue
    .line 676
    sget-object v0, Lcom/ts/bt/BtExe;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 677
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mToast:Landroid/widget/Toast;

    .line 679
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 680
    sget-object v0, Lcom/ts/bt/BtExe;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 681
    return-void
.end method

.method private writeAutoAnswerData(Z)V
    .locals 4
    .param p1, "isAutoAnswer"    # Z

    .prologue
    .line 1503
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1504
    const-string v2, "bt.setting.autoanswer"

    const/4 v3, 0x0

    .line 1503
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1504
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1505
    .local v0, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IS_BT_AUTO_ANSWER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1510
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1514
    return-void
.end method

.method private writeAutoConnectData(Z)V
    .locals 4
    .param p1, "isAutoConnect"    # Z

    .prologue
    .line 1487
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1488
    const-string v2, "bt.setting.autoconnect"

    const/4 v3, 0x0

    .line 1487
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1488
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1489
    .local v0, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IS_BT_AUTO_CONNECT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1494
    return-void
.end method

.method private writeDeviceNamePin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "devicename"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1125
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1126
    const-string v2, "device_name_pin_data"

    const/4 v3, 0x0

    .line 1125
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1126
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1127
    .local v0, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DEVICENAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1128
    const-string v1, "PIN"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1130
    return-void
.end method


# virtual methods
.method public CheckSetDevName()V
    .locals 3

    .prologue
    .line 307
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbFsInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ts/bt/BtExe;->mbNeedSetName:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/ts/bt/BtExe;->mbFsInit:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+mbFsInit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/ts/bt/BtExe;->mbModuleInit:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+mbModuleInit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/ts/bt/BtExe;->mbNeedSetName:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+mbNeedSetName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->fsSetDevName()V

    .line 312
    iget-object v0, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckName+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckName+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    sget-object v1, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtExe;->mbNeedSetName:Z

    .line 320
    :cond_0
    return-void
.end method

.method public DateToStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1457
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v0, "format":Landroid/icu/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1459
    .local v1, "str":Ljava/lang/String;
    return-object v1
.end method

.method public GetCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1683
    sget-object v0, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    return-object v0
.end method

.method public GetOBDAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1303
    sget-object v0, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    :cond_0
    const-string v0, ""

    .line 1306
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method public GetPbMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2014
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2015
    .local v2, "pbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2016
    const/4 v1, 0x0

    .line 2017
    .local v1, "item":Lcom/ts/bt/BtExe$PbItem;
    const-string v3, "BtExe"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "*****GetPbMap***** size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 2027
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/ts/bt/BtExe$PbItem;
    :cond_0
    return-object v2

    .line 2019
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/ts/bt/BtExe$PbItem;
    :cond_1
    sget-object v3, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/ts/bt/BtExe$PbItem;
    check-cast v1, Lcom/ts/bt/BtExe$PbItem;

    .line 2020
    .restart local v1    # "item":Lcom/ts/bt/BtExe$PbItem;
    iget-object v3, v1, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2021
    iget-object v3, v1, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2022
    iget-object v3, v1, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    iget-object v4, v1, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Init()V
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    .line 281
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    .line 282
    sget-object v0, Lcom/ts/bt/BtExe;->mInstance:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->initData()V

    .line 283
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbFsInit:Z

    .line 284
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbModuleInit:Z

    .line 285
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtExe;->mBtIsEnabled:Z

    .line 286
    sput-wide v1, Lcom/ts/bt/BtExe;->mCount:J

    .line 287
    sput-wide v1, Lcom/ts/bt/BtExe;->mNum:J

    .line 288
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->initLocalBluetooth(Landroid/content/Context;)V

    .line 289
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 290
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, v4}, Lcom/ts/bt/BtExe;->setBluetoothDiscoverability(Z)V

    .line 292
    const-string v0, "BtExe"

    const-string v1, "isEnabled+++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    new-instance v0, Lcom/ts/bt/BtDatabaseHelper;

    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    const-string v2, "BtPhone"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ts/bt/BtDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    .line 295
    sget-object v0, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v0, :cond_1

    .line 296
    sget-object v0, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v0}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 297
    :cond_1
    sget-object v0, Lcom/ts/bt/BtExe;->mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

    if-eqz v0, :cond_2

    .line 298
    sget-object v0, Lcom/ts/bt/BtExe;->mEventManager:Lcom/autochips/bluetooth/BluetoothEventManager;

    sget-object v1, Lcom/ts/bt/BtExe;->mbtCallback:Lcom/autochips/bluetooth/BluetoothCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BluetoothEventManager;->registerCallback(Lcom/autochips/bluetooth/BluetoothCallback;)V

    .line 300
    :cond_2
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 301
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 302
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/ts/bt/BtExe;->mAudioManager:Landroid/media/AudioManager;

    .line 304
    :cond_3
    return-void
.end method

.method public IsNeedUpdatePhoneName()Z
    .locals 1

    .prologue
    .line 2301
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbNeedUpdatePhoneName:Z

    return v0
.end method

.method public PbSort(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$PbItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2435
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/bt/BtExe$PbItem;>;"
    const-string v1, "lh"

    const-string v2, "PbSort"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2437
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2441
    :cond_1
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2442
    .local v0, "curLocal":Ljava/util/Locale;
    const-string v1, "BtExe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lgb CurLocal = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/bt/BtExe;->mCmp:Ljava/util/Comparator;

    .line 2444
    new-instance v1, Lcom/ts/bt/BtExe$5;

    invoke-direct {v1, p0}, Lcom/ts/bt/BtExe$5;-><init>(Lcom/ts/bt/BtExe;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public ResetUpdatePhoneName()V
    .locals 1

    .prologue
    .line 2305
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtExe;->mbNeedUpdatePhoneName:Z

    .line 2306
    return-void
.end method

.method public SaveDatabase()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 2723
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2724
    const-string v1, "phonebook"

    const-string v9, "addr=?"

    new-array v10, v13, [Ljava/lang/String;

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v1, v9, v10}, Lcom/ts/bt/BtExe;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2725
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2727
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/autochips/bluetooth/BluetoothContactsData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x7

    new-array v2, v9, [Ljava/lang/String;

    .line 2728
    const-string v9, "display_name"

    aput-object v9, v2, v12

    .line 2729
    const-string v9, "mime_type"

    aput-object v9, v2, v13

    const/4 v9, 0x2

    .line 2730
    const-string v10, "data1"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    .line 2731
    const-string v10, "data2"

    aput-object v10, v2, v9

    const/4 v9, 0x4

    .line 2732
    const-string v10, "first_name"

    aput-object v10, v2, v9

    const/4 v9, 0x5

    .line 2733
    const-string v10, "middle_name"

    aput-object v10, v2, v9

    const/4 v9, 0x6

    .line 2734
    const-string v10, "given_name"

    aput-object v10, v2, v9

    move-object v4, v3

    move-object v5, v3

    .line 2726
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2735
    .local v8, "dataCursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2739
    :cond_0
    const-string v1, "display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2738
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2741
    .local v2, "name":Ljava/lang/String;
    const-string v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2740
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2742
    .local v3, "num":Ljava/lang/String;
    invoke-static {v2}, Lcom/ts/bt/Cn2Spell;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 2744
    .local v4, "pinyin":Ljava/lang/String;
    const-string v1, "first_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2743
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2746
    .local v5, "first_name":Ljava/lang/String;
    const-string v1, "middle_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2745
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2748
    .local v6, "middle_name":Ljava/lang/String;
    const-string v1, "given_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2747
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "given_name":Ljava/lang/String;
    move-object v1, p0

    .line 2749
    invoke-virtual/range {v1 .. v7}, Lcom/ts/bt/BtExe;->insertPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2753
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "num":Ljava/lang/String;
    .end local v4    # "pinyin":Ljava/lang/String;
    .end local v5    # "first_name":Ljava/lang/String;
    .end local v6    # "middle_name":Ljava/lang/String;
    .end local v7    # "given_name":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2757
    const-string v1, "lh"

    const-string v9, "finished"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "dataCursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public StrToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1469
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v2, "format":Landroid/icu/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 1472
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/icu/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1476
    :goto_0
    return-object v0

    .line 1473
    :catch_0
    move-exception v1

    .line 1474
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public UpdateCallName()V
    .locals 11

    .prologue
    .line 1688
    const-string v8, "BtExe"

    const-string v9, "UpdateCallName"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v8, ""

    sput-object v8, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    .line 1691
    const-string v0, ""

    .line 1692
    .local v0, "first_name":Ljava/lang/String;
    const-string v5, ""

    .line 1693
    .local v5, "middle_name":Ljava/lang/String;
    const-string v1, ""

    .line 1695
    .local v1, "given_name":Ljava/lang/String;
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1700
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    const-string v9, "+86"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1701
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1702
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    const-string v9, "("

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1703
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    const-string v9, ")"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1704
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 1705
    .local v3, "iNoLen":I
    const/4 v4, 0x0

    .line 1707
    .local v4, "iPbLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 1708
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ts/bt/BtExe$PbItem;

    iget-object v8, v8, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1709
    .local v7, "strPbNo":Ljava/lang/String;
    const-string v8, "+86"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1710
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1711
    const-string v8, "("

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1712
    const-string v8, ")"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1716
    sget-object v8, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1717
    const-string v6, ""

    .line 1718
    .local v6, "strPbName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isBtCountry()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1719
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ts/bt/BtExe$PbItem;

    iget-object v6, v8, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    .line 1736
    :goto_2
    const-string v8, "lh"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "num ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const-string v8, "lh"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "name = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    sput-object v6, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1721
    :cond_2
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ts/bt/BtExe$PbItem;

    iget-object v0, v8, Lcom/ts/bt/BtExe$PbItem;->first_name:Ljava/lang/String;

    .line 1722
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ts/bt/BtExe$PbItem;

    iget-object v5, v8, Lcom/ts/bt/BtExe$PbItem;->middle_name:Ljava/lang/String;

    .line 1723
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ts/bt/BtExe$PbItem;

    iget-object v1, v8, Lcom/ts/bt/BtExe$PbItem;->given_name:Ljava/lang/String;

    .line 1724
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1725
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1726
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1730
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1731
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1732
    goto/16 :goto_2

    .line 1728
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1733
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1707
    .end local v6    # "strPbName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public UpdateHfpSta()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 1933
    sget-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 1937
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 1938
    const-string v2, "com.globalconstant.BROADCAST_RESPONSE_HFPSTATUS"

    .line 1937
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateHfpSta  mCallSta== "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/ts/bt/BtExe;->mCallSta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1941
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1940
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateHfpSta  mCallSta== "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/ts/bt/BtExe;->mCallSta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1943
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1942
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    sget v2, Lcom/ts/bt/BtExe;->mCallSta:I

    packed-switch v2, :pswitch_data_0

    .line 1992
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    .line 1997
    :cond_1
    :goto_1
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    const-string v2, "number"

    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateHfpSta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "hfpStatus"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2000
    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1999
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    sget-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1946
    :pswitch_0
    const-string v2, "hfpStatus"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1947
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    goto :goto_1

    .line 1952
    :pswitch_1
    const-string v2, "hfpStatus"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1953
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    goto :goto_1

    .line 1958
    :pswitch_2
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1959
    const-string v2, "hfpStatus"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$Contact;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZCallManager$Contact;-><init>()V

    .line 1964
    .local v0, "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZCallManager$Contact;->setName(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZCallManager$Contact;->setNumber(Ljava/lang/String;)V

    .line 1966
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    goto/16 :goto_1

    .line 1973
    .end local v0    # "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    :pswitch_3
    const-string v2, "hfpStatus"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1976
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$Contact;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZCallManager$Contact;-><init>()V

    .line 1977
    .restart local v0    # "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZCallManager$Contact;->setName(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZCallManager$Contact;->setNumber(Ljava/lang/String;)V

    .line 1979
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v8, v0}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    goto/16 :goto_1

    .line 1983
    .end local v0    # "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    :pswitch_4
    sget v2, Lcom/ts/bt/BtExe;->mLastCallSta:I

    if-ne v2, v8, :cond_2

    .line 1984
    const-string v2, "hfpStatus"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1988
    :goto_2
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    goto/16 :goto_1

    .line 1986
    :cond_2
    const-string v2, "hfpStatus"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 1944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public UpdatePbMap()V
    .locals 11

    .prologue
    .line 2050
    sget-object v8, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 2096
    :goto_0
    return-void

    .line 2054
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ts/bt/ContactInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2058
    .local v6, "lst":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/TXZCallManager$Contact;>;"
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2059
    const/4 v4, 0x0

    .line 2060
    .local v4, "item":Lcom/ts/bt/BtExe$PbItem;
    const-string v8, "BtExe"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "*****GetPbMap***** size = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_2

    .line 2087
    .end local v2    # "i":I
    .end local v4    # "item":Lcom/ts/bt/BtExe$PbItem;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.globalconstant.BROADCAST_CAR_SEND_CMD"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2088
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "domain"

    const-string v9, "phone"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2089
    const-string v8, "action"

    const-string v9, "phoneList"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2090
    const-string v8, "phoneList"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2091
    const-string v8, "BtExe"

    const-string v9, "sendBroadcast UpdatePbMap"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    sget-object v8, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2094
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/ts/main/txz/TxzReg;->SyncBlueToothContacts(Ljava/util/List;)V

    goto :goto_0

    .line 2062
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "i":I
    .restart local v4    # "item":Lcom/ts/bt/BtExe$PbItem;
    :cond_2
    sget-object v8, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lcom/ts/bt/BtExe$PbItem;
    check-cast v4, Lcom/ts/bt/BtExe$PbItem;

    .line 2063
    .restart local v4    # "item":Lcom/ts/bt/BtExe$PbItem;
    if-eqz v4, :cond_3

    .line 2064
    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2065
    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2068
    new-instance v1, Lcom/ts/bt/ContactInfo;

    invoke-direct {v1}, Lcom/ts/bt/ContactInfo;-><init>()V

    .line 2069
    .local v1, "contactInfo":Lcom/ts/bt/ContactInfo;
    new-instance v7, Lcom/ts/bt/ContactInfo$PhoneInfo;

    invoke-direct {v7}, Lcom/ts/bt/ContactInfo$PhoneInfo;-><init>()V

    .line 2072
    .local v7, "phoneInfo":Lcom/ts/bt/ContactInfo$PhoneInfo;
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$Contact;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZCallManager$Contact;-><init>()V

    .line 2074
    .local v0, "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/ts/bt/ContactInfo;->setName(Ljava/lang/String;)V

    .line 2075
    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ts/bt/ContactInfo$PhoneInfo;->setNumber(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v1, v7}, Lcom/ts/bt/ContactInfo;->addPhoneInfo(Lcom/ts/bt/ContactInfo$PhoneInfo;)V

    .line 2077
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/txznet/sdk/TXZCallManager$Contact;->setName(Ljava/lang/String;)V

    .line 2080
    iget-object v8, v4, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/txznet/sdk/TXZCallManager$Contact;->setNumber(Ljava/lang/String;)V

    .line 2081
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    .end local v0    # "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    .end local v1    # "contactInfo":Lcom/ts/bt/ContactInfo;
    .end local v7    # "phoneInfo":Lcom/ts/bt/ContactInfo$PhoneInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public addContact()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2636
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2637
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    .local v8, "pbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/bt/BtExe$PbItem;>;"
    sget-object v1, Lcom/autochips/bluetooth/BluetoothContactsData;->CONTENT_URI:Landroid/net/Uri;

    .line 2639
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 2640
    const-string v5, "mime_type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 2641
    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 2642
    const-string v5, "data2"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 2643
    const-string v5, "first_name"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 2644
    const-string v5, "middle_name"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    .line 2645
    const-string v5, "given_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 2638
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2647
    .local v6, "dataCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2648
    .local v7, "map":Lcom/ts/bt/BtExe$PbItem;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2650
    :cond_0
    new-instance v7, Lcom/ts/bt/BtExe$PbItem;

    .end local v7    # "map":Lcom/ts/bt/BtExe$PbItem;
    invoke-direct {v7}, Lcom/ts/bt/BtExe$PbItem;-><init>()V

    .line 2652
    .restart local v7    # "map":Lcom/ts/bt/BtExe$PbItem;
    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2651
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    .line 2654
    const-string v1, "data1"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2653
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    .line 2655
    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/ts/bt/Cn2Spell;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->pinyin:Ljava/lang/String;

    .line 2657
    const-string v1, "first_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2656
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->first_name:Ljava/lang/String;

    .line 2659
    const-string v1, "middle_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2658
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->middle_name:Ljava/lang/String;

    .line 2661
    const-string v1, "given_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2660
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->given_name:Ljava/lang/String;

    .line 2662
    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2663
    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2664
    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    .line 2665
    const-string v2, "[\\d\\+\\-\\.\\,\\(\\)\\*\\#\\/\\s]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2666
    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2667
    iget-object v1, v7, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    const-string v2, "@@@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2668
    sget-object v1, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2673
    :cond_2
    return-void
.end method

.method public addWithReg(Landroid/os/Handler;Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V
    .locals 1
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "mPBCallback"    # Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;

    .prologue
    .line 749
    invoke-static {p1}, Lcom/ts/bt/BtExe;->addHandler(Landroid/os/Handler;)V

    .line 750
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    .line 751
    .local v0, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/BluetoothPBManager;->regPBCallback(Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V

    .line 754
    :cond_0
    return-void
.end method

.method public answer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1012
    const-string v2, "BtExe"

    const-string v3, "on click answer!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 1014
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 1015
    const-string v2, "BtExe"

    const-string v3, "get hf profile fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1020
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1021
    :cond_1
    const-string v2, "BtExe"

    const-string v3, "66 hf client is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/HeadsetClientProfile;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public audioSwitch()V
    .locals 6

    .prologue
    .line 1058
    const-string v3, "BtExe"

    const-string v4, "on click audioSwitch!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 1059
    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 1061
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 1062
    const-string v3, "BtExe"

    const-string v4, "get hf profile fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void

    .line 1065
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1066
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1067
    :cond_1
    const-string v3, "BtExe"

    const-string v4, "77 hf client is not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1071
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1072
    .local v2, "scoState":I
    if-nez v2, :cond_3

    .line 1073
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->connectAudio()Z

    goto :goto_0

    .line 1074
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1075
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->disconnectAudio()Z

    goto :goto_0

    .line 1077
    :cond_4
    const-string v3, "BtExe"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hf sco audio state:!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", can not switch!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public autoAnswerSw()V
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    .line 1532
    iget-boolean v0, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    invoke-direct {p0, v0}, Lcom/ts/bt/BtExe;->writeAutoAnswerData(Z)V

    .line 1533
    return-void

    .line 1531
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public autoConnectSw()V
    .locals 1

    .prologue
    .line 1536
    sget-boolean v0, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    .line 1537
    sget-boolean v0, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    invoke-direct {p0, v0}, Lcom/ts/bt/BtExe;->writeAutoConnectData(Z)V

    .line 1538
    return-void

    .line 1536
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bluetoothIsConnected()Z
    .locals 4

    .prologue
    .line 2365
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 2366
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-eqz v1, :cond_1

    .line 2367
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2368
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2369
    sget-boolean v2, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v2, :cond_0

    .line 2370
    const-string v2, "BtExe"

    const-string v3, "hfp connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_0
    const/4 v2, 0x1

    .line 2374
    .end local v0    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkAutoConnect()V
    .locals 6

    .prologue
    .line 2144
    sget-boolean v2, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z

    if-eqz v2, :cond_0

    .line 2146
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v0

    .line 2147
    .local v0, "tick":J
    sget-boolean v2, Lcom/ts/bt/BtExe;->mbConnectUI:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2148
    sget-wide v2, Lcom/ts/bt/BtExe;->mLastConnectTick:J

    const-wide/32 v4, 0xe678

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2149
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/ts/bt/BtExe;->mbConnectUI:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+mbConnectUI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+mIsAutoConnect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+mbNeedAutoConnect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLastAddr()V

    .line 2153
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->connect()V

    .line 2154
    sput-wide v0, Lcom/ts/bt/BtExe;->mLastConnectTick:J

    .line 2163
    .end local v0    # "tick":J
    :cond_0
    :goto_0
    return-void

    .line 2158
    .restart local v0    # "tick":J
    :cond_1
    sput-wide v0, Lcom/ts/bt/BtExe;->mLastConnectTick:J

    goto :goto_0
.end method

.method public checkBtAvState(Z)V
    .locals 8
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 865
    const-string v4, "BtMusicActivity"

    const-string v5, "checkBtAvState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/A2dpSinkProfile;

    .line 867
    .local v0, "a2dpProfile":Lcom/autochips/bluetooth/A2dpSinkProfile;
    const/16 v4, 0xc

    invoke-static {v4}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/AvrcpControllerProfile;

    .line 870
    .local v1, "avrcpProfile":Lcom/autochips/bluetooth/AvrcpControllerProfile;
    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {v0}, Lcom/autochips/bluetooth/A2dpSinkProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 873
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 874
    :cond_0
    sput v6, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    .line 876
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 877
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Lcom/autochips/bluetooth/A2dpSinkProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 885
    .end local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 887
    invoke-virtual {v1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 888
    .restart local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 889
    :cond_2
    sput v6, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    .line 891
    sget v4, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    if-ne v4, v7, :cond_3

    .line 892
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 893
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 908
    .end local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    :goto_1
    return-void

    .line 879
    .restart local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    if-eqz p1, :cond_1

    .line 880
    sput v7, Lcom/ts/bt/BtExe;->mA2dpsinkstate:I

    goto :goto_0

    .line 896
    :cond_5
    if-eqz p1, :cond_3

    .line 897
    sput v7, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    .line 900
    invoke-virtual {v1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->getPlaybackStatus()B

    move-result v3

    .line 901
    .local v3, "play_status":B
    sget-byte v4, Lcom/ts/bt/BtExe;->musicState:B

    if-eq v3, v4, :cond_3

    .line 902
    invoke-virtual {p0, v3}, Lcom/ts/bt/BtExe;->updatePlayPauseButton(B)V

    goto :goto_1
.end method

.method public connect()V
    .locals 5

    .prologue
    .line 1201
    const-string v2, "BtExe"

    const-string v3, "bt connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 1203
    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v2, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    sget-boolean v2, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    if-nez v2, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLastAddr()V

    .line 1216
    sget-object v2, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1217
    const-string v2, "BtExe"

    sget-object v3, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    .line 1219
    sget-object v3, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1220
    .local v1, "mDevice":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    .line 1221
    invoke-virtual {v2, v1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 1223
    .local v0, "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_2

    .line 1224
    const-string v2, "BtExe"

    const-string v3, "cahedDevice == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1226
    sget-boolean v2, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v2, :cond_3

    .line 1227
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cnnect device:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_3
    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1443
    sget-object v1, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v1, :cond_0

    .line 1444
    sget-object v1, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v1}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1445
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1447
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selctions"    # [Ljava/lang/String;

    .prologue
    .line 1450
    sget-object v1, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v1, :cond_0

    .line 1451
    sget-object v1, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v1}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1452
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1454
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method public dial(Ljava/lang/String;)V
    .locals 4
    .param p1, "callNumber"    # Ljava/lang/String;

    .prologue
    .line 714
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 715
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_1

    .line 716
    const-string v2, "BtExe"

    const-string v3, "get hf profile fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 721
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 722
    :cond_2
    const-string v2, "BtExe"

    const-string v3, "device is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :cond_3
    invoke-static {}, Lcom/ts/bt/BtExe;->isDialFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, p1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1234
    sget-boolean v2, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v2, :cond_0

    .line 1235
    const-string v2, "BtExe"

    const-string v3, "onClickdisConnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_0
    sget-boolean v2, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    if-eqz v2, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->saveLastAddr()V

    .line 1238
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 1239
    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v2, :cond_2

    .line 1257
    :cond_1
    :goto_0
    return-void

    .line 1242
    :cond_2
    sget-object v2, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1243
    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    .line 1244
    sget-object v3, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1245
    .local v1, "mDevice":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    .line 1246
    invoke-virtual {v2, v1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 1247
    .local v0, "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 1249
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    .line 1250
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbNeedUpdatePhoneName:Z

    .line 1251
    sput-boolean v4, Lcom/ts/bt/BtExe;->mbNeedSaveData:Z

    .line 1252
    sput v4, Lcom/ts/bt/BtExe;->mCallSta:I

    .line 1253
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->pbClear()V

    goto :goto_0
.end method

.method downLoad()V
    .locals 5

    .prologue
    .line 2677
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 2676
    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 2678
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 2679
    const-string v3, "BtExe"

    const-string v4, "get hf dapter fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :goto_0
    return-void

    .line 2683
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2684
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2685
    :cond_1
    const-string v3, "BtExe"

    const-string v4, "hf client is not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2688
    :cond_2
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v2

    .line 2689
    .local v2, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-nez v2, :cond_3

    .line 2690
    const-string v3, "BtExe"

    const-string v4, "get pbManager fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2695
    :cond_3
    const/4 v3, 0x6

    .line 2693
    invoke-virtual {p0, v2, v3}, Lcom/ts/bt/BtExe;->startDownload(Lcom/autochips/bluetooth/BluetoothPBManager;I)Z

    goto :goto_0
.end method

.method public fsSetDevName()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 324
    const/16 v5, 0x20

    new-array v3, v5, [C

    .line 325
    .local v3, "mBtName":[C
    invoke-static {v3}, Lcom/yyw/ts70xhw/FtSet;->GetBtName([C)I

    .line 329
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 330
    .local v4, "strName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 341
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBtId()I

    move-result v2

    .line 342
    .local v2, "id":I
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    .line 343
    const-string v5, "BtExe"

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fsSetDevName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    .line 346
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/ts/bt/BtExe;->setDevByNameId(Ljava/lang/String;I)V

    .line 355
    :goto_1
    return-void

    .line 331
    .end local v2    # "id":I
    :cond_1
    aget-char v0, v3, v1

    .line 332
    .local v0, "d":I
    if-eqz v0, :cond_0

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    const-string v5, "BtExe"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BtName["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "d":I
    .restart local v2    # "id":I
    :cond_2
    invoke-virtual {p0, v4, v8}, Lcom/ts/bt/BtExe;->setDevByNameId(Ljava/lang/String;I)V

    goto :goto_1

    .line 352
    :cond_3
    const-string v5, "BT"

    invoke-virtual {p0, v5, v2}, Lcom/ts/bt/BtExe;->setDevByNameId(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public getBluetoothAdapterState()I
    .locals 1

    .prologue
    .line 1082
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public getCallValue()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1642
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    .line 1641
    check-cast v3, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 1643
    .local v3, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v3, :cond_0

    .line 1644
    const-string v4, "BtExe"

    const-string v6, "get hf profile fail!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1661
    :goto_0
    return v4

    .line 1648
    :cond_0
    invoke-virtual {v3}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 1649
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v5

    .line 1651
    goto :goto_0

    .line 1655
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 1656
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1657
    :cond_3
    const-string v4, "BtExe"

    const-string v6, "Call had been ended before this activity create!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1658
    goto :goto_0

    .line 1660
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1661
    .local v1, "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v4

    goto :goto_0
.end method

.method public getCallingNum()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2262
    const-string v2, ""

    .line 2264
    .local v2, "clipNum":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    .line 2263
    check-cast v3, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 2265
    .local v3, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v3, :cond_0

    .line 2266
    const-string v4, "BtExe"

    const-string v6, "get hf profile fail!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2288
    :goto_0
    return-object v4

    .line 2275
    :cond_0
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2276
    const-string v4, "BtExe"

    const-string v6, "mDeviceLists is null!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2277
    goto :goto_0

    .line 2281
    :cond_1
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 2282
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 2283
    :cond_2
    const-string v4, "BtExe"

    const-string v6, "Call had been ended before this activity create!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2284
    goto :goto_0

    .line 2286
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 2287
    .local v1, "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 2288
    goto :goto_0
.end method

.method public getConnectedDevices(Lcom/autochips/bluetooth/AvrcpControllerProfile;)Ljava/util/List;
    .locals 1
    .param p1, "avrcpProfile"    # Lcom/autochips/bluetooth/AvrcpControllerProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autochips/bluetooth/AvrcpControllerProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1585
    const-string v7, ""

    .line 1586
    .local v7, "contactName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1587
    .local v6, "contactID":I
    const-string v13, ""

    .line 1588
    .local v13, "remoteAddr":Ljava/lang/String;
    const-string v12, ""

    .line 1590
    .local v12, "recordAddr":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v11

    .line 1589
    check-cast v11, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 1591
    .local v11, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v11, :cond_0

    .line 1592
    const-string v1, "BtExe"

    const-string v2, "get hf dapter fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 1637
    .end local v7    # "contactName":Ljava/lang/String;
    .local v8, "contactName":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 1596
    .end local v8    # "contactName":Ljava/lang/String;
    .restart local v7    # "contactName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v11}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v10

    .line 1597
    .local v10, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1598
    :cond_1
    const-string v1, "BtExe"

    const-string v2, "99 hf client is not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 1599
    .end local v7    # "contactName":Ljava/lang/String;
    .restart local v8    # "contactName":Ljava/lang/String;
    goto :goto_0

    .line 1601
    .end local v8    # "contactName":Ljava/lang/String;
    .restart local v7    # "contactName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 1603
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1605
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/autochips/bluetooth/BluetoothContactsData;->CONTENT_URI:Landroid/net/Uri;

    .line 1606
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contacts_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1607
    const-string v4, "display_name"

    aput-object v4, v2, v3

    .line 1608
    const-string v3, "data1=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 1605
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1610
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1612
    const-string v1, "display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1611
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1614
    const-string v1, "contacts_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1613
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1616
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1621
    sget-object v1, Lcom/autochips/bluetooth/BluetoothContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1622
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "remote_addr"

    aput-object v4, v2, v3

    .line 1623
    const-string v3, "_id=?"

    .line 1624
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x0

    .line 1621
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1626
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1628
    const-string v1, "remote_addr"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1627
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1630
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1633
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1634
    const-string v7, ""

    :cond_5
    move-object v8, v7

    .line 1637
    .end local v7    # "contactName":Ljava/lang/String;
    .restart local v8    # "contactName":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getCurrentTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 1463
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v0, "format":Landroid/icu/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    .local v1, "str":Ljava/lang/String;
    return-object v1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPin()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1119
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1120
    const-string v2, "device_pin_data"

    const/4 v3, 0x0

    .line 1119
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1121
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "PIN"

    const-string v2, "0000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastAddr()V
    .locals 4

    .prologue
    .line 1268
    sget-object v1, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    :cond_0
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1270
    const-string v2, "last_dev_info"

    const/4 v3, 0x0

    .line 1269
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1271
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "LAST_DEV_ADDR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    .line 1274
    .end local v0    # "sharedata":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public getLocalAdapter()V
    .locals 2

    .prologue
    .line 1086
    invoke-static {}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    .line 1087
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1088
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    const-string v0, "BtExe"

    const-string v1, "setBluetoothEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 1093
    :cond_0
    return-void
.end method

.method public getMicMuteSta()Z
    .locals 1

    .prologue
    .line 1321
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbMicmute:Z

    return v0
.end method

.method public getOBDAddr()V
    .locals 4

    .prologue
    .line 1294
    sget-object v1, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1295
    :cond_0
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1296
    const-string v2, "last_dev_info"

    const/4 v3, 0x0

    .line 1295
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1297
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "LAST_OBD_ADDR"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    .line 1300
    .end local v0    # "sharedata":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2215
    const-string v1, ""

    .line 2216
    .local v1, "strName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2217
    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v2, :cond_0

    .line 2218
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "------------->mLocalAdapter"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, v1

    .line 2237
    :goto_0
    return-object v2

    .line 2221
    :cond_0
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2222
    const-string v2, "BtExe"

    const-string v3, "getPhoneName mDeviceLists is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/4 v2, 0x0

    goto :goto_0

    .line 2229
    :cond_1
    sget-object v3, Lcom/ts/bt/BtExe;->mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    .line 2230
    sget-object v2, Lcom/ts/bt/BtExe;->mDeviceLists:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 2231
    .local v0, "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_2

    .line 2232
    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :cond_2
    move-object v2, v1

    .line 2237
    goto :goto_0
.end method

.method public getSta()I
    .locals 1

    .prologue
    .line 372
    sget v0, Lcom/ts/bt/BtExe;->mCallSta:I

    return v0
.end method

.method public getStringDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1480
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1481
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v2, "formatter":Landroid/icu/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2241
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2242
    .local v0, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 2243
    const-string v2, "BT.17.04.21.0822"

    .line 2250
    :goto_0
    return-object v2

    .line 2245
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2246
    .local v1, "strAddr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2247
    const-string v1, "null"

    .line 2249
    :cond_1
    const-string v2, "%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "BT.17.04.21.0822"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ts/bt/BtExe;->VER_ID:Ljava/lang/String;

    .line 2250
    sget-object v2, Lcom/ts/bt/BtExe;->VER_ID:Ljava/lang/String;

    goto :goto_0
.end method

.method public hangup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 983
    const-string v3, "BtExe"

    const-string v4, "on click hangup!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 985
    .local v2, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v2, :cond_0

    .line 986
    const-string v3, "BtExe"

    const-string v4, "get hf profile fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-virtual {v2}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 991
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 992
    :cond_1
    const-string v3, "BtExe"

    const-string v4, "55 hf client is not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 998
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 999
    :cond_3
    const-string v3, "BtExe"

    const-string v4, "no call!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1003
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1004
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/HeadsetClientProfile;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 1006
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v5}, Lcom/autochips/bluetooth/HeadsetClientProfile;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public hangup1()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1030
    const-string v4, "BtExe"

    const-string v5, "on click hangup1!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 1032
    .local v3, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v3, :cond_1

    .line 1033
    const-string v4, "BtExe"

    const-string v5, "get hf profile fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-virtual {v3}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 1038
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1039
    :cond_2
    const-string v4, "BtExe"

    const-string v5, "55 hf client is not connected!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1044
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

    .line 1045
    .local v1, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 1046
    :cond_4
    const-string v4, "BtExe"

    const-string v5, "no call!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1050
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1051
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1052
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3, v0}, Lcom/autochips/bluetooth/HeadsetClientProfile;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method initData()V
    .locals 0

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLastAddr()V

    .line 1580
    invoke-direct {p0}, Lcom/ts/bt/BtExe;->readAutoConnectData()V

    .line 1581
    invoke-direct {p0}, Lcom/ts/bt/BtExe;->readAutoAnswerData()V

    .line 1582
    return-void
.end method

.method public insertDiallog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 1406
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v2, :cond_2

    .line 1407
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v2}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1408
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1409
    const-string v2, "diallog"

    const/4 v3, 0x0

    const-string v4, "addr=?"

    .line 1410
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1409
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1411
    .local v9, "dbCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_1

    .line 1412
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1414
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1413
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1416
    .local v10, "name1":Ljava/lang/String;
    const-string v2, "num"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1415
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1418
    .local v11, "num1":Ljava/lang/String;
    const-string v2, "time"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1417
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1420
    .local v12, "time1":Ljava/lang/String;
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1419
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1422
    .local v13, "type1":Ljava/lang/String;
    const-string v2, "diallog"

    .line 1423
    const-string v3, "addr=? and name=? and num=? and time=? and type=?"

    .line 1424
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    const/4 v5, 0x2

    aput-object v11, v4, v5

    const/4 v5, 0x3

    aput-object v12, v4, v5

    const/4 v5, 0x4

    .line 1425
    aput-object v13, v4, v5

    .line 1421
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1427
    .end local v10    # "name1":Ljava/lang/String;
    .end local v11    # "num1":Ljava/lang/String;
    .end local v12    # "time1":Ljava/lang/String;
    .end local v13    # "type1":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1430
    .end local v9    # "dbCursor":Landroid/database/Cursor;
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1432
    .local v14, "values":Landroid/content/ContentValues;
    const-string v2, "addr"

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v2, "name"

    move-object/from16 v0, p1

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v2, "num"

    move-object/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string v2, "time"

    move-object/from16 v0, p3

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v2, "type"

    move-object/from16 v0, p4

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v2, "diallog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1438
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 1440
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method public insertPhonebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;

    .prologue
    .line 1325
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v2, :cond_1

    .line 1326
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v2}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1327
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1329
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "addr"

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v2, "num"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v2, "collect"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    const-string v2, "pinyin"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v2, "first_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string v2, "middle_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v2, "given_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1338
    const-string v2, "[\\d\\+\\-\\.\\,\\(\\)\\*\\#\\/\\s]*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    const-string v2, "@@@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    const-string v2, "phonebook"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1342
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1344
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public insertPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 1347
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v2, :cond_1

    .line 1348
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v2}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1351
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "addr"

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v2, "num"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v2, "collect"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    const-string v2, "pinyin"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v2, "first_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v2, "middle_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v2, "given_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    const-string v2, "[\\d\\+\\-\\.\\,\\(\\)\\*\\#\\/\\s]*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    const-string v2, "@@@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1363
    const-string v2, "phonebook"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1364
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1366
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public insertPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "pinyin"    # Ljava/lang/String;
    .param p4, "first_name"    # Ljava/lang/String;
    .param p5, "middle_name"    # Ljava/lang/String;
    .param p6, "given_name"    # Ljava/lang/String;

    .prologue
    .line 1370
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v2, :cond_1

    .line 1371
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v2}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1372
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1374
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "addr"

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v2, "num"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v2, "collect"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    const-string v2, "pinyin"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v2, "first_name"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v2, "middle_name"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v2, "given_name"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1383
    const-string v2, "[\\d\\+\\-\\.\\,\\(\\)\\*\\#\\/\\s]*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1384
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1385
    const-string v2, "@@@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1386
    const-string v2, "phonebook"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1387
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1389
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public isAutoAnswer()Z
    .locals 1

    .prologue
    .line 1523
    iget-boolean v0, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    return v0
.end method

.method public isAutoConnect()Z
    .locals 1

    .prologue
    .line 1527
    sget-boolean v0, Lcom/ts/bt/BtExe;->mIsAutoConnect:Z

    return v0
.end method

.method public isBtCountry()Z
    .locals 5

    .prologue
    .line 2495
    sget-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2496
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2497
    .local v1, "language":Ljava/lang/String;
    const-string v2, "lh"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isBtCountry = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/ts/bt/BtExe;->mLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 2503
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2499
    :cond_0
    sget-object v2, Lcom/ts/bt/BtExe;->mLanguages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2500
    const/4 v2, 0x1

    goto :goto_1

    .line 2498
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isBtEnabled()Z
    .locals 1

    .prologue
    .line 2335
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 2336
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 2338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 709
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    return v0
.end method

.method public isHaveCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2207
    sget v1, Lcom/ts/bt/BtExe;->mCallSta:I

    if-le v1, v0, :cond_0

    .line 2211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public micMute()V
    .locals 1

    .prologue
    .line 1310
    sget-boolean v0, Lcom/ts/bt/BtExe;->mbMicmute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->micMuteSW(Z)V

    .line 1311
    return-void

    .line 1310
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public micMuteSW(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1314
    sput-boolean p1, Lcom/ts/bt/BtExe;->mbMicmute:Z

    .line 1316
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMyContext mAudioManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ts/bt/BtExe;->mbMicmute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    sget-object v0, Lcom/ts/bt/BtExe;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1318
    return-void
.end method

.method public musicNext()V
    .locals 1

    .prologue
    .line 962
    invoke-static {}, Lcom/ts/bt/BtExe;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 964
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->sendAvrcpCommand(I)V

    .line 966
    :cond_0
    return-void
.end method

.method public musicPP()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 944
    invoke-virtual {p0, v1}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 945
    sget-byte v0, Lcom/ts/bt/BtExe;->musicState:B

    if-ne v0, v1, :cond_0

    .line 946
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->sendAvrcpCommand(I)V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ts/bt/BtExe;->sendAvrcpCommand(I)V

    goto :goto_0
.end method

.method public musicPause()V
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 971
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->sendAvrcpCommand(I)V

    .line 972
    return-void
.end method

.method public musicPlay()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 976
    invoke-virtual {p0, v1}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 977
    sget-byte v0, Lcom/ts/bt/BtExe;->musicState:B

    if-eq v0, v1, :cond_0

    .line 978
    invoke-virtual {p0, v1}, Lcom/ts/bt/BtExe;->sendAvrcpCommand(I)V

    .line 979
    :cond_0
    return-void
.end method

.method public musicPrev()V
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/ts/bt/BtExe;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 956
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->sendAvrcpCommand(I)V

    .line 958
    :cond_0
    return-void
.end method

.method public pbClear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2031
    sget-object v1, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2032
    .local v0, "size":I
    sget-object v1, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2033
    sput v2, Lcom/ts/bt/BtExe;->mPbStatus:I

    .line 2034
    sput v2, Lcom/ts/bt/BtExe;->mSyncNum:I

    .line 2037
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->UpdatePbMap()V

    .line 2040
    return-void
.end method

.method public powerAbnomarlCheck()Z
    .locals 3

    .prologue
    .line 2309
    const/4 v0, 0x0

    .line 2310
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 2311
    invoke-direct {p0}, Lcom/ts/bt/BtExe;->checkIfAbnormal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2312
    const-string v1, "BtExe"

    const-string v2, "Bluetooth reseting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :goto_0
    return v0

    .line 2328
    :cond_0
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->powerOn()V

    goto :goto_0
.end method

.method public powerOn()V
    .locals 2

    .prologue
    .line 2355
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 2356
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2357
    const-string v0, "BtExe"

    const-string v1, "powerOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 2362
    :cond_0
    return-void
.end method

.method public reDial()V
    .locals 4

    .prologue
    .line 733
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 734
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 735
    const-string v2, "BtExe"

    const-string v3, "get hf profile fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 740
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 741
    :cond_1
    const-string v2, "BtExe"

    const-string v3, "device is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/HeadsetClientProfile;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method public readDeviceNamePin()V
    .locals 5

    .prologue
    .line 1179
    sget-object v2, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1180
    const-string v3, "device_name_pin_data"

    const/4 v4, 0x0

    .line 1179
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1181
    .local v1, "sharedata":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 1182
    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "devicename":Ljava/lang/String;
    const-string v2, "DEVICENAME"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    .line 1184
    const-string v2, "PIN"

    const-string v3, "0000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    .line 1185
    return-void
.end method

.method public regPBCallback()V
    .locals 2

    .prologue
    .line 2709
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    .line 2710
    .local v0, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-eqz v0, :cond_0

    .line 2711
    iget-object v1, p0, Lcom/ts/bt/BtExe;->mPBCallback:Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BluetoothPBManager;->regPBCallback(Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V

    .line 2713
    :cond_0
    return-void
.end method

.method public regPBCallback(Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V
    .locals 1
    .param p1, "mPBCallback"    # Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;

    .prologue
    .line 768
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    .line 769
    .local v0, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BluetoothPBManager;->regPBCallback(Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V

    .line 772
    :cond_0
    return-void
.end method

.method public regPlayerUtility()V
    .locals 1

    .prologue
    .line 2295
    sget-object v0, Lcom/ts/bt/BtExe;->mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

    if-eqz v0, :cond_0

    .line 2296
    sget-object v0, Lcom/ts/bt/BtExe;->mAvrcpCtProfile:Lcom/autochips/bluetooth/AvrcpControllerProfile;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->regPlayerUtility()V

    .line 2298
    :cond_0
    return-void
.end method

.method public removeWithUnreg(Landroid/os/Handler;Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V
    .locals 1
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "mPBCallback"    # Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;

    .prologue
    .line 759
    invoke-static {p1}, Lcom/ts/bt/BtExe;->removeHandler(Landroid/os/Handler;)V

    .line 760
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    .line 761
    .local v0, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/BluetoothPBManager;->unregPBCallback(Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V

    .line 764
    :cond_0
    return-void
.end method

.method public resetAutoConnect()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z

    .line 1542
    return-void
.end method

.method public saveLastAddr()V
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    .line 1262
    sget-object v0, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->storeLastAddr()V

    .line 1265
    :cond_0
    return-void
.end method

.method public saveOBDAddr()V
    .locals 4

    .prologue
    .line 1287
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1288
    const-string v2, "last_dev_info"

    const/4 v3, 0x0

    .line 1287
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1288
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1289
    .local v0, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LAST_OBD_ADDR"

    sget-object v2, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1291
    return-void
.end method

.method public sendAvrcpCommand(I)V
    .locals 5
    .param p1, "cmd"    # I

    .prologue
    const/4 v4, 0x0

    .line 912
    const-string v2, "BtMusicActivity"

    const-string v3, "sendAvrcpCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/AvrcpControllerProfile;

    .line 914
    .local v0, "avrcpProfile":Lcom/autochips/bluetooth/AvrcpControllerProfile;
    if-nez v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p0, v4}, Lcom/ts/bt/BtExe;->checkBtAvState(Z)V

    .line 919
    sget v2, Lcom/ts/bt/BtExe;->mAvrcpctstate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 921
    invoke-virtual {v0}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 923
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 924
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, p1}, Lcom/autochips/bluetooth/AvrcpControllerProfile;->sendAvrcpCommand(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0
.end method

.method public sendDTMFCode(B)V
    .locals 4
    .param p1, "code"    # B

    .prologue
    .line 1552
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 1551
    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 1553
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 1554
    const-string v2, "BtExe"

    const-string v3, "get hf profile fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :goto_0
    return-void

    .line 1558
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1559
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1560
    :cond_1
    const-string v2, "BtExe"

    const-string v3, "88 hf client is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1563
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, p1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_0
.end method

.method public setAutoConnect()V
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z

    .line 1548
    return-void
.end method

.method public setBluetoothDiscoverability(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 446
    if-eqz p1, :cond_1

    .line 447
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    .line 449
    const/16 v1, 0x17

    .line 450
    const/4 v2, -0x1

    .line 448
    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    .line 455
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0
.end method

.method public setDevByNameId(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 358
    sget-object v1, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->readDeviceNamePin()V

    .line 362
    :cond_1
    move-object v0, p1

    .line 363
    .local v0, "strDev":Ljava/lang/String;
    const-string v1, "BtExe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fsSetDevName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz p2, :cond_2

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%04d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->setDevName(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public setDevName(Ljava/lang/String;)V
    .locals 3
    .param p1, "devicename"    # Ljava/lang/String;

    .prologue
    .line 1145
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**********setDevName "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " **********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getLocalAdapter()V

    .line 1147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    sget-object v0, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ts/bt/BtExe;->writeDeviceNamePin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->readDeviceNamePin()V

    .line 1151
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetDevName+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetDevName+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1154
    const-string v0, "BtExe"

    const-string v1, "mLocalAdapter is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtExe;->writeDeviceName(Ljava/lang/String;)V

    .line 1160
    :cond_0
    return-void
.end method

.method public setDevPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/ts/bt/BtExe;->mCurName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/ts/bt/BtExe;->writeDeviceNamePin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->readDeviceNamePin()V

    .line 1176
    :cond_0
    return-void
.end method

.method public setUI(Z)V
    .locals 0
    .param p1, "isBtUI"    # Z

    .prologue
    .line 2166
    sput-boolean p1, Lcom/ts/bt/BtExe;->mbConnectUI:Z

    .line 2167
    return-void
.end method

.method public startDiscovery()V
    .locals 2

    .prologue
    .line 1188
    sget-boolean v0, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v0, :cond_0

    .line 1189
    const-string v0, "BtExe"

    const-string v1, "onClick scan!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 1191
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1192
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 1197
    :cond_1
    :goto_0
    return-void

    .line 1194
    :cond_2
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method public startDownload(Lcom/autochips/bluetooth/BluetoothPBManager;I)Z
    .locals 5
    .param p1, "pbManager"    # Lcom/autochips/bluetooth/BluetoothPBManager;
    .param p2, "path"    # I

    .prologue
    const/4 v2, 0x1

    .line 827
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 828
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 829
    const-string v3, "BtExe"

    const-string v4, "get hf dapter fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :goto_0
    return v2

    .line 833
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 834
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 835
    :cond_1
    const-string v3, "BtExe"

    const-string v4, "33 hf client is not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2, p2}, Lcom/autochips/bluetooth/BluetoothPBManager;->startDownload(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    goto :goto_0
.end method

.method public stopDownload(Lcom/autochips/bluetooth/BluetoothPBManager;)V
    .locals 4
    .param p1, "pbManager"    # Lcom/autochips/bluetooth/BluetoothPBManager;

    .prologue
    .line 843
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 844
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_0

    .line 845
    const-string v2, "BtExe"

    const-string v3, "get hf dapter fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 850
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 851
    :cond_1
    const-string v2, "BtExe"

    const-string v3, "44 hf client is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 854
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/BluetoothPBManager;->stopDownload(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method public stopDownloadCall()V
    .locals 2

    .prologue
    .line 776
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    .line 777
    .local v0, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-eqz v0, :cond_0

    .line 779
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BluetoothPBManager;->stopDownload(Landroid/bluetooth/BluetoothDevice;)Z

    .line 781
    :cond_0
    return-void
.end method

.method public storeLastAddr()V
    .locals 4

    .prologue
    .line 1277
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1278
    const-string v2, "last_dev_info"

    const/4 v3, 0x0

    .line 1277
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1278
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1279
    .local v0, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LAST_DEV_ADDR"

    sget-object v2, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1284
    return-void
.end method

.method public timerCall(I)I
    .locals 11
    .param p1, "mcusSta"    # I

    .prologue
    .line 1780
    sget v5, Lcom/ts/bt/BtExe;->mOldMcuSta:I

    if-eq v5, p1, :cond_2

    .line 1781
    sget v5, Lcom/ts/bt/BtExe;->mOldMcuSta:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    sget v5, Lcom/ts/bt/BtExe;->mOldMcuSta:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    :cond_0
    if-nez p1, :cond_11

    .line 1782
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/ts/bt/BtExe;->mLastConnectTick:J

    .line 1783
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    sput-wide v5, Lcom/ts/bt/BtExe;->mLastAccOnTick:J

    .line 1784
    const-string v5, "BtExe"

    const-string v6, "Fake on ,clear mLastConnectTick"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_1
    :goto_0
    sput p1, Lcom/ts/bt/BtExe;->mOldMcuSta:I

    .line 1795
    :cond_2
    sget-boolean v5, Lcom/ts/bt/BtExe;->mBtIsEnabled:Z

    if-nez v5, :cond_5

    .line 1796
    sget-wide v5, Lcom/ts/bt/BtExe;->mCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    sput-wide v7, Lcom/ts/bt/BtExe;->mCount:J

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    .line 1797
    sget-object v5, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1798
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/ts/bt/BtExe;->setBluetoothDiscoverability(Z)V

    .line 1799
    sget-wide v5, Lcom/ts/bt/BtExe;->mNum:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    sput-wide v5, Lcom/ts/bt/BtExe;->mNum:J

    .line 1800
    sget-wide v5, Lcom/ts/bt/BtExe;->mNum:J

    const-wide/16 v7, 0x3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    .line 1801
    const/4 v5, 0x1

    sput-boolean v5, Lcom/ts/bt/BtExe;->mBtIsEnabled:Z

    .line 1803
    :cond_3
    const-string v5, "BtExe"

    const-string v6, "mCount+++++++"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_4
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/ts/bt/BtExe;->mCount:J

    .line 1808
    :cond_5
    invoke-direct {p0}, Lcom/ts/bt/BtExe;->checkNeedPWROn()V

    .line 1809
    sget-boolean v5, Lcom/ts/bt/BtExe;->mbModuleInit:Z

    if-eqz v5, :cond_6

    .line 1810
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    sget-wide v7, Lcom/ts/bt/BtExe;->mLastAccOnTick:J

    const-wide/16 v9, 0x4e20

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 1812
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->checkAutoConnect()V

    .line 1815
    :cond_6
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->CheckSetDevName()V

    .line 1817
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    sget v6, Lcom/ts/bt/BtExe;->mLastCallSta:I

    if-eq v5, v6, :cond_c

    .line 1818
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->UpdateHfpSta()V

    .line 1819
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 1821
    iget-boolean v5, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    if-eqz v5, :cond_7

    .line 1824
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ts/bt/BtExe;->mChkAutoAnswer:Z

    .line 1825
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ts/bt/BtExe;->mAutoAnswerStart:J

    .line 1828
    :cond_7
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_8

    .line 1829
    sget v5, Lcom/ts/bt/BtExe;->mLastCallSta:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_8

    .line 1831
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->setAutoConnect()V

    .line 1834
    :cond_8
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_9

    sget v5, Lcom/ts/bt/BtExe;->mLastCallSta:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    .line 1835
    const-string v5, ""

    sput-object v5, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    .line 1836
    const-string v5, ""

    sput-object v5, Lcom/ts/bt/BtExe;->mStrOldCallNo:Ljava/lang/String;

    .line 1839
    iget-object v5, p0, Lcom/ts/bt/BtExe;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/Evc;->evol_blue_set(I)V

    .line 1841
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    sput-wide v5, Lcom/ts/bt/BtExe;->mQueryNoLastTick:J

    .line 1842
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/ts/bt/BtExe;->mQueryNoCount:J

    .line 1845
    :cond_9
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_a

    sget v5, Lcom/ts/bt/BtExe;->mLastCallSta:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_a

    .line 1848
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/ts/bt/BtExe;->micMuteSW(Z)V

    .line 1850
    iget-object v5, p0, Lcom/ts/bt/BtExe;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ts/MainUI/Evc;->evol_blue_set(I)V

    .line 1851
    const-string v5, "BtExe"

    const-string v6, "mEvc.evol_blue_set(1)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    .line 1854
    const-string v5, "unkown"

    sput-object v5, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1855
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    sput-wide v5, Lcom/ts/bt/BtExe;->mQueryNoLastTick:J

    .line 1858
    :cond_a
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_13

    sget v5, Lcom/ts/bt/BtExe;->mLastCallSta:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_13

    .line 1860
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    sput-wide v5, Lcom/ts/bt/BtExe;->mActiveTick:J

    .line 1866
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->updateLastPhoneNum()V

    .line 1868
    :cond_c
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_e

    .line 1870
    sget-object v5, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    const-string v6, "unkown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1871
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v0

    .line 1872
    .local v0, "curTick":J
    sget-wide v5, Lcom/ts/bt/BtExe;->mQueryNoLastTick:J

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-lez v5, :cond_d

    .line 1873
    sput-wide v0, Lcom/ts/bt/BtExe;->mQueryNoLastTick:J

    .line 1875
    sget-wide v5, Lcom/ts/bt/BtExe;->mQueryNoCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    sput-wide v5, Lcom/ts/bt/BtExe;->mQueryNoCount:J

    .line 1876
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallingNum()Ljava/lang/String;

    move-result-object v4

    .line 1877
    .local v4, "strPhoneNum":Ljava/lang/String;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1878
    const-string v5, "unkown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1879
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 1880
    sget-boolean v5, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v5, :cond_d

    .line 1881
    const-string v5, "BtExe"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "********************getCallingNum = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1882
    sget-object v7, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "********************"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1881
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    .end local v0    # "curTick":J
    .end local v4    # "strPhoneNum":Ljava/lang/String;
    :cond_d
    sget-object v5, Lcom/ts/bt/BtExe;->mStrOldCallNo:Ljava/lang/String;

    sget-object v6, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1895
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/ts/bt/BtExe;->mStrOldCallNo:Ljava/lang/String;

    .line 1896
    sget-object v5, Lcom/ts/bt/BtExe;->mStrCallName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 1897
    sget-object v5, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    .line 1898
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->UpdateCallName()V

    .line 1899
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->UpdateHfpSta()V

    .line 1907
    :cond_e
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    .line 1909
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v5

    sget-wide v7, Lcom/ts/bt/BtExe;->mActiveTick:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sput-wide v5, Lcom/ts/bt/BtExe;->mActiveSecond:J

    .line 1911
    :cond_f
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    sput v5, Lcom/ts/bt/BtExe;->mLastCallSta:I

    .line 1914
    iget-boolean v5, p0, Lcom/ts/bt/BtExe;->mChkAutoAnswer:Z

    if-eqz v5, :cond_10

    .line 1915
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_14

    .line 1916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1917
    .local v2, "curTime":J
    iget-wide v5, p0, Lcom/ts/bt/BtExe;->mAutoAnswerStart:J

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v5, v2, v5

    if-lez v5, :cond_10

    .line 1918
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->answer()V

    .line 1919
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ts/bt/BtExe;->mChkAutoAnswer:Z

    .line 1920
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ts/bt/BtExe;->mIsAutoAnswer:Z

    .line 1921
    const-string v5, "BtExe"

    const-string v6, "NewSta == BthStaCallIn, auto answer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    .end local v2    # "curTime":J
    :cond_10
    :goto_2
    const/16 v5, 0xff

    return v5

    .line 1785
    :cond_11
    const/4 v5, 0x3

    if-eq p1, v5, :cond_12

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 1786
    :cond_12
    sget-boolean v5, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/ts/bt/BtExe;->mbNeedSaveData:Z

    if-eqz v5, :cond_1

    .line 1787
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->storeLastAddr()V

    .line 1788
    const/4 v5, 0x0

    sput-boolean v5, Lcom/ts/bt/BtExe;->mbNeedSaveData:Z

    goto/16 :goto_0

    .line 1861
    :cond_13
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_b

    .line 1862
    sget v5, Lcom/ts/bt/BtExe;->mLastCallSta:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 1863
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/ts/bt/BtExe;->mActiveSecond:J

    .line 1864
    const-wide/16 v5, 0x0

    sput-wide v5, Lcom/ts/bt/BtExe;->mActiveTick:J

    goto/16 :goto_1

    .line 1924
    :cond_14
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ts/bt/BtExe;->mChkAutoAnswer:Z

    goto :goto_2
.end method

.method public unregPBCallback()V
    .locals 2

    .prologue
    .line 2716
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    .line 2717
    .local v0, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-eqz v0, :cond_0

    .line 2718
    iget-object v1, p0, Lcom/ts/bt/BtExe;->mPBCallback:Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BluetoothPBManager;->unregPBCallback(Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;)V

    .line 2720
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    .line 2255
    sput-object p1, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    .line 2256
    sput-object p2, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    .line 2257
    sput-object p3, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    .line 2258
    return-void
.end method

.method public updateCallSta()V
    .locals 3

    .prologue
    .line 2175
    const/4 v0, 0x0

    .line 2176
    .local v0, "CallSta":I
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->getCallValue()I

    move-result v1

    .line 2177
    .local v1, "phoneCallState":I
    if-nez v1, :cond_1

    .line 2179
    const/4 v0, 0x4

    .line 2198
    :cond_0
    :goto_0
    sput v0, Lcom/ts/bt/BtExe;->mCallSta:I

    .line 2204
    return-void

    .line 2180
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 2182
    sget-boolean v2, Lcom/ts/bt/BtExe;->mbHfConnected:Z

    if-eqz v2, :cond_2

    .line 2183
    const/4 v0, 0x1

    .line 2184
    goto :goto_0

    .line 2185
    :cond_2
    const/4 v0, 0x0

    .line 2187
    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 2190
    const/4 v0, 0x3

    .line 2191
    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 2193
    const/4 v0, 0x2

    .line 2194
    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2196
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public updateLastPhoneNum()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1665
    sget-object v0, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v0, :cond_0

    .line 1666
    invoke-virtual {p0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    sget-object v0, Lcom/ts/bt/BtExe;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "diallog"

    const-string v3, "addr=?"

    .line 1669
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 1668
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1670
    .local v8, "dbCursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    const-string v0, "num"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1672
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1674
    .local v9, "num":Ljava/lang/String;
    sput-object v9, Lcom/ts/bt/BtExe;->mLastPhoneNo:Ljava/lang/String;

    .line 1680
    .end local v8    # "dbCursor":Landroid/database/Cursor;
    .end local v9    # "num":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePbList()V
    .locals 19

    .prologue
    .line 2099
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v2, :cond_2

    .line 2100
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v17, "pbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/bt/BtExe$PbItem;>;"
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v2}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2102
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2103
    const-string v2, "phonebook"

    const/4 v3, 0x0

    const-string v4, "addr=?"

    .line 2104
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2103
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2105
    .local v10, "cursor1":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2106
    const/4 v13, 0x0

    .line 2110
    .local v13, "map":Lcom/ts/bt/BtExe$PbItem;
    :cond_0
    const-string v2, "name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2109
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2112
    .local v15, "name":Ljava/lang/String;
    const-string v2, "num"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2111
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2114
    .local v16, "num":Ljava/lang/String;
    const-string v2, "collect"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2113
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2116
    .local v9, "collect":I
    const-string v2, "pinyin"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2115
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2118
    .local v18, "pinyin":Ljava/lang/String;
    const-string v2, "first_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2117
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2120
    .local v11, "first_name":Ljava/lang/String;
    const-string v2, "middle_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2119
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2122
    .local v14, "middle_name":Ljava/lang/String;
    const-string v2, "given_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2121
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2123
    .local v12, "given_name":Ljava/lang/String;
    new-instance v13, Lcom/ts/bt/BtExe$PbItem;

    .end local v13    # "map":Lcom/ts/bt/BtExe$PbItem;
    invoke-direct {v13}, Lcom/ts/bt/BtExe$PbItem;-><init>()V

    .line 2124
    .restart local v13    # "map":Lcom/ts/bt/BtExe$PbItem;
    iput-object v15, v13, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    .line 2125
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    .line 2126
    iput v9, v13, Lcom/ts/bt/BtExe$PbItem;->collect:I

    .line 2127
    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/ts/bt/BtExe$PbItem;->pinyin:Ljava/lang/String;

    .line 2128
    iput-object v11, v13, Lcom/ts/bt/BtExe$PbItem;->first_name:Ljava/lang/String;

    .line 2129
    iput-object v14, v13, Lcom/ts/bt/BtExe$PbItem;->middle_name:Ljava/lang/String;

    .line 2130
    iput-object v12, v13, Lcom/ts/bt/BtExe$PbItem;->given_name:Ljava/lang/String;

    .line 2131
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2133
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2135
    .end local v9    # "collect":I
    .end local v11    # "first_name":Ljava/lang/String;
    .end local v12    # "given_name":Ljava/lang/String;
    .end local v13    # "map":Lcom/ts/bt/BtExe$PbItem;
    .end local v14    # "middle_name":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "num":Ljava/lang/String;
    .end local v18    # "pinyin":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2136
    sget-object v2, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2137
    sget-object v2, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ts/bt/BtExe;->PbSort(Ljava/util/ArrayList;)V

    .line 2140
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor1":Landroid/database/Cursor;
    .end local v17    # "pbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/bt/BtExe$PbItem;>;"
    :cond_2
    return-void
.end method

.method public updatePhonebook(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "collect"    # I

    .prologue
    .line 1392
    sget-object v3, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v3, :cond_0

    .line 1393
    sget-object v3, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v3}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1394
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1396
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "collect"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    const-string v3, "phonebook"

    .line 1398
    const-string v4, "addr=? and name=? and num=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1399
    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    .line 1397
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1400
    .local v1, "isSuccess":I
    const-string v3, "lh"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSuccess="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1403
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "isSuccess":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public updatePlayPauseButton(B)V
    .locals 0
    .param p1, "playState"    # B

    .prologue
    .line 928
    sput-byte p1, Lcom/ts/bt/BtExe;->musicState:B

    .line 929
    return-void
.end method

.method public updatePlaybackStatus(BII)V
    .locals 3
    .param p1, "play_status"    # B
    .param p2, "song_len"    # I
    .param p3, "song_pos"    # I

    .prologue
    .line 933
    sget-boolean v0, Lcom/ts/bt/BtExe;->D:Z

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updatePlaybackStatus playState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 935
    const-string v2, ",bt.musicState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-byte v2, Lcom/ts/bt/BtExe;->musicState:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    sget-byte v0, Lcom/ts/bt/BtExe;->musicState:B

    if-eq p1, v0, :cond_1

    .line 939
    invoke-virtual {p0, p1}, Lcom/ts/bt/BtExe;->updatePlayPauseButton(B)V

    .line 941
    :cond_1
    return-void
.end method

.method public writeDeviceName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1096
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1097
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 1098
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteName+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v0, "BtExe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLocalAdapter.getName()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    return-void
.end method

.method public writeDevicePin(Ljava/lang/String;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1109
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    .line 1110
    const-string v2, "device_pin_data"

    const/4 v3, 0x0

    .line 1109
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1110
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1111
    .local v0, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PIN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1116
    return-void
.end method
