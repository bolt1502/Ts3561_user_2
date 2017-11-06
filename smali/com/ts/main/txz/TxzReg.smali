.class public Lcom/ts/main/txz/TxzReg;
.super Ljava/lang/Object;
.source "TxzReg.java"


# static fields
.field public static final BT_MAKECALL:I = 0x2

.field public static final BT_ONIDLE:I = 0x3

.field public static final BT_ONINCOMING:I = 0x0

.field public static final BT_ONOFFHOOK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TxzReg"

.field static bWinShow:Z

.field static m_TxzReg:Lcom/ts/main/txz/TxzReg;


# instance fields
.field private final DDBOX_CLOSE_XMLY:Ljava/lang/String;

.field private final DDBOX_OPEN:Ljava/lang/String;

.field private final DDBOX_OPEN_CZDH:Ljava/lang/String;

.field private final DDBOX_OPEN_DDBX:Ljava/lang/String;

.field private final DDBOX_OPEN_DLJY:Ljava/lang/String;

.field private final DDBOX_OPEN_HCZ:Ljava/lang/String;

.field private final DDBOX_OPEN_HUMNZVI:Ljava/lang/String;

.field private final DDBOX_OPEN_LK:Ljava/lang/String;

.field private final DDBOX_OPEN_MUSIC:Ljava/lang/String;

.field private final DDBOX_OPEN_QFLK:Ljava/lang/String;

.field private final DDBOX_OPEN_WZCX:Ljava/lang/String;

.field private final DDBOX_OPEN_XMLY:Ljava/lang/String;

.field private final TXZ_AM_FREQ_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_AUDIO_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_BT_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_DTV_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_DVD_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_DVR_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_RADIO_CMD:Ljava/lang/String;

.field private final TXZ_CLOSE_VIDEO_CMD:Ljava/lang/String;

.field private final TXZ_FM_FREQ_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_AUDIO_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_BT_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_DTV_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_DVD_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_DVR_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_NAVI_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_RADIO_CMD:Ljava/lang/String;

.field private final TXZ_OPEN_VIDEO_CMD:Ljava/lang/String;

.field private final TXZ_PLAY_LIST_CMD:Ljava/lang/String;

.field private final TXZ_PLAY_MODE_CANCEL_MUSIC_FAVOURITE:Ljava/lang/String;

.field private final TXZ_PLAY_MODE_LOOP_ALL:Ljava/lang/String;

.field private final TXZ_PLAY_MODE_MUSIC_FAVOURITE:Ljava/lang/String;

.field private final TXZ_PLAY_MODE_RANDOM_ALL:Ljava/lang/String;

.field private final TXZ_PLAY_MODE_SIGNLE_LOOP:Ljava/lang/String;

.field private final TXZ_SEND_WWATHER_DATA:Ljava/lang/String;

.field private final WENAVI_OPEN_WENAVI:Ljava/lang/String;

.field private final WENAVI_TO_AIM:Ljava/lang/String;

.field private final WENAVI_TO_SHARE:Ljava/lang/String;

