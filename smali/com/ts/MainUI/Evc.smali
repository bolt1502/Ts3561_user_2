.class public Lcom/ts/MainUI/Evc;
.super Ljava/lang/Object;
.source "Evc.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/MainUI/Evc$MyOhoneListener;
    }
.end annotation


# static fields
.field private static final COMMON_PARA_SIZE:I = 0x18

.field private static final CONSTANT_256:I = 0x100

.field private static final CONSTANT_32:I = 0x20

.field private static final DATA_SIZE:I = 0x5a4

.field public static final MAX_VOL_GAIN:I = 0x58

.field public static final PHONE_CALLIN:I = 0x1

.field public static final PHONE_IDLE:I = 0x0

.field public static final PHONE_TALKING:I = 0x2

.field public static final POP_MUTE_DELAYTIME:I = 0x1e

.field private static TAG:Ljava/lang/String; = null

.field public static final V0L_GAIN_MAX:I = 0x64

.field private static final VOLUME_SIZE:I = 0x16

.field public static final VOL_MAX:I = 0x1e

.field public static final WORKMODE_BT_VOL:I = 0x13

.field public static final WORKMODE_NAVI_VOL:I = 0x12

.field public static bNaviVol:Z

.field private static mEvc:Lcom/ts/MainUI/Evc;

.field public static mSystemState:I

.field public static nNaviSpeeShow:I

.field public static nNaviSpeeking:I


# instance fields
.field public Alarm_vol_max:I

.field public Gis_vol_max:I

.field public NaviVoiceDelay:I

.field public Other_vol_max:I

.field public PhoneState:I

.field public Ring_vol_max:I

.field public Sys_vol_max:I

.field bNaviforce:Z

.field private g_VolDbtb:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mEvcCallBack:Lcom/ts/MainUI/EvcCallBack;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_context:Landroid/content/Context;

.field nCheckNavi:I

.field public nWorkModeMute:I

.field public nWorkModeReq:I