.field WeNaviStringID:[I

.field public bInintOK:Z

.field bIsConnect:Z

.field bSync:Z

.field fhz:F

.field mAsrComplexSelectCallback:Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

.field private mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

.field private mCommandSenceTool:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

.field mEvc:Lcom/ts/MainUI/Evc;

.field mHz:I

.field private mMusicToolStatusListener:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

.field m_BtExe:Lcom/ts/bt/BtExe;

.field m_Txz:Lcom/txznet/sdk/TXZAsrManager;

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myContext:Landroid/content/Context;

.field myNavStatusListener:Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;

.field nIndex:I

.field nNaviType:I

.field nPowerState:I

.field nState:I

.field weNaviCmdStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/txz/TxzReg;->m_TxzReg:Lcom/ts/main/txz/TxzReg;

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/main/txz/TxzReg;->bWinShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "OPEN_NAVI"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_NAVI_CMD:Ljava/lang/String;

    .line 77
    const-string v0, "OPEN_FM_FREQ"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_FM_FREQ_CMD:Ljava/lang/String;

    .line 78
    const-string v0, "OPEN_AM_FREQ"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_AM_FREQ_CMD:Ljava/lang/String;

    .line 79
    const-string v0, "OPEN_PALY_LSIT"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_PLAY_LIST_CMD:Ljava/lang/String;

    .line 81
    const-string v0, "OPEN_RADIO"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_RADIO_CMD:Ljava/lang/String;

    .line 82
    const-string v0, "CLOSE_RADIO"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_RADIO_CMD:Ljava/lang/String;

    .line 84
    const-string v0, "OPEN_BT"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_BT_CMD:Ljava/lang/String;

    .line 85
    const-string v0, "CLOSE_BT"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_BT_CMD:Ljava/lang/String;

    .line 87
    const-string v0, "OPEN_DTV"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_DTV_CMD:Ljava/lang/String;

    .line 88
    const-string v0, "CLOSE_DTV"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_DTV_CMD:Ljava/lang/String;

    .line 90
    const-string v0, "OPEN_AUDIO"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_AUDIO_CMD:Ljava/lang/String;

    .line 91
    const-string v0, "CLOSE_AUDIO"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_AUDIO_CMD:Ljava/lang/String;

    .line 93
    const-string v0, "OPEN_VIDEO"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_VIDEO_CMD:Ljava/lang/String;

    .line 94
    const-string v0, "CLOSE_VIDEO"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_VIDEO_CMD:Ljava/lang/String;

    .line 96
    const-string v0, "OPEN_DVD"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_DVD_CMD:Ljava/lang/String;

    .line 97
    const-string v0, "CLOSE_DVD"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_DVD_CMD:Ljava/lang/String;

    .line 99
    const-string v0, "OPEN_DVR"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_OPEN_DVR_CMD:Ljava/lang/String;

    .line 100
    const-string v0, "CLOSE_DVR"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_CLOSE_DVR_CMD:Ljava/lang/String;

    .line 104
    const-string v0, "SINGLE_LOOP"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_PLAY_MODE_SIGNLE_LOOP:Ljava/lang/String;

    .line 105
    const-string v0, "LOOP_ALL"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_PLAY_MODE_LOOP_ALL:Ljava/lang/String;

    .line 106
    const-string v0, "RANDOM_LOOP"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_PLAY_MODE_RANDOM_ALL:Ljava/lang/String;

    .line 107
    const-string v0, "MUSIC_FAVOURITE"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_PLAY_MODE_MUSIC_FAVOURITE:Ljava/lang/String;

    .line 108
    const-string v0, "CANCEL_MUSIC_FAVOURITE"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_PLAY_MODE_CANCEL_MUSIC_FAVOURITE:Ljava/lang/String;

    .line 111
    const-string v0, "DDBOX_OPEN"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN:Ljava/lang/String;

    .line 112
    const-string v0, "DDBOX_OPEN_MUSIC"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_MUSIC:Ljava/lang/String;

    .line 113
    const-string v0, "DDBOX_OPEN_LK"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_LK:Ljava/lang/String;

    .line 114
    const-string v0, "DDBOX_OPEN_HUMNAVI"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_HUMNZVI:Ljava/lang/String;

    .line 115
    const-string v0, "DDBOX_OPEN_DDBX"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_DDBX:Ljava/lang/String;

    .line 116
    const-string v0, "DDBOX_OPEN_DDHCZ"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_HCZ:Ljava/lang/String;

    .line 117
    const-string v0, "DDBOX_OPEN_DDDLJY"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_DLJY:Ljava/lang/String;

    .line 119
    const-string v0, "DDBOX_CHECK_QFLK"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_QFLK:Ljava/lang/String;

    .line 121
    const-string v0, "OPEN_XMLY"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_XMLY:Ljava/lang/String;

    .line 122
    const-string v0, "CLOSE_XMLY"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_CLOSE_XMLY:Ljava/lang/String;

    .line 125
    const-string v0, "OPEN_CZDH"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_CZDH:Ljava/lang/String;

    .line 126
    const-string v0, "CLOSE_WZCX"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->DDBOX_OPEN_WZCX:Ljava/lang/String;

    .line 130
    const-string v0, "OPEN_WENAVI"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->WENAVI_OPEN_WENAVI:Ljava/lang/String;

    .line 131
    const-string v0, "WENAVI_TO_AIM"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->WENAVI_TO_AIM:Ljava/lang/String;

    .line 132
    const-string v0, "WENAVI_TO_SHARE"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->WENAVI_TO_SHARE:Ljava/lang/String;

    .line 135
    new-array v0, v7, [Ljava/lang/String;

    .line 136
    const-string v1, "OPEN_WENAVI"

    aput-object v1, v0, v4

    .line 137
    const-string v1, "WENAVI_TO_AIM"

    aput-object v1, v0, v5

    .line 138
    const-string v1, "WENAVI_TO_SHARE"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->weNaviCmdStrings:[Ljava/lang/String;

    .line 141
    new-array v0, v7, [I

    .line 142
    sget v1, Lcom/ts/MainUI/R$array;->open_wenavi:I

    aput v1, v0, v4

    .line 143
    sget v1, Lcom/ts/MainUI/R$array;->navi_to_aim:I

    aput v1, v0, v5

    .line 144
    sget v1, Lcom/ts/MainUI/R$array;->navi_to_sharer:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->WeNaviStringID:[I

    .line 150
    iput-boolean v4, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    .line 169
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 170
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->m_BtExe:Lcom/ts/bt/BtExe;

    .line 171
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->mEvc:Lcom/ts/MainUI/Evc;

    .line 246
    iput v4, p0, Lcom/ts/main/txz/TxzReg;->nIndex:I

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->map:Ljava/util/Map;

    .line 362
    iput-boolean v4, p0, Lcom/ts/main/txz/TxzReg;->bIsConnect:Z

    .line 363
    iput v2, p0, Lcom/ts/main/txz/TxzReg;->nState:I

    .line 364
    iput v2, p0, Lcom/ts/main/txz/TxzReg;->nPowerState:I

    .line 434
    iput-boolean v4, p0, Lcom/ts/main/txz/TxzReg;->bSync:Z

    .line 448
    const-string v0, "txz_send_weather_data"

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->TXZ_SEND_WWATHER_DATA:Ljava/lang/String;

    .line 967
    iput v4, p0, Lcom/ts/main/txz/TxzReg;->mHz:I

    .line 968
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/main/txz/TxzReg;->fhz:F

    .line 1666
    new-instance v0, Lcom/ts/main/txz/TxzReg$1;

    invoke-direct {v0, p0}, Lcom/ts/main/txz/TxzReg$1;-><init>(Lcom/ts/main/txz/TxzReg;)V

    .line 1794
    const-string v1, "TURNUP_VOL"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u8c03\u5927\u97f3\u91cf"

    aput-object v3, v2, v4

    const-string v3, "\u8c03\u9ad8\u97f3\u91cf"

    aput-object v3, v2, v5

    const-string v3, "\u589e\u5927\u97f3\u91cf"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/txz/TxzReg$1;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1795
    const-string v1, "TURNDN_VOL"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u964d\u4f4e\u97f3\u91cf"

    aput-object v3, v2, v4

    const-string v3, "\u8c03\u5c0f\u97f3\u91cf"

    aput-object v3, v2, v5

    const-string v3, "\u8c03\u4f4e\u97f3\u91cf"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1796
    const-string v1, "TURN_MUTE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u9759\u97f3\u9759\u97f3"

    aput-object v3, v2, v4

    const-string v3, "\u5173\u95ed\u58f0\u97f3"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1797
    const-string v1, "PLAY_PREV"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4e0a\u4e00\u9996"

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u4e00\u66f2"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1798
    const-string v1, "PLAY_NEXT"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4e0b\u4e00\u9996"

    aput-object v3, v2, v4

    const-string v3, "\u4e0b\u4e00\u66f2"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1799
    const-string v1, "PLAY_SONG"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u5f00\u59cb\u64ad\u653e"

    aput-object v3, v2, v4

    const-string v3, "\u64ad\u653e\u64ad\u653e"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1800
    const-string v1, "PAUSE_SONG"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u6682\u505c\u6682\u505c"

    aput-object v3, v2, v4

    const-string v3, "\u6682\u505c\u64ad\u653e"

    aput-object v3, v2, v5

    const-string v3, "\u505c\u6b62\u64ad\u653e"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1801
    const-string v1, "TOUCH_CEL"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u6211\u8981\u89e6\u6478\u77eb\u6b63"

    aput-object v3, v2, v4

    const-string v3, "\u6211\u8981\u77eb\u6b63\u89e6\u6478"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1802
    const-string v1, "DDH_TO_LAUNCHER"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u8fd4\u56de\u4e3b\u754c\u9762"

    aput-object v3, v2, v4

    const-string v3, "\u8fd4\u56de\u4e3b\u9875"

    aput-object v3, v2, v5

    const-string v3, "\u56de\u5230\u4e3b\u5c4f"

    aput-object v3, v2, v6

    const-string v3, "\u8fd4\u56de\u4e3b\u5c4f"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1803
    const-string v1, "TURN_DTM"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u6253\u5f00\u5c4f\u5e55"

    aput-object v3, v2, v4

    const-string v3, "\u542f\u52a8\u5c4f\u5e55"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    .line 1804
    const-string v1, "TURNOFF_DTM"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u5173\u95ed\u5c4f\u5e55"

    aput-object v3, v2, v4

    const-string v3, "\u7184\u706d\u5c4f\u5e55"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->mAsrComplexSelectCallback:Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    .line 1823
    new-instance v0, Lcom/ts/main/txz/TxzReg$2;

    invoke-direct {v0, p0}, Lcom/ts/main/txz/TxzReg$2;-><init>(Lcom/ts/main/txz/TxzReg;)V

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCommandSenceTool:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

    .line 1890
    iput v5, p0, Lcom/ts/main/txz/TxzReg;->nNaviType:I

    .line 1914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/txz/TxzReg;->myNavStatusListener:Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;

    .line 70
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/txz/TxzReg;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/ts/main/txz/TxzReg;->m_TxzReg:Lcom/ts/main/txz/TxzReg;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/ts/main/txz/TxzReg;

    invoke-direct {v0}, Lcom/ts/main/txz/TxzReg;-><init>()V

    sput-object v0, Lcom/ts/main/txz/TxzReg;->m_TxzReg:Lcom/ts/main/txz/TxzReg;

    .line 165
    :cond_0
    sget-object v0, Lcom/ts/main/txz/TxzReg;->m_TxzReg:Lcom/ts/main/txz/TxzReg;

    return-object v0
.end method

.method private InintDDHPlayIndex(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v1, "playlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-le v0, v4, :cond_0

    .line 562
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Lcom/txznet/sdk/TXZAsrManager;->regCommand(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 563
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 564
    return-void

    .line 557
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u64ad\u653e\u7b2c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u9996"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "str":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u542c\u7b2c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u9996"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "str2":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private InintRadio()V
    .locals 4

    .prologue
    .line 546
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    const/high16 v1, 0x42af0000    # 87.5f

    const/high16 v2, 0x42d80000    # 108.0f

    const-string v3, "OPEN_FM_FREQ"

    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommandForFM(FFLjava/lang/String;)Z

    .line 547
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    const/16 v1, 0x20a

    const/16 v2, 0x654

    const-string v3, "OPEN_AM_FREQ"

    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommandForAM(IILjava/lang/String;)Z

    .line 551
    return-void
.end method

.method private InitSenceTool()V
    .locals 3

    .prologue
    .line 1819
    invoke-static {}, Lcom/txznet/sdk/TXZSenceManager;->getInstance()Lcom/txznet/sdk/TXZSenceManager;

    move-result-object v0

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_APP:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    .line 1820
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->mCommandSenceTool:Lcom/txznet/sdk/TXZSenceManager$SenceTool;

    .line 1819
    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZSenceManager;->setSenceTool(Lcom/txznet/sdk/TXZSenceManager$SenceType;Lcom/txznet/sdk/TXZSenceManager$SenceTool;)V

    .line 1821
    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/main/txz/TxzReg;Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    return-void
.end method

.method static synthetic access$2(Lcom/ts/main/txz/TxzReg;Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg;->mMusicToolStatusListener:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    return-void
.end method

.method static synthetic access$3(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/ts/main/txz/TxzReg;->InintRadio()V

    return-void
.end method

.method static synthetic access$4(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1818
    invoke-direct {p0}, Lcom/ts/main/txz/TxzReg;->InitSenceTool()V

    return-void
.end method

.method public static closeWakeup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZConfigManager;->enableChangeWakeupKeywords(Z)V

    .line 276
    return-void
.end method

.method private initMusicTool()V
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$6;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$6;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZMusicManager;->setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V

    .line 814
    return-void
.end method

.method public static openWakeup()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u586b\u5165\u81ea\u5b9a\u4e49\u7684\u5524\u9192\u8bcd"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/txznet/sdk/TXZConfigManager;->enableChangeWakeupKeywords(Z)V

    .line 282
    return-void
.end method

.method private regCommandForAM(IILjava/lang/String;)Z
    .locals 7
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 2153
    const-string v3, "\u8c03\u5e45"

    .line 2154
    .local v3, "tiaopin":Ljava/lang/String;
    const-string v4, "AM"

    .line 2155
    .local v4, "tiaopin2":Ljava/lang/String;
    if-le p1, p2, :cond_0

    .line 2156
    const/4 v5, 0x0

    .line 2168
    :goto_0
    return v5

    .line 2158
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2159
    .local v0, "fres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "i":I
    :goto_1
    add-int/lit8 v5, p2, 0x9

    if-le v1, v5, :cond_1

    .line 2166
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v5

    invoke-virtual {v5, v0, p3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 2167
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2168
    const/4 v5, 0x1

    goto :goto_0

    .line 2160
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2161
    .local v2, "str":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2164
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2159
    add-int/lit8 v1, v1, 0x9

    goto :goto_1
.end method

.method private regCommandForFM(FFLjava/lang/String;)Z
    .locals 10
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 2107
    const-string v3, "\u8c03\u9891"

    .line 2109
    .local v3, "tiaopin":Ljava/lang/String;
    cmpl-float v4, p1, p2

    if-lez v4, :cond_0

    .line 2110
    const/4 v4, 0x0

    .line 2138
    :goto_0
    return v4

    .line 2112
    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    double-to-float p1, v4

    .line 2113
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    double-to-float p2, v4

    .line 2115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    .local v0, "fres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "i":F
    :goto_1
    float-to-double v4, v1

    float-to-double v6, p2

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-lez v4, :cond_1

    .line 2128
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 2129
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2131
    const/16 v1, 0x58

    .local v1, "i":I
    :goto_2
    const/16 v4, 0x6c

    if-le v1, v4, :cond_2

    .line 2137
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 2138
    const/4 v4, 0x1

    goto :goto_0

    .line 2118
    .local v1, "i":F
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2119
    .local v2, "str":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    const-string v4, "."

    const-string v5, "\u70b9"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2117
    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v6

    double-to-float v1, v4

    goto :goto_1

    .line 2132
    .end local v2    # "str":Ljava/lang/String;
    .local v1, "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2133
    .restart local v2    # "str":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method AddListenser()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    new-instance v1, Lcom/ts/main/txz/TxzReg$7;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$7;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZAsrManager;->addCommandListener(Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V

    .line 1513
    return-void
.end method

.method public AddMusicList(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TxzReg"

    const-string v1, "AddMusicList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method BackToLaucher()V
    .locals 2

    .prologue
    .line 958
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 959
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 962
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 965
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method GetResString(I)Ljava/lang/String;
    .locals 1
    .param p1, "nID"    # I

    .prologue
    .line 972
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 976
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public GetWeatherData(Ljava/lang/String;)V
    .locals 2
    .param p1, "strCity"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static {}, Lcom/txznet/sdk/TXZNetDataProvider;->getInstance()Lcom/txznet/sdk/TXZNetDataProvider;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$4;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$4;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, p1, v1}, Lcom/txznet/sdk/TXZNetDataProvider;->getWeatherInfo(Ljava/lang/String;Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;)V

    .line 479
    return-void
.end method

.method public Inint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "m_Context"    # Landroid/content/Context;
    .param p2, "mcuid"    # Ljava/lang/String;
    .param p3, "app_id"    # Ljava/lang/String;
    .param p4, "toke"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2001
    if-nez p2, :cond_0

    .line 2093
    :goto_0
    return-void

    .line 2005
    :cond_0
    const-string v0, "TxzReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txz initialize start=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 2007
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const-string v1, "com.iflytek.speechcloud"

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const-string v1, "com.iflytek.vflynote"

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 2011
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    .line 2014
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    .line 2016
    new-instance v1, Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-direct {v1, p3, p4}, Lcom/txznet/sdk/TXZConfigManager$InitParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setAppCustomId(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    move-result-object v1

    .line 2020
    invoke-virtual {v1, p2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setUUID(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    move-result-object v1

    .line 2022
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2023
    sget v3, Lcom/ts/MainUI/R$array;->txz_sdk_init_wakeup_keywords:I

    .line 2022
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2021
    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupKeywordsNew([Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    move-result-object v1

    .line 2024
    sget-object v2, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->TTS_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setTtsType(Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    move-result-object v1

    .line 2025
    sget-object v2, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->ASR_YUNZHISHENG:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setAsrType(Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    move-result-object v1

    .line 2026
    sget-object v2, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_NONE:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolType(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    move-result-object v1

    .line 2027
    new-instance v2, Lcom/ts/main/txz/TxzReg$11;

    invoke-direct {v2, p0}, Lcom/ts/main/txz/TxzReg$11;-><init>(Lcom/ts/main/txz/TxzReg;)V

    .line 2014
    invoke-virtual {v0, p1, v1, v2}, Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V

    goto :goto_0
.end method

.method public Inint0(Landroid/content/Context;)V
    .locals 6
    .param p1, "m_Context"    # Landroid/content/Context;

    .prologue
    .line 1875
    iget-boolean v3, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-nez v3, :cond_0

    .line 1877
    const/16 v3, 0x20

    new-array v0, v3, [B

    .line 1878
    .local v0, "appid":[B
    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->Getid32([B)I

    .line 1879
    const/16 v3, 0x28

    new-array v2, v3, [B

    .line 1880
    .local v2, "token":[B
    invoke-static {v2}, Lcom/yyw/ts70xhw/Mcu;->Getid40([B)I

    .line 1881
    const/16 v3, 0xe

    new-array v1, v3, [B

    .line 1882
    .local v1, "mcuid":[B
    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->GetSerialId([B)I

    .line 1883
    const-string v3, "TxzReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fiel not exit == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const-string v3, "TxzReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fiel not exit =="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/ts/main/txz/TxzReg;->Inint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .end local v0    # "appid":[B
    .end local v1    # "mcuid":[B
    .end local v2    # "token":[B
    :cond_0
    return-void
.end method

.method InintBT()V
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lcom/txznet/sdk/TXZCallManager;->getInstance()Lcom/txznet/sdk/TXZCallManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$5;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$5;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZCallManager;->setCallTool(Lcom/txznet/sdk/TXZCallManager$CallTool;)V

    .line 542
    return-void
.end method

.method public InintLinMin()V
    .locals 2

    .prologue
    .line 1650
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetXuNiDisc()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1664
    :goto_0
    return-void

    .line 1652
    :pswitch_0
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    const v1, -0x3fd33333    # -2.7f

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupThreshhold(F)V

    goto :goto_0

    .line 1655
    :pswitch_1
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    const v1, -0x3fc66666    # -2.9f

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupThreshhold(F)V

    goto :goto_0

    .line 1658
    :pswitch_2
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    const v1, -0x3fb9999a    # -3.1f

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupThreshhold(F)V

    goto :goto_0

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method InintNaviManage()V
    .locals 2

    .prologue
    .line 1919
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$10;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$10;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavTool;)V

    .line 1997
    return-void
.end method

.method PapaGoNaviToPoi(Lcom/txznet/sdk/bean/Poi;)V
    .locals 6
    .param p1, "MyPoi"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    const/4 v5, 0x0

    .line 1895
    const-string v1, "TxzReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyPoi.getName()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const-string v1, "TxzReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyPoi.getLat()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string v1, "TxzReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyPoi.getLng()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1899
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAPAGO_BROADCAST_RECV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2736

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1901
    const-string v1, "POINAME"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1902
    const-string v1, "LAT"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1903
    const-string v1, "LON"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1904
    const-string v1, "DEV"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1905
    const-string v1, "STYLE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1906
    const-string v1, "SOURCE_APP"

    const-string v2, "Third App"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1907
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1909
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1912
    :cond_0
    return-void
.end method

.method RegistUserDefault()V
    .locals 2

    .prologue
    .line 1815
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->mAsrComplexSelectCallback:Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZAsrManager;->useWakeupAsAsr(Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;)V

    .line 1817
    return-void
.end method

.method public SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V
    .locals 2
    .param p1, "nState"    # I
    .param p2, "con"    # Lcom/txznet/sdk/TXZCallManager$Contact;

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    if-eqz v0, :cond_0

    .line 412
    packed-switch p1, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    invoke-interface {v0, p2, v1, v1}, Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;->onIncoming(Lcom/txznet/sdk/TXZCallManager$Contact;ZZ)V

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;->onOffhook()V

    goto :goto_0

    .line 423
    :pswitch_2
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    invoke-interface {v0, p2}, Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;->onMakeCall(Lcom/txznet/sdk/TXZCallManager$Contact;)V

    goto :goto_0

    .line 426
    :pswitch_3
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;->onIdle()V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetKeyWordsWakeUp(Z)V
    .locals 4
    .param p1, "bWake"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    if-eqz p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 290
    sget v2, Lcom/ts/MainUI/R$array;->txz_sdk_init_wakeup_keywords:I

    .line 289
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/txznet/sdk/TXZConfigManager;->enableWakeup(Z)V

    .line 292
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/txznet/sdk/TXZConfigManager;->enableChangeWakeupKeywords(Z)V

    .line 293
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/txznet/sdk/TXZConfigManager;->setInstantAsrEnabled(Z)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZConfigManager;->enableChangeWakeupKeywords(Z)V

    .line 300
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZConfigManager;->enableWakeup(Z)V

    .line 301
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/TXZConfigManager;->setInstantAsrEnabled(Z)V

    goto :goto_0
.end method

.method public SetNaviType(Ljava/lang/String;)V
    .locals 2
    .param p1, "PackName"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "com.baidu.BaiduMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 223
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v0, "com.baidu.navi.hd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV_HD:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 226
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0

    .line 228
    :cond_3
    const-string v0, "com.baidu.navi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 229
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0

    .line 231
    :cond_4
    const-string v0, "com.autonavi.amapauto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP_CAR:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 232
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0

    .line 234
    :cond_5
    const-string v0, "com.autonavi.minimap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 235
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0

    .line 237
    :cond_6
    const-string v0, "com.autonavi.xmgd.navigator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 238
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0

    .line 240
    :cond_7
    const-string v0, "cld.navi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_KAILIDE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    .line 241
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto :goto_0
.end method

.method SetRecordBtnShow(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.myvoice.VoiceService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    :goto_0
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->FLOAT_NONE:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    .line 326
    invoke-virtual {v1, v2}, Lcom/txznet/sdk/TXZConfigManager;->showFloatTool(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)V

    .line 329
    return-void

    .line 315
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.ts.myvoice.VoiceService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public SetTXZState(I)V
    .locals 3
    .param p1, "nState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-eqz v0, :cond_0

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 263
    invoke-virtual {p0, v2}, Lcom/ts/main/txz/TxzReg;->SetKeyWordsWakeUp(Z)V

    .line 264
    invoke-virtual {p0, v2}, Lcom/ts/main/txz/TxzReg;->SetRecordBtnShow(Z)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/ts/main/txz/TxzReg;->SetKeyWordsWakeUp(Z)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/ts/main/txz/TxzReg;->SetRecordBtnShow(Z)V

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/ts/main/txz/TxzReg;->SetKeyWordsWakeUp(Z)V

    .line 256
    invoke-virtual {p0, v2}, Lcom/ts/main/txz/TxzReg;->SetRecordBtnShow(Z)V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/ts/main/txz/TxzReg;->SetKeyWordsWakeUp(Z)V

    .line 260
    invoke-virtual {p0, v1}, Lcom/ts/main/txz/TxzReg;->SetRecordBtnShow(Z)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method SetTXZToSleep()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "TxzReg"

    const-string v1, "SetTXZToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_BEFORE_SLEEP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 190
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZPowerManager;->notifyPowerAction(Lcom/txznet/sdk/TXZPowerManager$PowerAction;)V

    .line 192
    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZPowerManager;->releaseTXZ()V

    .line 193
    return-void
.end method

.method SetTXZWakeUp()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "TxzReg"

    const-string v1, "SetTXZWakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$3;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$3;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZPowerManager;->reinitTXZ(Ljava/lang/Runnable;)V

    .line 214
    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/txznet/sdk/TXZPowerManager$PowerAction;->POWER_ACTION_WAKEUP:Lcom/txznet/sdk/TXZPowerManager$PowerAction;

    .line 214
    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZPowerManager;->notifyPowerAction(Lcom/txznet/sdk/TXZPowerManager$PowerAction;)V

    .line 216
    return-void
.end method

.method SetUserCommand()V
    .locals 4

    .prologue
    .line 817
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 819
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->weNaviCmdStrings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 827
    sget v1, Lcom/ts/main/common/MainSet;->nPlayer:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 829
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 830
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_glsx_ddbox:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 831
    const-string v3, "DDBOX_OPEN"

    .line 829
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 835
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 836
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_glsx_ddbox_lk:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 837
    const-string v3, "DDBOX_OPEN_LK"

    .line 835
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 838
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 839
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_czdh:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 840
    const-string v3, "OPEN_CZDH"

    .line 838
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 841
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 842
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_wzch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 843
    const-string v3, "CLOSE_WZCX"

    .line 841
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 849
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 850
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_glsx_ddbox_HumNavi:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 851
    const-string v3, "DDBOX_OPEN_HUMNAVI"

    .line 849
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 853
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_glsx_ddbox_ddbx:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 854
    const-string v3, "DDBOX_OPEN_DDBX"

    .line 852
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 855
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 856
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_glsx_ddbox_hcz:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 857
    const-string v3, "DDBOX_OPEN_DDHCZ"

    .line 855
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 858
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 859
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_glsx_ddbox_dljy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 860
    const-string v3, "DDBOX_OPEN_DDDLJY"

    .line 858
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 865
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 866
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->glsx_ddbox_qflk:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 867
    const-string v3, "DDBOX_CHECK_QFLK"

    .line 865
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 869
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 870
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_xmly:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 871
    const-string v3, "OPEN_XMLY"

    .line 869
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 872
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 873
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->close_xmly:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 874
    const-string v3, "CLOSE_XMLY"

    .line 872
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 880
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_navi:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 881
    const-string v3, "OPEN_NAVI"

    .line 879
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 883
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 884
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_radio:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 885
    const-string v3, "OPEN_RADIO"

    .line 883
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 886
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 887
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 888
    sget v3, Lcom/ts/MainUI/R$array;->close_radio:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 889
    const-string v3, "CLOSE_RADIO"

    .line 886
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 891
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 892
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_bt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 893
    const-string v3, "OPEN_BT"

    .line 891
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 894
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 895
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->close_bt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 896
    const-string v3, "CLOSE_BT"

    .line 894
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 898
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 899
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_cmmb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 900
    const-string v3, "OPEN_DTV"

    .line 898
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 901
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 902
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->close_cmmb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 903
    const-string v3, "CLOSE_DTV"

    .line 901
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 905
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 906
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_audio:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 907
    const-string v3, "OPEN_AUDIO"

    .line 905
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 908
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 909
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 910
    sget v3, Lcom/ts/MainUI/R$array;->close_audio:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 911
    const-string v3, "CLOSE_AUDIO"

    .line 908
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 913
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 914
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 915
    const-string v3, "OPEN_VIDEO"

    .line 913
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 916
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 917
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 918
    sget v3, Lcom/ts/MainUI/R$array;->close_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 919
    const-string v3, "CLOSE_VIDEO"

    .line 916
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 921
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 922
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_dvd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 923
    const-string v3, "OPEN_DVD"

    .line 921
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 924
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 925
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->close_dvd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 926
    const-string v3, "CLOSE_DVD"

    .line 924
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 928
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 929
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$array;->open_dvr:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 930
    const-string v3, "OPEN_DVR"

    .line 928
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 955
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 821
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_Txz:Lcom/txznet/sdk/TXZAsrManager;

    .line 822
    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/main/txz/TxzReg;->WeNaviStringID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 823
    iget-object v3, p0, Lcom/ts/main/txz/TxzReg;->weNaviCmdStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 821
    invoke-virtual {v1, v2, v3}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method SetVoiceState()V
    .locals 2

    .prologue
    .line 1516
    invoke-static {}, Lcom/txznet/sdk/TXZSysManager;->getInstance()Lcom/txznet/sdk/TXZSysManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$8;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$8;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZSysManager;->setVolumeMgrTool(Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;)V

    .line 1564
    invoke-static {}, Lcom/txznet/sdk/TXZSysManager;->getInstance()Lcom/txznet/sdk/TXZSysManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$9;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$9;-><init>(Lcom/ts/main/txz/TxzReg;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZSysManager;->setMuteAllTool(Lcom/txznet/sdk/TXZSysManager$MuteAllTool;)V

    .line 1646
    return-void
.end method

.method SetWeNaviCmd(I)V
    .locals 2
    .param p1, "Value"    # I

    .prologue
    .line 993
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 994
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 996
    const-string v1, "com.forfan.speech_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 998
    return-void
.end method

.method public SpeakText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2173
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ts/main/common/MainSet;->isZh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    if-eqz p1, :cond_0

    .line 2177
    invoke-static {}, Lcom/txznet/sdk/TXZTtsManager;->getInstance()Lcom/txznet/sdk/TXZTtsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZTtsManager;->speakText(Ljava/lang/String;)I

    .line 2180
    :cond_0
    return-void
.end method

.method public SyncBlueToothContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZCallManager$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "lst2":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/TXZCallManager$Contact;>;"
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lcom/txznet/sdk/TXZCallManager;->getInstance()Lcom/txznet/sdk/TXZCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZCallManager;->syncContacts(Ljava/util/Collection;)V

    .line 440
    const-string v0, "TxzReg"

    const-string v1, "SyncBlueToothContacts ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bSync:Z

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v0, "TxzReg"

    const-string v1, "SyncBlueToothContacts false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Task(I)I
    .locals 3
    .param p1, "nParat"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-nez v0, :cond_1

    .line 368
    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    .line 387
    :cond_1
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-eqz v0, :cond_2

    .line 388
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bIsConnect:Z

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg;->m_BtExe:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 390
    const-string v0, "TxzReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bIsConnect ==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ts/main/txz/TxzReg;->bIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "TxzReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallToolStatusListener ==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->m_BtExe:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bIsConnect:Z

    .line 394
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->m_BtExe:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;->onEnabled()V

    .line 407
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg;->mCallToolStatusListener:Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;

    const-string v1, "\u8bf7\u5148\u8fde\u63a5\u84dd\u7259"

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;->onDisabled(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public TxzStartMic(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    if-eqz v0, :cond_0

    .line 175
    sget-boolean v0, Lcom/ts/main/txz/TxzReg;->bWinShow:Z

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrManager;->cancel()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrManager;->triggerRecordButton()V

    goto :goto_0
.end method