.field public volume_max:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    .line 39
    sput v0, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    .line 40
    sput-boolean v0, Lcom/ts/MainUI/Evc;->bNaviVol:Z

    .line 43
    sput v0, Lcom/ts/MainUI/Evc;->mSystemState:I

    .line 51
    const-string v0, "Evcsetting"

    sput-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/Evc;->mEvc:Lcom/ts/MainUI/Evc;

    .line 973
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/16 v5, 0x64

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v3, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    .line 45
    iput v3, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    .line 47
    iput v3, p0, Lcom/ts/MainUI/Evc;->nWorkModeMute:I

    .line 53
    iput v4, p0, Lcom/ts/MainUI/Evc;->volume_max:I

    .line 54
    iput v4, p0, Lcom/ts/MainUI/Evc;->Other_vol_max:I

    .line 55
    iput v5, p0, Lcom/ts/MainUI/Evc;->Sys_vol_max:I

    .line 56
    const/16 v0, 0xf

    iput v0, p0, Lcom/ts/MainUI/Evc;->Alarm_vol_max:I

    .line 57
    iput v5, p0, Lcom/ts/MainUI/Evc;->Ring_vol_max:I

    .line 58
    iput v5, p0, Lcom/ts/MainUI/Evc;->Gis_vol_max:I

    .line 61
    const/16 v0, 0x1f

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v7, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x12

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x17

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 62
    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 63
    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x57

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x5e

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x63

    aput v2, v0, v1

    .line 64
    aput v5, v0, v4

    iput-object v0, p0, Lcom/ts/MainUI/Evc;->g_VolDbtb:[I

    .line 88
    iput-object v6, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    .line 89
    iput-object v6, p0, Lcom/ts/MainUI/Evc;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 94
    iput v3, p0, Lcom/ts/MainUI/Evc;->nCheckNavi:I

    .line 160
    iput v3, p0, Lcom/ts/MainUI/Evc;->PhoneState:I

    .line 242
    iput-object v6, p0, Lcom/ts/MainUI/Evc;->mEvcCallBack:Lcom/ts/MainUI/EvcCallBack;

    .line 543
    iput-boolean v3, p0, Lcom/ts/MainUI/Evc;->bNaviforce:Z

    .line 17
    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/Evc;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/ts/MainUI/Evc;->mEvc:Lcom/ts/MainUI/Evc;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/ts/MainUI/Evc;

    invoke-direct {v0}, Lcom/ts/MainUI/Evc;-><init>()V

    sput-object v0, Lcom/ts/MainUI/Evc;->mEvc:Lcom/ts/MainUI/Evc;

    .line 82
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->mEvc:Lcom/ts/MainUI/Evc;

    return-object v0
.end method

.method private GetVolGain(II)I
    .locals 1
    .param p1, "nVol"    # I
    .param p2, "VolMax"    # I

    .prologue
    .line 711
    if-gez p2, :cond_0

    .line 713
    const/16 p2, 0x1e

    .line 715
    :cond_0
    if-le p1, p2, :cond_1

    .line 717
    move p1, p2

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->g_VolDbtb:[I

    aget v0, v0, p1

    return v0
.end method

.method private IsNaviState()Z
    .locals 4

    .prologue
    .line 537
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 539
    .local v0, "getGISAudiostatus":Ljava/lang/Boolean;
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGISAudiostatus == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private SetAlarmVolume(I)I
    .locals 3
    .param p1, "u4Vol"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    .line 866
    const/4 v2, 0x0

    .line 865
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 867
    invoke-static {p1}, Lcom/yyw/ts70xhw/StSet;->SetAvol(I)I

    .line 873
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 869
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_RING"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetBtMute(Z)I
    .locals 4
    .param p1, "bMute"    # Z

    .prologue
    const/4 v0, 0x0

    .line 772
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 775
    const/4 v0, 0x1

    .line 779
    :goto_0
    return v0

    .line 778
    :cond_0
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAudioManager==null SetGisMute"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetBtVolume(I)I
    .locals 6
    .param p1, "u4Vol"    # I

    .prologue
    const/4 v5, 0x0

    .line 784
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetBtVolume"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "nVol":I
    const/16 v1, 0xf

    if-gt p1, v1, :cond_0

    .line 789
    int-to-double v1, p1

    const-wide v3, 0x4016666666666666L    # 5.6

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 795
    :goto_0
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 800
    .end local v0    # "nVol":I
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 793
    .restart local v0    # "nVol":I
    :cond_0
    iget v1, p0, Lcom/ts/MainUI/Evc;->Other_vol_max:I

    add-int/lit8 v1, v1, -0xf

    sub-int v1, p1, v1

    add-int/lit8 v0, v1, 0x55

    goto :goto_0

    .line 798
    .end local v0    # "nVol":I
    :cond_1
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAudioManager==null STREAM_BLUETOOTH_SCO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private SetGisVolMode(I)V
    .locals 0
    .param p1, "nMode"    # I

    .prologue
    .line 737
    return-void
.end method

.method private SetGisVolume(I)I
    .locals 3
    .param p1, "u4Vol"    # I

    .prologue
    .line 756
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetGisVolume=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    .line 760
    const/4 v2, 0x0

    .line 759
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 761
    invoke-static {p1}, Lcom/yyw/ts70xhw/StSet;->SetNvol(I)I

    .line 767
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 765
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_GIS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetMicDigitalEnhance(I)Z
    .locals 12
    .param p1, "inputValue"    # I

    .prologue
    const/16 v11, 0x5a4

    const/4 v8, 0x0

    .line 978
    if-ltz p1, :cond_0

    const/16 v9, 0xf

    if-le p1, v9, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return v8

    .line 984
    :cond_1
    new-array v2, v11, [B

    .line 985
    .local v2, "mData":[B
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    if-lt v5, v11, :cond_2

    .line 989
    invoke-static {v2, v11}, Landroid/media/AudioSystem;->getEmParameter([BI)I

    move-result v7

    .line 990
    .local v7, "ret":I
    if-nez v7, :cond_0

    .line 995
    div-int/lit16 v0, p1, 0x100

    .line 996
    .local v0, "high":I
    rem-int/lit16 v1, p1, 0x100

    .line 999
    .local v1, "low":I
    const/4 v3, 0x2

    .line 1000
    .local v3, "mModeIndex":I
    const/4 v4, 0x7

    .line 1002
    .local v4, "mParaIndex":I
    const/16 v9, 0x5c

    int-to-byte v10, v1

    .line 1001
    aput-byte v10, v2, v9

    .line 1004
    const/16 v9, 0x5d

    int-to-byte v10, v0

    .line 1003
    aput-byte v10, v2, v9

    .line 1006
    invoke-static {v2, v11}, Landroid/media/AudioSystem;->setEmParameter([BI)I

    move-result v6

    .line 1007
    .local v6, "result":I
    if-nez v6, :cond_0

    .line 1011
    const/4 v8, 0x1

    goto :goto_0

    .line 986
    .end local v0    # "high":I
    .end local v1    # "low":I
    .end local v3    # "mModeIndex":I
    .end local v4    # "mParaIndex":I
    .end local v6    # "result":I
    .end local v7    # "ret":I
    :cond_2
    aput-byte v8, v2, v5

    .line 985
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private SetMusicVolume(I)I
    .locals 4
    .param p1, "u4Vol"    # I

    .prologue
    .line 898
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMuscVolume"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 902
    iget v2, p0, Lcom/ts/MainUI/Evc;->volume_max:I

    invoke-direct {p0, p1, v2}, Lcom/ts/MainUI/Evc;->GetVolGain(II)I

    move-result v2

    const/4 v3, 0x0

    .line 901
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 907
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 904
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_MUSIC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetRingVolume(I)I
    .locals 3
    .param p1, "u4Vol"    # I

    .prologue
    .line 824
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetRingVolume="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    .line 827
    const/4 v2, 0x0

    .line 826
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 828
    invoke-static {p1}, Lcom/yyw/ts70xhw/StSet;->SetRvol(I)I

    .line 832
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 830
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_RING"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetSystemVolume(I)I
    .locals 4
    .param p1, "u4Vol"    # I

    .prologue
    const/4 v3, 0x1

    .line 806
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    .line 809
    const/4 v1, 0x0

    .line 808
    invoke-virtual {v0, v3, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 810
    invoke-static {p1}, Lcom/yyw/ts70xhw/StSet;->SetSvol(I)I

    .line 819
    :goto_0
    return v3

    .line 816
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private mtkdsp_send_init()V
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/ts/MainUI/Evc;->SetMicGain()V

    .line 690
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetGisVolMode(I)V

    .line 694
    return-void
.end method

.method private mtkdsp_send_lud(I)V
    .locals 0
    .param p1, "lud"    # I

    .prologue
    .line 705
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->LudSet(I)I

    .line 706
    return-void
.end method

.method private mtkdsp_send_micgain(I)V
    .locals 1
    .param p1, "gain"    # I

    .prologue
    .line 699
    const/16 v0, 0x3f

    if-le p1, v0, :cond_0

    .line 700
    const/16 p1, 0x25

    .line 703
    :cond_0
    return-void
.end method


# virtual methods
.method public AddNaviWhileList(Ljava/lang/String;)V
    .locals 4
    .param p1, "navipath"    # Ljava/lang/String;

    .prologue
    .line 878
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 879
    const-string v0, "AudioAddWhiteListName="

    .line 880
    .local v0, "addGisName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AddNaviWhileList=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 885
    .end local v0    # "addGisName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public ChechNaviStream()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 126
    .local v0, "nVol":I
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 128
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nVol=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StSet.GetNvol()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v0}, Lcom/yyw/ts70xhw/StSet;->SetNvol(I)I

    .line 133
    .end local v0    # "nVol":I
    :cond_0
    return-void
.end method

.method CheckVolMax()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v3, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 137
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/MainUI/Evc;->Sys_vol_max:I

    .line 138
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/MainUI/Evc;->Alarm_vol_max:I

    .line 139
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/MainUI/Evc;->Ring_vol_max:I

    .line 140
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/ts/MainUI/Evc;->Gis_vol_max:I

    .line 141
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sys_vol_max=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/Evc;->Sys_vol_max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_MUSIC=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_MUSIC=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_GIS=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_GIS=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_BLUETOOTH_SCO=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_BLUETOOTH_SCO=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_ALARM=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_ALARM=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_RING=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_RING=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_SYSTEM=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_SYSTEM=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_NOTIFICATION=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_NOTIFICATION=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioManager.STREAM_SYSTEM_ENFORCED=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStreamMaxVolume AudioManager.STREAM_SYSTEM_ENFORCED=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public DelNaviWhileList(Ljava/lang/String;)V
    .locals 4
    .param p1, "navipath"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 889
    const-string v0, "AudioDelWhiteListName="

    .line 890
    .local v0, "delGisName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DelNaviWhileList=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 895
    .end local v0    # "delGisName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public Evol_vol_tune(I)V
    .locals 6
    .param p1, "updn"    # I

    .prologue
    const/4 v5, 0x1

    .line 487
    sget-object v2, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Evol_vol_tune == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nNaviSpeeking="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nNaviSpeeShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "nVol":I
    sget-boolean v2, Lcom/ts/MainUI/Evc;->bNaviVol:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    if-eq v2, v5, :cond_0

    sget v2, Lcom/ts/MainUI/Evc;->nNaviSpeeShow:I

    if-lez v2, :cond_4

    .line 492
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v1

    .line 493
    if-ne p1, v5, :cond_2

    .line 495
    add-int/lit8 v2, v1, 0x3

    iget v3, p0, Lcom/ts/MainUI/Evc;->Gis_vol_max:I

    if-ge v2, v3, :cond_1

    .line 497
    add-int/lit8 v1, v1, 0x3

    .line 515
    :goto_0
    invoke-virtual {p0, v1}, Lcom/ts/MainUI/Evc;->evol_navivol_set(I)V

    .line 533
    :goto_1
    return-void

    .line 501
    :cond_1
    iget v1, p0, Lcom/ts/MainUI/Evc;->Gis_vol_max:I

    .line 503
    goto :goto_0

    .line 506
    :cond_2
    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    .line 508
    add-int/lit8 v1, v1, -0x3

    .line 509
    goto :goto_0

    .line 512
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 519
    :cond_4
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMediaOrBlue()I

    move-result v0

    .line 520
    .local v0, "nSta":I
    invoke-static {v0, p1}, Lcom/yyw/ts70xhw/Iop;->AdjVolume(II)I

    .line 521
    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    .line 522
    if-ne v0, v5, :cond_5

    .line 524
    invoke-direct {p0, v1}, Lcom/ts/MainUI/Evc;->SetBtVolume(I)I

    goto :goto_1

    .line 528
    :cond_5
    invoke-direct {p0, v1}, Lcom/ts/MainUI/Evc;->SetMusicVolume(I)I

    goto :goto_1
.end method

.method public GetMute()I
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    return v0
.end method

.method public GetWorkMode()I
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    return v0
.end method

.method public InintEvc(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 198
    iput-object p1, p0, Lcom/ts/MainUI/Evc;->m_context:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->m_context:Landroid/content/Context;

    .line 200
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 199
    iput-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    .line 201
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMyContext mAudioManager=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->m_context:Landroid/content/Context;

    .line 207
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 206
    iput-object v0, p0, Lcom/ts/MainUI/Evc;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/ts/MainUI/Evc$MyOhoneListener;

    invoke-direct {v1, p0}, Lcom/ts/MainUI/Evc$MyOhoneListener;-><init>(Lcom/ts/MainUI/Evc;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 210
    invoke-virtual {p0}, Lcom/ts/MainUI/Evc;->CheckVolMax()V

    .line 214
    invoke-virtual {p0, v3}, Lcom/ts/MainUI/Evc;->SetNotificationVoume(I)I

    .line 215
    invoke-virtual {p0, v3}, Lcom/ts/MainUI/Evc;->SetSystemEnforceVoume(I)I

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetMusicVolume(I)I

    .line 217
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetNvol()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetGisVolume(I)I

    .line 218
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetBtVolume(I)I

    .line 219
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetSvol()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetSystemVolume(I)I

    .line 220
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetRvol()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetRingVolume(I)I

    .line 221
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAvol()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetAlarmVolume(I)I

    .line 223
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StSet.GetWorkMode() == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public SetEvcCallBack(Lcom/ts/MainUI/EvcCallBack;)V
    .locals 0
    .param p1, "cb"    # Lcom/ts/MainUI/EvcCallBack;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ts/MainUI/Evc;->mEvcCallBack:Lcom/ts/MainUI/EvcCallBack;

    .line 247
    return-void
.end method

.method public SetGisMute(Z)I
    .locals 3
    .param p1, "bMute"    # Z

    .prologue
    .line 742
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 745
    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    .line 748
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null SetGisMute"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetMicGain()V
    .locals 4

    .prologue
    .line 673
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetMicGain"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBtMicGain()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBtMicGain()I

    move-result v1

    add-int/lit8 v0, v1, -0x21

    .line 675
    .local v0, "nGain":I
    if-gez v0, :cond_1

    .line 677
    const/4 v0, 0x0

    .line 683
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetMicDigitalEnhance(I)Z

    .line 685
    return-void

    .line 679
    :cond_1
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 681
    const/16 v0, 0xf

    goto :goto_0
.end method

.method public SetMusicVolumeTest(I)V
    .locals 3
    .param p1, "u4Vol"    # I

    .prologue
    .line 913
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMusicVolumeTest STREAM_MUSIC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 916
    const/4 v2, 0x0

    .line 915
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 920
    :goto_0
    return-void

    .line 918
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_MUSIC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetNaviMixScal(I)I
    .locals 3
    .param p1, "nScal"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->setAudPolicyStrategy(III)V

    .line 230
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public SetNotificationVoume(I)I
    .locals 3
    .param p1, "u4Vol"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    .line 838
    const/4 v2, 0x0

    .line 837
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 845
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 840
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_NOTIFICATION"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetSystemEnforceVoume(I)I
    .locals 3
    .param p1, "u4Vol"    # I

    .prologue
    .line 850
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x7

    .line 852
    const/4 v2, 0x0

    .line 851
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 859
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 854
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager==null STREAM_SYSTEM_ENFORCED"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetVolAllChannelGain(I)V
    .locals 0
    .param p1, "nVolGain"    # I

    .prologue
    .line 337
    return-void
.end method

.method public evol_Alarmvol_set(I)V
    .locals 0
    .param p1, "vol"    # I

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/ts/MainUI/Evc;->SetAlarmVolume(I)I

    .line 412
    return-void
.end method

.method public evol_alarmvol_tune(I)V
    .locals 2
    .param p1, "updn"    # I

    .prologue
    .line 444
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAvol()I

    move-result v0

    .line 445
    .local v0, "nVol":I
    if-nez p1, :cond_1

    .line 447
    if-lez v0, :cond_0

    .line 449
    add-int/lit8 v0, v0, -0x1

    .line 461
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetAlarmVolume(I)I

    .line 462
    return-void

    .line 456
    :cond_1
    iget v1, p0, Lcom/ts/MainUI/Evc;->Alarm_vol_max:I

    if-ge v0, v1, :cond_0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public evol_aux_hold()V
    .locals 0

    .prologue
    .line 648
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->AuxHold()I

    .line 650
    return-void
.end method

.method public evol_aux_release()V
    .locals 0

    .prologue
    .line 653
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->AuxRelease()I

    .line 654
    return-void
.end method

.method public evol_bal_def()V
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 618
    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->BalSet(I)I

    .line 619
    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->FadSet(I)I

    .line 620
    return-void
.end method

.method public evol_bal_set(I)V
    .locals 0
    .param p1, "bal"    # I

    .prologue
    .line 594
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->BalSet(I)I

    .line 595
    return-void
.end method

.method public evol_bal_tune(I)V
    .locals 0
    .param p1, "updn"    # I

    .prologue
    .line 599
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->BalAdj(I)I

    .line 601
    return-void
.end method

.method public evol_blue_set(I)V
    .locals 0
    .param p1, "onoff"    # I

    .prologue
    .line 590
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->BlueSpeaking(I)I

    .line 591
    return-void
.end method

.method public evol_btvol_set(I)V
    .locals 1
    .param p1, "vol"    # I

    .prologue
    .line 367
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/yyw/ts70xhw/Iop;->SetVolume(II)I

    .line 368
    invoke-direct {p0, p1}, Lcom/ts/MainUI/Evc;->SetBtVolume(I)I

    .line 369
    return-void
.end method

.method public evol_ch51_set(I)V
    .locals 0
    .param p1, "onoff"    # I

    .prologue
    .line 615
    return-void
.end method

.method public evol_eband_set(II)V
    .locals 0
    .param p1, "band"    # I
    .param p2, "val"    # I

    .prologue
    .line 623
    packed-switch p1, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 626
    :pswitch_0
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->BasSet(I)I

    goto :goto_0

    .line 629
    :pswitch_1
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->MidSet(I)I

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-static {p2}, Lcom/yyw/ts70xhw/Iop;->TreSet(I)I

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public evol_eqm_set(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 658
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->EqmSet(I)I

    .line 659
    return-void
.end method

.method public evol_fad_set(I)V
    .locals 0
    .param p1, "fad"    # I

    .prologue
    .line 605
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->FadSet(I)I

    .line 606
    return-void
.end method

.method public evol_fad_tune(I)V
    .locals 0
    .param p1, "updn"    # I

    .prologue
    .line 610
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->FadAdj(I)I

    .line 611
    return-void
.end method

.method public evol_lud_set(I)V
    .locals 0
    .param p1, "lud"    # I

    .prologue
    .line 663
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->LudSet(I)I

    .line 664
    return-void
.end method

.method public evol_mediavol_set(I)V
    .locals 1
    .param p1, "vol"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/yyw/ts70xhw/Iop;->SetVolume(II)I

    .line 357
    invoke-direct {p0, p1}, Lcom/ts/MainUI/Evc;->SetMusicVolume(I)I

    .line 358
    return-void
.end method

.method public evol_mut_set(I)V
    .locals 0
    .param p1, "onoff"    # I

    .prologue
    .line 397
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->SetMute(I)I

    .line 398
    return-void
.end method

.method public evol_navi_set(I)V
    .locals 2
    .param p1, "onoff"    # I

    .prologue
    const/4 v1, 0x0

    .line 547
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 549
    invoke-virtual {p0, v1}, Lcom/ts/MainUI/Evc;->SetGisMute(Z)I

    .line 550
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->NaviSpeaking(I)I

    .line 551
    sput p1, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    .line 552
    iput v1, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    .line 568
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/ts/MainUI/Evc;->bNaviforce:Z

    if-nez v0, :cond_1

    .line 559
    const/16 v0, 0x32

    iput v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    goto :goto_0

    .line 563
    :cond_1
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    goto :goto_0
.end method

.method public evol_navi_set_force(I)V
    .locals 2
    .param p1, "onoff"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    if-ne p1, v0, :cond_0

    .line 573
    invoke-virtual {p0, v1}, Lcom/ts/MainUI/Evc;->SetGisMute(Z)I

    .line 574
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->NaviSpeaking(I)I

    .line 575
    sput p1, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    .line 576
    iput v1, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    .line 577
    iput-boolean v0, p0, Lcom/ts/MainUI/Evc;->bNaviforce:Z

    .line 585
    :goto_0
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    .line 583
    iput-boolean v1, p0, Lcom/ts/MainUI/Evc;->bNaviforce:Z

    goto :goto_0
.end method

.method public evol_navivol_set(I)V
    .locals 0
    .param p1, "vol"    # I

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/ts/MainUI/Evc;->SetGisVolume(I)I

    .line 363
    return-void
.end method

.method public evol_popmute_clr(I)V
    .locals 0
    .param p1, "workmode"    # I

    .prologue
    .line 347
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->PopMuteClr(I)I

    .line 348
    return-void
.end method

.method public evol_popmute_clr_force(I)V
    .locals 0
    .param p1, "workmode"    # I

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/ts/MainUI/Evc;->evol_popmute_clr(I)V

    .line 352
    return-void
.end method

.method public evol_popmute_set(I)V
    .locals 0
    .param p1, "workmode"    # I

    .prologue
    .line 341
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->PopMuteSet(I)I

    .line 342
    return-void
.end method

.method public evol_rds_Release()V
    .locals 0

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    .line 645
    return-void
.end method

.method public evol_rds_hold()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public evol_ringvol_set(I)V
    .locals 0
    .param p1, "vol"    # I

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/ts/MainUI/Evc;->SetRingVolume(I)I

    .line 405
    return-void
.end method

.method public evol_ringvol_tune(I)V
    .locals 2
    .param p1, "updn"    # I

    .prologue
    .line 425
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetRvol()I

    move-result v0

    .line 426
    .local v0, "nVol":I
    if-nez p1, :cond_1

    .line 428
    if-lez v0, :cond_0

    .line 430
    add-int/lit8 v0, v0, -0x1

    .line 440
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetRingVolume(I)I

    .line 441
    return-void

    .line 435
    :cond_1
    iget v1, p0, Lcom/ts/MainUI/Evc;->Ring_vol_max:I

    if-ge v0, v1, :cond_0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public evol_sub_set(I)V
    .locals 0
    .param p1, "sub"    # I

    .prologue
    .line 669
    return-void
.end method

.method public evol_systemvol_set(I)V
    .locals 0
    .param p1, "vol"    # I

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/ts/MainUI/Evc;->SetSystemVolume(I)I

    .line 422
    return-void
.end method

.method public evol_systemvol_tune(I)V
    .locals 2
    .param p1, "updn"    # I

    .prologue
    .line 465
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetSvol()I

    move-result v0

    .line 466
    .local v0, "nVol":I
    if-nez p1, :cond_1

    .line 468
    if-lez v0, :cond_0

    .line 470
    add-int/lit8 v0, v0, -0x1

    .line 482
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ts/MainUI/Evc;->SetSystemVolume(I)I

    .line 483
    return-void

    .line 476
    :cond_1
    iget v1, p0, Lcom/ts/MainUI/Evc;->Sys_vol_max:I

    if-ge v0, v1, :cond_0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public evol_vol_set(I)V
    .locals 3
    .param p1, "vol"    # I

    .prologue
    .line 374
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    .line 378
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMediaOrBlue()I

    move-result v0

    .line 380
    .local v0, "nSta":I
    invoke-static {v0, p1}, Lcom/yyw/ts70xhw/Iop;->SetVolume(II)I

    .line 381
    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v1

    .line 382
    .local v1, "nVol":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 384
    invoke-direct {p0, v1}, Lcom/ts/MainUI/Evc;->SetBtVolume(I)I

    .line 394
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-direct {p0, v1}, Lcom/ts/MainUI/Evc;->SetMusicVolume(I)I

    goto :goto_0
.end method

.method public evol_workmode_set(I)V
    .locals 7
    .param p1, "newmode"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 252
    if-eqz p1, :cond_5

    .line 254
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 256
    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    if-eq v1, p1, :cond_1

    .line 261
    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeMute:I

    if-eqz v1, :cond_0

    .line 263
    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeMute:I

    invoke-static {v1}, Lcom/yyw/ts70xhw/Iop;->PopMuteDelay(I)I

    .line 265
    :cond_0
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestAudioFocus  newmode=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0, v6, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 267
    .local v0, "result":I
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0, v6, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 268
    if-eq v0, v4, :cond_4

    .line 271
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    const-string v2, "could not get audio focus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "result":I
    :cond_1
    :goto_0
    if-eq p1, v5, :cond_2

    .line 304
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiscStop=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Lcom/ts/MainUI/Evc$2;

    invoke-direct {v1, p0}, Lcom/ts/MainUI/Evc$2;-><init>(Lcom/ts/MainUI/Evc;)V

    .line 318
    invoke-virtual {v1}, Lcom/ts/MainUI/Evc$2;->start()V

    .line 321
    :cond_2
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->SetWorkMode(I)I

    .line 322
    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    if-eq v1, p1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mEvcCallBack:Lcom/ts/MainUI/EvcCallBack;

    if-eqz v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mEvcCallBack:Lcom/ts/MainUI/EvcCallBack;

    iget v2, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    invoke-interface {v1, v2, p1}, Lcom/ts/MainUI/EvcCallBack;->DealWorkMode(II)V

    .line 329
    :cond_3
    iput p1, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    .line 331
    return-void

    .line 275
    .restart local v0    # "result":I
    :cond_4
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could  get audio focus == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v0    # "result":I
    :cond_5
    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeMute:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    if-eq v1, p1, :cond_6

    .line 286
    iget v1, p0, Lcom/ts/MainUI/Evc;->nWorkModeMute:I

    invoke-static {v1}, Lcom/yyw/ts70xhw/Iop;->PopMuteDelay(I)I

    .line 289
    :cond_6
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 291
    sget-object v1, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "abandonAudioFocus  newmode=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/ts/MainUI/Evc;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Lcom/ts/MainUI/Evc$1;

    invoke-direct {v2, p0}, Lcom/ts/MainUI/Evc$1;-><init>(Lcom/ts/MainUI/Evc;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 927
    packed-switch p1, :pswitch_data_0

    .line 965
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 930
    :pswitch_1
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_GAIN get audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :pswitch_2
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_LOSS lost audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange  nWorkModeReq=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange  Evol.workmode=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget v0, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto :goto_0

    .line 942
    :pswitch_3
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT lost audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange  nWorkModeReq=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange  Evol.workmode=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetMediaOrBlue()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMediaOrBlue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget v0, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 948
    iget v0, p0, Lcom/ts/MainUI/Evc;->nWorkModeReq:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 959
    :pswitch_4
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK lost audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public task(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/ts/MainUI/Evc;->nCheckNavi:I

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/Evc;->nCheckNavi:I

    .line 100
    invoke-virtual {p0}, Lcom/ts/MainUI/Evc;->ChechNaviStream()V

    .line 102
    :cond_0
    iget v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    if-lez v0, :cond_1

    .line 104
    sget-object v0, Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NaviVoiceDelay=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    .line 106
    iget v0, p0, Lcom/ts/MainUI/Evc;->NaviVoiceDelay:I

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0, v3}, Lcom/ts/MainUI/Evc;->SetGisMute(Z)I

    .line 109
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->NaviSpeaking(I)I

    .line 110
    sput v3, Lcom/ts/MainUI/Evc;->nNaviSpeeking:I

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->EvolTask(I)I

    move-result v0

    return v0
.end method
