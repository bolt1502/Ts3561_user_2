.class public Lcom/ts/can/CanFunc;
.super Ljava/lang/Object;
.source "CanFunc.java"

# interfaces
.implements Lcom/ts/main/common/CanInterface;
.implements Lcom/ts/can/CanTypeStrCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/CanFunc$BtInfo;,
        Lcom/ts/can/CanFunc$CAN_ID3;,
        Lcom/ts/can/CanFunc$MediaInfo;,
        Lcom/ts/can/CanFunc$MediaStatus;,
        Lcom/ts/can/CanFunc$NaviInfo;,
        Lcom/ts/can/CanFunc$RadioInfo;,
        Lcom/ts/can/CanFunc$RdsInfo;
    }
.end annotation


# static fields
.field public static final CAN_WORKMODE_A2DP:I = 0x5

.field public static final CAN_WORKMODE_ATV:I = 0xa

.field public static final CAN_WORKMODE_AUX1:I = 0x7

.field public static final CAN_WORKMODE_AUX2:I = 0x8

.field public static final CAN_WORKMODE_CMMB:I = 0x6

.field public static final CAN_WORKMODE_DISC:I = 0x2

.field public static final CAN_WORKMODE_EXCD:I = 0xe

.field public static final CAN_WORKMODE_EXD:I = 0xc

.field public static final CAN_WORKMODE_EXRAD:I = 0xd

.field public static final CAN_WORKMODE_IPOD:I = 0x9

.field public static final CAN_WORKMODE_MAINUI:I = 0x11

.field public static final CAN_WORKMODE_NONE:I = 0x0

.field public static final CAN_WORKMODE_NV:I = 0xf

.field public static final CAN_WORKMODE_RADIO:I = 0x1

.field public static final CAN_WORKMODE_REC:I = 0xb

.field public static final CAN_WORKMODE_SD:I = 0x4

.field public static final CAN_WORKMODE_USB:I = 0x3

.field public static final CAN_WORKMODE_VM6CD:I = 0x10

.field public static final CanBtStateCallActive:I = 0x4

.field public static final CanBtStateCallIn:I = 0x2

.field public static final CanBtStateCallOut:I = 0x3

.field public static final CanBtStateConnected:I = 0x1

.field public static final CanBtStateDisconneted:I = 0x0

.field public static final CanMediaStaPause:I = 0x2

.field public static final CanMediaStaPlay:I = 0x1

.field public static final CanMediaStaStop:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CanFunc"

.field public static final TRUE:I = 0x1

.field public static final WIN_AC:I = 0x0

.field public static final WIN_DOOR:I = 0x80

.field public static final WIN_RADAR:I = 0x1

.field public static final WIN_RADAR_RESET_TIME:I = 0x2

.field public static final WIN_VW_INFO:I = 0xb8

.field private static mAccordTimes:I

.field public static mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

.field private static mCanModeTimes:I

.field private static mCanType:I

.field public static mContext:Landroid/content/Context;

.field protected static mCount:I

.field public static mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

.field public static mFsCanTp:I

.field private static mHaveCarInfo:I

.field public static mID3:Lcom/ts/can/CanFunc$CAN_ID3;

.field protected static mIns:Lcom/ts/can/CanFunc;

.field public static mLastACTick:J

.field public static mLastDriveProfileTick:J

.field public static mLastQueryTick:I

.field public static mLastRadarTick:J

.field public static mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

.field public static mMediaSta:Lcom/ts/can/CanFunc$MediaStatus;

.field public static mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

.field private static mNewMode:I

.field private static mOldMcuSta:I

.field private static mOldMode:I

.field public static mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

.field public static mRadioStr:Ljava/lang/String;

.field public static mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

.field public static mbRadarUIUpdate:Z

.field public static mfgShowAC:Z

.field public static mfgShowTpms:Z


# instance fields
.field public mCameraUI:Lcom/ts/can/CanCameraUI;

.field private mCanData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 87
    sput v1, Lcom/ts/can/CanFunc;->mCount:I

    .line 90
    new-instance v0, Lcom/ts/can/CanFunc$BtInfo;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$BtInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    .line 91
    new-instance v0, Lcom/ts/can/CanFunc$RadioInfo;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$RadioInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    .line 92
    new-instance v0, Lcom/ts/can/CanFunc$RdsInfo;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$RdsInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    .line 93
    new-instance v0, Lcom/ts/can/CanFunc$MediaStatus;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$MediaStatus;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mMediaSta:Lcom/ts/can/CanFunc$MediaStatus;

    .line 94
    new-instance v0, Lcom/ts/can/CanFunc$MediaInfo;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$MediaInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    .line 95
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mRadioStr:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/ts/can/CanFunc$CAN_ID3;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$CAN_ID3;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mID3:Lcom/ts/can/CanFunc$CAN_ID3;

    .line 97
    new-instance v0, Lcom/ts/can/CanFunc$NaviInfo;

    invoke-direct {v0}, Lcom/ts/can/CanFunc$NaviInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    .line 136
    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 137
    sput-wide v3, Lcom/ts/can/CanFunc;->mLastRadarTick:J

    .line 138
    sput-wide v3, Lcom/ts/can/CanFunc;->mLastDriveProfileTick:J

    .line 139
    sput-boolean v1, Lcom/ts/can/CanFunc;->mbRadarUIUpdate:Z

    .line 143
    sput v2, Lcom/ts/can/CanFunc;->mOldMcuSta:I

    .line 145
    sput v2, Lcom/ts/can/CanFunc;->mHaveCarInfo:I

    .line 148
    sput v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    .line 150
    sput v1, Lcom/ts/can/CanFunc;->mCanType:I

    .line 151
    sput v2, Lcom/ts/can/CanFunc;->mOldMode:I

    .line 152
    sput v1, Lcom/ts/can/CanFunc;->mNewMode:I

    .line 154
    sput v1, Lcom/ts/can/CanFunc;->mAccordTimes:I

    .line 155
    sput v1, Lcom/ts/can/CanFunc;->mCanModeTimes:I

    .line 158
    sput-boolean v1, Lcom/ts/can/CanFunc;->mfgShowTpms:Z

    .line 160
    new-instance v0, Lcom/ts/can/CanDoorMsgbox;

    invoke-direct {v0}, Lcom/ts/can/CanDoorMsgbox;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/can/CanFunc;->mCanData:[B

    .line 83
    return-void
.end method

.method public static AccordModeChange(II)V
    .locals 2
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    .line 544
    sget v0, Lcom/ts/can/CanFunc;->mAccordTimes:I

    if-lez v0, :cond_0

    if-nez p0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 549
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 551
    const-string v0, "CanFunc"

    const-string v1, "CanJni.AccordRadioCtrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/16 v0, 0x51

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    .line 554
    :cond_1
    sget v0, Lcom/ts/can/CanFunc;->mAccordTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/can/CanFunc;->mAccordTimes:I

    goto :goto_0
.end method

.method public static CarCanInit(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 360
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 363
    :sswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 365
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->GetInstance()Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->InitAc(Landroid/content/Context;)V

    .line 366
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-static {v2}, Lcom/yyw/ts70xhw/Iop;->RstPort(I)I

    goto :goto_0

    .line 373
    :sswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 375
    const/16 v0, 0x42

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->Getlgb1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 380
    :sswitch_2
    invoke-static {}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->GetInstance()Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->InitVol(Landroid/content/Context;)V

    goto :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x58 -> :sswitch_0
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private CarDevInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 329
    :cond_0
    :goto_0
    :sswitch_0
    const-string v0, "CanFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CarDev Init mbExdAvalid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 285
    :sswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 287
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 292
    :sswitch_2
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 296
    :sswitch_3
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 300
    :sswitch_4
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 304
    :sswitch_5
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 308
    :sswitch_6
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 312
    :sswitch_7
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 316
    :sswitch_8
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 320
    :sswitch_9
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    goto :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0x14 -> :sswitch_2
        0x1d -> :sswitch_3
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
        0x27 -> :sswitch_6
        0x65 -> :sswitch_7
        0x6b -> :sswitch_8
        0x73 -> :sswitch_9
    .end sparse-switch
.end method

.method public static ChrOthModeChange(II)V
    .locals 4
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 595
    if-ne p0, v3, :cond_0

    .line 597
    const-string v0, "CanFunc"

    const-string v1, "ChrOthModeChange Exd Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget v0, Lcom/ts/can/CanFunc;->mFsCanTp:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    .line 600
    invoke-static {v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->RZChrOthCDCtrl(III)V

    .line 610
    :cond_0
    :goto_0
    if-ne v3, p1, :cond_1

    .line 612
    const-string v0, "CanFunc"

    const-string v1, "ChrOthModeChange Exd Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    .line 616
    :cond_1
    return-void

    .line 604
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0
.end method

.method public static CrosstourModeChange(II)V
    .locals 2
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    .line 560
    sget v0, Lcom/ts/can/CanFunc;->mAccordTimes:I

    if-lez v0, :cond_0

    if-nez p0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 565
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 567
    const-string v0, "CanFunc"

    const-string v1, "CanJni.AccordRadioCtrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    sget v0, Lcom/ts/can/CanFunc;->mAccordTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/can/CanFunc;->mAccordTimes:I

    goto :goto_0
.end method

.method public static DealCanUserAll()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 391
    :sswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 393
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->GetInstance()Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->UserAll()V

    goto :goto_0

    .line 397
    :sswitch_1
    invoke-static {}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->GetInstance()Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->UserAll()V

    goto :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public static DealModeChange(II)V
    .locals 3
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    .line 494
    const-string v0, "CanFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealModeChange old = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Lcom/ts/can/CanFunc;->GetCanType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 498
    :sswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 500
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->AccordModeChange(II)V

    goto :goto_0

    .line 505
    :sswitch_1
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->SyncModeChange(II)V

    goto :goto_0

    .line 509
    :sswitch_2
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->CrosstourModeChange(II)V

    goto :goto_0

    .line 513
    :sswitch_3
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->ChrOthModeChange(II)V

    goto :goto_0

    .line 517
    :sswitch_4
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->FiatAllModeChange(II)V

    goto :goto_0

    .line 521
    :sswitch_5
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->FiatBravoModeChange(II)V

    goto :goto_0

    .line 525
    :sswitch_6
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->Mzd3ModeChange(II)V

    goto :goto_0

    .line 529
    :sswitch_7
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->MzdCx4ModeChange(II)V

    goto :goto_0

    .line 533
    :sswitch_8
    invoke-static {p0, p1}, Lcom/ts/can/CanFunc;->Pg408ModeChange(II)V

    goto :goto_0

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_1
        0x14 -> :sswitch_2
        0x1d -> :sswitch_3
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
        0x27 -> :sswitch_6
        0x45 -> :sswitch_7
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method public static DisableBalFad()I
    .locals 1

    .prologue
    .line 862
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->BalFadDisable()I

    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public static DisableTreBass()I
    .locals 1

    .prologue
    .line 876
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->TreBasDisable()I

    .line 878
    const/4 v0, 0x1

    return v0
.end method

.method public static EnableBalFad()I
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public static EnableTreBass()I
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x1

    return v0
.end method

.method public static ExdPopMuteClr()I
    .locals 2

    .prologue
    .line 889
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_popmute_clr(I)V

    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public static ExdPopMuteSet()I
    .locals 2

    .prologue
    .line 895
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_popmute_set(I)V

    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method public static FiatAllModeChange(II)V
    .locals 3
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v2, 0xc

    .line 620
    if-ne p0, v2, :cond_0

    .line 622
    const-string v0, "CanFunc"

    const-string v1, "FiatAllModeChange Exd Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllStop()V

    .line 627
    :cond_0
    if-ne v2, p1, :cond_1

    .line 629
    const-string v0, "CanFunc"

    const-string v1, "FiatAllModeChange Exd Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPlay()V

    .line 633
    :cond_1
    return-void
.end method

.method public static FiatBravoModeChange(II)V
    .locals 3
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v2, 0xc

    .line 637
    if-ne p0, v2, :cond_0

    .line 639
    const-string v0, "CanFunc"

    const-string v1, "FiatBravoModeChange Exd Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoStop()V

    .line 644
    :cond_0
    if-ne v2, p1, :cond_1

    .line 646
    const-string v0, "CanFunc"

    const-string v1, "FiatBravoModeChange Exd Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPlay()V

    .line 649
    :cond_1
    return-void
.end method

.method public static GetBal()I
    .locals 1

    .prologue
    .line 842
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBal()I

    move-result v0

    return v0
.end method

.method public static GetBass()I
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetBas()I

    move-result v0

    return v0
.end method

.method public static GetBtInfo()Lcom/ts/can/CanFunc$BtInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 970
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    .line 971
    .local v0, "bt":Lcom/ts/bt/BtExe;
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    iput v3, v1, Lcom/ts/can/CanFunc$BtInfo;->Hour:I

    .line 972
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    iput v3, v1, Lcom/ts/can/CanFunc$BtInfo;->Min:I

    .line 973
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    iput v3, v1, Lcom/ts/can/CanFunc$BtInfo;->Sec:I

    .line 974
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    iput v3, v1, Lcom/ts/can/CanFunc$BtInfo;->ActiveTime:I

    .line 975
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    const-string v2, ""

    iput-object v2, v1, Lcom/ts/can/CanFunc$BtInfo;->szPhone:Ljava/lang/String;

    .line 976
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    const-string v2, ""

    iput-object v2, v1, Lcom/ts/can/CanFunc$BtInfo;->szNo:Ljava/lang/String;

    .line 978
    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getSta()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1001
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    iput v3, v1, Lcom/ts/can/CanFunc$BtInfo;->State:I

    .line 1005
    :goto_0
    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getSta()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 1007
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    sget-object v2, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    iput-object v2, v1, Lcom/ts/can/CanFunc$BtInfo;->szNo:Ljava/lang/String;

    .line 1016
    :goto_1
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ts/can/CanFunc$BtInfo;->szPhone:Ljava/lang/String;

    .line 1017
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    return-object v1

    .line 981
    :pswitch_0
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    iput v6, v1, Lcom/ts/can/CanFunc$BtInfo;->State:I

    goto :goto_0

    .line 985
    :pswitch_1
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->State:I

    goto :goto_0

    .line 989
    :pswitch_2
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->State:I

    goto :goto_0

    .line 993
    :pswitch_3
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->State:I

    .line 994
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    sget-wide v2, Lcom/ts/bt/BtExe;->mActiveSecond:J

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0xe10

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->Hour:I

    .line 995
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    sget-wide v2, Lcom/ts/bt/BtExe;->mActiveSecond:J

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0x3c

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->Min:I

    .line 996
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    sget-wide v2, Lcom/ts/bt/BtExe;->mActiveSecond:J

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0x3c

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->Sec:I

    .line 997
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    sget-wide v2, Lcom/ts/bt/BtExe;->mActiveSecond:J

    long-to-int v2, v2

    iput v2, v1, Lcom/ts/can/CanFunc$BtInfo;->ActiveTime:I

    goto :goto_0

    .line 1011
    :cond_0
    sget-object v1, Lcom/ts/can/CanFunc;->mBtInfo:Lcom/ts/can/CanFunc$BtInfo;

    const-string v2, ""

    iput-object v2, v1, Lcom/ts/can/CanFunc$BtInfo;->szNo:Ljava/lang/String;

    goto :goto_1

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static GetCanType()I
    .locals 1

    .prologue
    .line 405
    sget v0, Lcom/ts/can/CanFunc;->mCanType:I

    return v0
.end method

.method public static GetDiscSta()I
    .locals 1

    .prologue
    .line 904
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetDisc()I

    move-result v0

    return v0
.end method

.method public static GetFad()I
    .locals 1

    .prologue
    .line 837
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetFad()I

    move-result v0

    return v0
.end method

.method public static GetGpsAngle()I
    .locals 1

    .prologue
    .line 964
    const/4 v0, 0x0

    return v0
.end method

.method public static GetID3()Lcom/ts/can/CanFunc$CAN_ID3;
    .locals 2

    .prologue
    .line 1149
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1151
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainUI;->GetCanId3()V

    .line 1152
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v0, v0, Lcom/ts/can/CanIF$CAN_ID3;->sName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1154
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v1, ""

    iput-object v1, v0, Lcom/ts/can/CanIF$CAN_ID3;->sName:Ljava/lang/String;

    .line 1157
    :cond_0
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v0, v0, Lcom/ts/can/CanIF$CAN_ID3;->sAlbum:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1159
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v1, ""

    iput-object v1, v0, Lcom/ts/can/CanIF$CAN_ID3;->sAlbum:Ljava/lang/String;

    .line 1162
    :cond_1
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v0, v0, Lcom/ts/can/CanIF$CAN_ID3;->sArtist:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1164
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v1, ""

    iput-object v1, v0, Lcom/ts/can/CanIF$CAN_ID3;->sArtist:Ljava/lang/String;

    .line 1174
    :cond_2
    :goto_0
    sget-object v0, Lcom/ts/can/CanFunc;->mID3:Lcom/ts/can/CanFunc$CAN_ID3;

    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v1, v1, Lcom/ts/can/CanIF$CAN_ID3;->sName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ts/can/CanFunc$CAN_ID3;->sName:Ljava/lang/String;

    .line 1175
    sget-object v0, Lcom/ts/can/CanFunc;->mID3:Lcom/ts/can/CanFunc$CAN_ID3;

    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v1, v1, Lcom/ts/can/CanIF$CAN_ID3;->sAlbum:Ljava/lang/String;

    iput-object v1, v0, Lcom/ts/can/CanFunc$CAN_ID3;->sAlbum:Ljava/lang/String;

    .line 1176
    sget-object v0, Lcom/ts/can/CanFunc;->mID3:Lcom/ts/can/CanFunc$CAN_ID3;

    sget-object v1, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    iget-object v1, v1, Lcom/ts/can/CanIF$CAN_ID3;->sArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/ts/can/CanFunc$CAN_ID3;->sArtist:Ljava/lang/String;

    .line 1177
    sget-object v0, Lcom/ts/can/CanFunc;->mID3:Lcom/ts/can/CanFunc$CAN_ID3;

    return-object v0

    .line 1169
    :cond_3
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v1, ""

    iput-object v1, v0, Lcom/ts/can/CanIF$CAN_ID3;->sName:Ljava/lang/String;

    .line 1170
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v1, ""

    iput-object v1, v0, Lcom/ts/can/CanIF$CAN_ID3;->sAlbum:Ljava/lang/String;

    .line 1171
    sget-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    const-string v1, ""

    iput-object v1, v0, Lcom/ts/can/CanIF$CAN_ID3;->sArtist:Ljava/lang/String;

    goto :goto_0
.end method

.method public static GetMediaInfo()Lcom/ts/can/CanFunc$MediaInfo;
    .locals 2

    .prologue
    .line 1123
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainUI;->GetMediaInfo()V

    .line 1128
    :cond_0
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->Avalid:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->Avalid:I

    .line 1129
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->MediaType:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->MediaType:I

    .line 1130
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->fgNumAvalid:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->fgNumAvalid:I

    .line 1131
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->CurNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->CurNum:I

    .line 1132
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalNum:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->TotalNum:I

    .line 1133
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->fgTimeAvalid:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->fgTimeAvalid:I

    .line 1134
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->CurHour:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->CurHour:I

    .line 1135
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->CurMin:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->CurMin:I

    .line 1136
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->CurSec:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->CurSec:I

    .line 1137
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalHour:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->TotalHour:I

    .line 1138
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalMin:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->TotalMin:I

    .line 1139
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalSec:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->TotalSec:I

    .line 1140
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->CurTime:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->CurTime:I

    .line 1141
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->TotalTime:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->TotalTime:I

    .line 1142
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->fgPause:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->fgPause:I

    .line 1143
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    iget v1, v1, Lcom/ts/can/CanIF$MediaInfo;->fgLoading:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaInfo;->fgLoading:I

    .line 1144
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaInfo:Lcom/ts/can/CanFunc$MediaInfo;

    return-object v0
.end method

.method public static GetMediaStatus()Lcom/ts/can/CanFunc$MediaStatus;
    .locals 2

    .prologue
    .line 1110
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainUI;->GetMediaStatus()V

    .line 1115
    :cond_0
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaSta:Lcom/ts/can/CanFunc$MediaStatus;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iget v1, v1, Lcom/ts/can/CanIF$MediaStatus;->PlaySta:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaStatus;->PlaySta:I

    .line 1116
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaSta:Lcom/ts/can/CanFunc$MediaStatus;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iget v1, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRnd:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaStatus;->fgRnd:I

    .line 1117
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaSta:Lcom/ts/can/CanFunc$MediaStatus;

    sget-object v1, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    iget v1, v1, Lcom/ts/can/CanIF$MediaStatus;->fgRpt:I

    iput v1, v0, Lcom/ts/can/CanFunc$MediaStatus;->fgRpt:I

    .line 1118
    sget-object v0, Lcom/ts/can/CanFunc;->mMediaSta:Lcom/ts/can/CanFunc$MediaStatus;

    return-object v0
.end method

.method public static GetMid()I
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMid()I

    move-result v0

    return v0
.end method

.method public static GetModeDirect()I
    .locals 1

    .prologue
    .line 1105
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    return v0
.end method

.method public static GetNaviInfo()Lcom/ts/can/CanFunc$NaviInfo;
    .locals 2

    .prologue
    .line 1182
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainUI;->GetNaviInfo()V

    .line 1187
    :cond_0
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->Avalid:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->Avalid:I

    .line 1188
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->Sta:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->Sta:I

    .line 1189
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgC:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->MsgC:I

    .line 1190
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->DestDisDw:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->DestDisDw:I

    .line 1191
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->GpsAngle:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->GpsAngle:I

    .line 1192
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->MsgDis:I

    .line 1193
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->DestDis:I

    .line 1194
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->RoadDirInfo:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->RoadDirInfo:I

    .line 1195
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->Para:I

    .line 1196
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara1:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara1:I

    .line 1197
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara2:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara2:I

    .line 1198
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara3:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara3:I

    .line 1199
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara4:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara4:I

    .line 1200
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara5:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara5:I

    .line 1201
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara6:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara6:I

    .line 1202
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara7:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara7:I

    .line 1203
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    sget-object v1, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    iget v1, v1, Lcom/ts/can/CanIF$NaviInfo;->cPara8:I

    iput v1, v0, Lcom/ts/can/CanFunc$NaviInfo;->cPara8:I

    .line 1206
    sget-object v0, Lcom/ts/can/CanFunc;->mNaviInfo:Lcom/ts/can/CanFunc$NaviInfo;

    return-object v0
.end method

.method public static GetRadioFreqStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1212
    sget-object v0, Lcom/ts/can/CanFunc;->mRadioStr:Ljava/lang/String;

    return-object v0
.end method

.method public static GetRadioInfo()Lcom/ts/can/CanFunc$RadioInfo;
    .locals 3

    .prologue
    .line 1058
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->Band:I

    .line 1059
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemNo:I

    .line 1060
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->CurFreq:I

    .line 1062
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemFreq1:I

    .line 1063
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemFreq2:I

    .line 1064
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemFreq3:I

    .line 1065
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemFreq4:I

    .line 1066
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemFreq5:I

    .line 1067
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->MemFreq6:I

    .line 1069
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->GetDispFlag()I

    move-result v0

    .line 1070
    .local v0, "flag":I
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    and-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->fgStRead:I

    .line 1071
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    and-int/lit8 v2, v0, 0x2

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RadioInfo;->fgStSet:I

    .line 1072
    sget-object v1, Lcom/ts/can/CanFunc;->mRadioInfo:Lcom/ts/can/CanFunc$RadioInfo;

    return-object v1
.end method

.method public static GetRdsInfo()Lcom/ts/can/CanFunc$RdsInfo;
    .locals 3

    .prologue
    .line 1090
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRDSen()I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgAvalid:I

    .line 1092
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->GetDispFlag()I

    move-result v0

    .line 1093
    .local v0, "flag":I
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    const/high16 v2, 0x60000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x11

    and-int/lit8 v2, v2, 0x3

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->AfState:I

    .line 1094
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    and-int/lit8 v2, v0, 0x40

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgTa:I

    .line 1095
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    and-int/lit16 v2, v0, 0x80

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgTp:I

    .line 1096
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    and-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgStRead:I

    .line 1097
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    and-int/lit8 v2, v0, 0x2

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgStSet:I

    .line 1098
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    and-int/lit8 v2, v0, 0x10

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgEon:I

    .line 1099
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    invoke-static {v2}, Lcom/ts/can/CanFunc;->intAdj(I)I

    move-result v2

    iput v2, v1, Lcom/ts/can/CanFunc$RdsInfo;->fgTaAlarm:I

    .line 1100
    sget-object v1, Lcom/ts/can/CanFunc;->mRdsInfo:Lcom/ts/can/CanFunc$RdsInfo;

    return-object v1
.end method

.method public static GetTre()I
    .locals 1

    .prologue
    .line 847
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetTre()I

    move-result v0

    return v0
.end method

.method public static GetUIMode()I
    .locals 3

    .prologue
    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "workmode":I
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 825
    :goto_0
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPowState()I

    move-result v0

    .line 827
    .local v0, "nState":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 828
    const/16 v1, 0x11

    .line 832
    :cond_0
    :goto_1
    return v1

    .line 762
    .end local v0    # "nState":I
    :pswitch_0
    const/16 v1, 0x11

    .line 763
    goto :goto_0

    .line 766
    :pswitch_1
    const/4 v1, 0x1

    .line 767
    goto :goto_0

    .line 770
    :pswitch_2
    const/4 v1, 0x2

    .line 771
    goto :goto_0

    .line 774
    :pswitch_3
    const/4 v1, 0x3

    .line 775
    goto :goto_0

    .line 778
    :pswitch_4
    const/4 v1, 0x4

    .line 779
    goto :goto_0

    .line 782
    :pswitch_5
    const/4 v1, 0x5

    .line 783
    goto :goto_0

    .line 786
    :pswitch_6
    const/4 v1, 0x6

    .line 787
    goto :goto_0

    .line 790
    :pswitch_7
    const/4 v1, 0x7

    .line 791
    goto :goto_0

    .line 794
    :pswitch_8
    const/16 v1, 0x8

    .line 795
    goto :goto_0

    .line 798
    :pswitch_9
    const/16 v1, 0x9

    .line 799
    goto :goto_0

    .line 802
    :pswitch_a
    const/16 v1, 0xa

    .line 803
    goto :goto_0

    .line 806
    :pswitch_b
    const/16 v1, 0xc

    .line 807
    goto :goto_0

    .line 810
    :pswitch_c
    const/16 v1, 0xd

    .line 811
    goto :goto_0

    .line 814
    :pswitch_d
    const/16 v1, 0xe

    .line 815
    goto :goto_0

    .line 818
    :pswitch_e
    const/16 v1, 0x10

    .line 819
    goto :goto_0

    .line 829
    .restart local v0    # "nState":I
    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_0

    .line 830
    const/16 v1, 0x11

    goto :goto_1

    .line 759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static GetVol()I
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->GetVolume(I)I

    move-result v0

    return v0
.end method

.method public static GotoWin(I)I
    .locals 11
    .param p0, "win"    # I

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x1a

    .line 1247
    const-string v3, "CanFunc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GotoWin = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v3

    invoke-static {v3}, Lcom/ts/can/CanFunc;->i2b(I)Z

    move-result v0

    .line 1249
    .local v0, "isCamMode":Z
    sparse-switch p0, :sswitch_data_0

    .line 1861
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1253
    :sswitch_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetAcDisplay()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1258
    sput-boolean v7, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 1259
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 1260
    sget v3, Lcom/ts/can/CanFunc;->mFsCanTp:I

    sparse-switch v3, :sswitch_data_1

    .line 1491
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1263
    :sswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 1264
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1266
    const-class v3, Lcom/ts/can/CanTeramontACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1268
    :cond_1
    const-class v3, Lcom/ts/can/CanGolfACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1273
    :sswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1274
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1276
    const-class v3, Lcom/ts/can/gm/comm/CanGMACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1278
    :cond_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 1279
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1281
    const-class v3, Lcom/ts/can/gm/comm/CanGL8ACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1285
    :cond_3
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 1291
    :sswitch_3
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-eq v3, v8, :cond_4

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_4

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 1292
    :cond_4
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1294
    const-class v3, Lcom/ts/can/psa/CanPSAACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1298
    :cond_5
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1303
    :sswitch_4
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v10, :cond_6

    .line 1305
    const-class v3, Lcom/ts/can/ford/CanFordACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1309
    :cond_6
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1314
    :sswitch_5
    invoke-static {}, Lcom/ts/can/saic/mg/CanMGGSACActivity;->ShowAC()V

    goto/16 :goto_0

    .line 1318
    :sswitch_6
    invoke-static {}, Lcom/ts/can/chrysler/CanChrOthACActivity;->ShowAC()V

    goto/16 :goto_0

    .line 1322
    :sswitch_7
    invoke-static {}, Lcom/ts/can/chrysler/rz/CanRZygACActivity;->ShowAC()V

    goto/16 :goto_0

    .line 1326
    :sswitch_8
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-eq v3, v9, :cond_7

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    .line 1327
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-eq v3, v10, :cond_7

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    .line 1328
    :cond_7
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_8

    .line 1330
    const-class v3, Lcom/ts/can/CanHondaDAAcActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1334
    :cond_8
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1339
    :sswitch_9
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 1340
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_9

    .line 1342
    const-class v3, Lcom/ts/can/hm/CanHmV70AcActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1346
    :cond_9
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1351
    :sswitch_a
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 1352
    const-class v3, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1356
    :cond_a
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1361
    :sswitch_b
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v7, :cond_b

    .line 1362
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_b

    .line 1364
    const-class v3, Lcom/ts/can/gm/sb/CanGMSBACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1366
    :cond_b
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_c

    .line 1367
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_c

    .line 1369
    const-class v3, Lcom/ts/can/gm/sb/CanSBGL8ACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1371
    :cond_c
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_d

    .line 1373
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->GetInstance()Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->ShowAC()V

    goto/16 :goto_0

    .line 1377
    :cond_d
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1382
    :sswitch_c
    const-class v3, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1386
    :sswitch_d
    const-class v3, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1390
    :sswitch_e
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_e

    .line 1391
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_e

    .line 1393
    const-class v3, Lcom/ts/can/df/t90/CanT90CarACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1397
    :cond_e
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1402
    :sswitch_f
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v7, :cond_f

    .line 1404
    const-class v3, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1408
    :cond_f
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1413
    :sswitch_10
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_10

    .line 1415
    const-class v3, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1419
    :cond_10
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1424
    :sswitch_11
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v10, :cond_11

    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_11

    .line 1426
    const-class v3, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1430
    :cond_11
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1435
    :sswitch_12
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_12

    .line 1437
    const-class v3, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1441
    :cond_12
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1446
    :sswitch_13
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_13

    .line 1448
    invoke-static {}, Lcom/ts/can/geely/yjx1/CanGeelyYjX1ACActivity;->ShowAC()V

    goto/16 :goto_0

    .line 1452
    :cond_13
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1457
    :sswitch_14
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_14

    .line 1459
    invoke-static {}, Lcom/ts/can/zotye/x7/CanZotyetX7ACActivity;->ShowAC()V

    goto/16 :goto_0

    .line 1463
    :cond_14
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1468
    :sswitch_15
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_15

    .line 1470
    invoke-static {}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ShowAC()V

    goto/16 :goto_0

    .line 1474
    :cond_15
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1479
    :sswitch_16
    invoke-static {v6}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v3

    if-eqz v3, :cond_16

    .line 1481
    const-class v3, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1485
    :cond_16
    const-class v3, Lcom/ts/can/CanACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1497
    :sswitch_17
    const-string v3, "CanFunc"

    const-string v4, "CanFunc.mbRadarUIUpdate = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateRadar()V

    .line 1499
    invoke-static {}, Lcom/ts/can/CanRadarManager;->GetInstance()Lcom/ts/can/CanRadarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/can/CanRadarManager;->ShowRadar()V

    .line 1500
    sput-boolean v7, Lcom/ts/can/CanFunc;->mbRadarUIUpdate:Z

    .line 1501
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastRadarTick:J

    goto/16 :goto_0

    .line 1505
    :sswitch_18
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateRadar()V

    .line 1506
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastRadarTick:J

    goto/16 :goto_0

    .line 1510
    :sswitch_19
    if-nez v0, :cond_0

    .line 1514
    const-class v3, Lcom/ts/can/CanVwCarInfoActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1518
    :sswitch_1a
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateDoor()Z

    .line 1519
    if-nez v0, :cond_0

    .line 1523
    sget v3, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v3, v7, :cond_17

    .line 1525
    invoke-static {}, Lcom/ts/can/CanFunc;->IsHaveCarInfo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1534
    sget-object v3, Lcom/ts/can/CanFunc;->mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

    invoke-virtual {v3}, Lcom/ts/can/CanDoorMsgbox;->Update()V

    goto/16 :goto_0

    .line 1552
    :cond_17
    sget-object v3, Lcom/ts/can/CanFunc;->mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

    invoke-virtual {v3}, Lcom/ts/can/CanDoorMsgbox;->Update()V

    goto/16 :goto_0

    .line 1558
    :sswitch_1b
    if-nez v0, :cond_0

    .line 1562
    const-class v3, Lcom/ts/can/CanHondaExdActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1566
    :sswitch_1c
    if-nez v0, :cond_0

    .line 1568
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->ShowSync()V

    goto/16 :goto_0

    .line 1573
    :sswitch_1d
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->DealCallEnd()V

    goto/16 :goto_0

    .line 1577
    :sswitch_1e
    invoke-static {}, Lcom/ts/can/ford/CanFordSyncUIActivity;->DealVoiceEnd()V

    goto/16 :goto_0

    .line 1581
    :sswitch_1f
    invoke-static {}, Lcom/ts/can/fiat/CanFiatAllExdActivity;->DealDevEvent()V

    goto/16 :goto_0

    .line 1585
    :sswitch_20
    if-nez v0, :cond_0

    .line 1590
    invoke-static {}, Lcom/ts/can/CanFunc;->GetCanType()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    .line 1593
    :sswitch_21
    const-class v3, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1598
    :sswitch_22
    invoke-static {}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->DealPage()V

    goto/16 :goto_0

    .line 1604
    :sswitch_23
    invoke-static {}, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;->DealDisp()Z

    goto/16 :goto_0

    .line 1608
    :sswitch_24
    invoke-static {}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->DealPage()V

    goto/16 :goto_0

    .line 1611
    :sswitch_25
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-eq v3, v7, :cond_18

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 1613
    :cond_18
    const-class v3, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1622
    :sswitch_26
    invoke-static {}, Lcom/ts/can/fiat/CanFiatBravoExdActivity;->DealDevEvent()V

    goto/16 :goto_0

    .line 1626
    :sswitch_27
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/ts/can/faw/CanB50_13PhoneActivity;->DealStatus(ZZ)V

    goto/16 :goto_0

    .line 1630
    :sswitch_28
    invoke-static {v0, v7}, Lcom/ts/can/faw/CanB50_13PhoneActivity;->DealStatus(ZZ)V

    goto/16 :goto_0

    .line 1634
    :sswitch_29
    const-class v3, Lcom/ts/can/honda/accord/CanAccordCamModeActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1638
    :sswitch_2a
    if-nez v0, :cond_0

    .line 1643
    invoke-static {}, Lcom/ts/can/CanFunc;->GetCanType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 1646
    :pswitch_0
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastDriveProfileTick:J

    .line 1647
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_19

    .line 1648
    const-class v3, Lcom/ts/can/CanTeramontSeatDriveProfileActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1650
    :cond_19
    const-class v3, Lcom/ts/can/CanGolfSeatDriveProfileActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1656
    :sswitch_2b
    if-nez v0, :cond_0

    .line 1660
    invoke-static {}, Lcom/ts/can/CanFunc;->GetCanType()I

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1a

    .line 1662
    const-class v3, Lcom/ts/can/psa/hc/CanBZCheckInfoActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1666
    :cond_1a
    const-class v3, Lcom/ts/can/psa/CanPSACheckInfoActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1671
    :sswitch_2c
    if-nez v0, :cond_0

    .line 1675
    const-class v3, Lcom/ts/can/psa/CanPSAMemTabActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1679
    :sswitch_2d
    if-nez v0, :cond_0

    .line 1684
    new-instance v3, Lcom/ts/canview/CanTimerMsgBox;

    sget-object v4, Lcom/ts/can/CanFunc;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x1388

    sget v7, Lcom/ts/MainUI/R$string;->can_consump_warn:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ts/canview/CanTimerMsgBox;-><init>(Landroid/content/Context;JI)V

    goto/16 :goto_0

    .line 1688
    :sswitch_2e
    if-nez v0, :cond_0

    .line 1693
    new-instance v3, Lcom/ts/canview/CanTimerMsgBox;

    sget-object v4, Lcom/ts/can/CanFunc;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0xbb8

    sget v7, Lcom/ts/MainUI/R$string;->can_enter_eco_mode:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ts/canview/CanTimerMsgBox;-><init>(Landroid/content/Context;JI)V

    goto/16 :goto_0

    .line 1697
    :sswitch_2f
    sget v3, Lcom/ts/can/CanFunc;->mCanType:I

    sparse-switch v3, :sswitch_data_3

    goto/16 :goto_0

    .line 1700
    :sswitch_30
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->TsGetPhone()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 1702
    if-nez v0, :cond_1b

    .line 1704
    const-class v3, Lcom/ts/can/ts/CanTSPhoneActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 1707
    :cond_1b
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/MainUI/Evc;->evol_aux_hold()V

    goto/16 :goto_0

    .line 1712
    :cond_1c
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/MainUI/Evc;->evol_aux_release()V

    goto/16 :goto_0

    .line 1717
    :sswitch_31
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqLinkSosActivity;->DealStatus(Z)V

    goto/16 :goto_0

    .line 1721
    :sswitch_32
    invoke-static {v0}, Lcom/ts/can/faw/CanB70_14PhoneActivity;->DealStatus(Z)V

    goto/16 :goto_0

    .line 1725
    :sswitch_33
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarSosActivity;->DealStatus(Z)V

    goto/16 :goto_0

    .line 1735
    :sswitch_34
    sget v3, Lcom/ts/can/CanFunc;->mCanType:I

    sparse-switch v3, :sswitch_data_4

    goto/16 :goto_0

    .line 1738
    :sswitch_35
    invoke-static {}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->DealStaChange()V

    goto/16 :goto_0

    .line 1741
    :sswitch_36
    invoke-static {}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->DealStatusChanged()V

    goto/16 :goto_0

    .line 1746
    :sswitch_37
    if-nez v0, :cond_0

    .line 1751
    invoke-static {}, Lcom/ts/can/CanOdysseyExdActivity;->showOdysseyWin()V

    goto/16 :goto_0

    .line 1755
    :sswitch_38
    if-nez v0, :cond_0

    .line 1759
    invoke-static {}, Lcom/ts/can/CanOdysseyExdActivity;->finishOdysseyWin()V

    goto/16 :goto_0

    .line 1764
    :sswitch_39
    if-nez v0, :cond_0

    .line 1767
    invoke-static {}, Lcom/ts/can/CanFunc;->getTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 1769
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    .line 1770
    const-class v3, Lcom/ts/can/gm/comm/CanGL8RearACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1771
    :cond_1d
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    const/16 v4, 0x58

    if-ne v3, v4, :cond_0

    .line 1772
    const-class v3, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1777
    :sswitch_3a
    if-nez v0, :cond_0

    .line 1780
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "enter tpms"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1781
    const/16 v3, 0x1b

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_1e

    .line 1783
    const-class v3, Lcom/ts/can/jac/CanJACRefineTpmsActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1785
    :cond_1e
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    if-ne v8, v3, :cond_1f

    .line 1787
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1789
    sput-boolean v7, Lcom/ts/can/CanFunc;->mfgShowTpms:Z

    .line 1790
    const-class v3, Lcom/ts/can/CanGolfVehicleStatusActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1793
    :cond_1f
    const/16 v3, 0x3c

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_20

    .line 1795
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-nez v3, :cond_0

    .line 1797
    const-class v3, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1800
    :cond_20
    const/16 v3, 0x6e

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_21

    .line 1802
    const-class v3, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1804
    :cond_21
    const/16 v3, 0xb

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-eq v3, v4, :cond_22

    const/16 v3, 0x3a

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1806
    :cond_22
    sget-object v3, Lcom/ts/can/CanFunc;->mContext:Landroid/content/Context;

    sget v4, Lcom/ts/MainUI/R$string;->can_tpms_ok:I

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1812
    :sswitch_3b
    invoke-static {}, Lcom/ts/can/psa/pg408/CanPg408ExdActivity;->DealDevEvent()V

    goto/16 :goto_0

    .line 1816
    :sswitch_3c
    const/16 v3, 0x6b

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_23

    .line 1818
    const-class v3, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1820
    :cond_23
    const/16 v3, 0x58

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_25

    .line 1822
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1824
    new-instance v2, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    invoke-direct {v2}, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;-><init>()V

    .line 1825
    .local v2, "mStaData":Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;
    new-instance v1, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    invoke-direct {v1}, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;-><init>()V

    .line 1826
    .local v1, "mPhoneData":Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;
    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMGetOnStar(Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;)V

    .line 1827
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    if-lt v3, v7, :cond_24

    invoke-static {v7}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v3

    if-nez v3, :cond_24

    .line 1829
    invoke-static {v7}, Lcom/yyw/ts70xhw/Iop;->RstPort(I)I

    .line 1831
    :cond_24
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->showCadillacXt5Win()V

    goto/16 :goto_0

    .line 1834
    .end local v1    # "mPhoneData":Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;
    .end local v2    # "mStaData":Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;
    :cond_25
    const/16 v3, 0x71

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_26

    .line 1836
    if-nez v0, :cond_0

    .line 1840
    const-class v3, Lcom/ts/can/toyota/spy/CanToyotaSpyBaseInfoActivity;

    invoke-static {v3}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 1842
    :cond_26
    const/16 v3, 0x73

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1844
    invoke-static {}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->GetInstance()Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->ShowVol()V

    goto/16 :goto_0

    .line 1849
    :sswitch_3d
    const/16 v3, 0x58

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1851
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1853
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->finishCadillacXt5Win()V

    goto/16 :goto_0

    .line 1249
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_17
        0x2 -> :sswitch_18
        0x3 -> :sswitch_3a
        0x30 -> :sswitch_1c
        0x31 -> :sswitch_1b
        0x40 -> :sswitch_1d
        0x41 -> :sswitch_1e
        0x70 -> :sswitch_3b
        0x71 -> :sswitch_3b
        0x80 -> :sswitch_1a
        0xa0 -> :sswitch_1f
        0xb0 -> :sswitch_20
        0xb5 -> :sswitch_26
        0xb6 -> :sswitch_27
        0xb7 -> :sswitch_28
        0xb8 -> :sswitch_19
        0xb9 -> :sswitch_29
        0xba -> :sswitch_2a
        0xc2 -> :sswitch_2b
        0xc3 -> :sswitch_2c
        0xc4 -> :sswitch_2d
        0xc5 -> :sswitch_2e
        0xc6 -> :sswitch_2f
        0xc7 -> :sswitch_34
        0xc8 -> :sswitch_37
        0xc9 -> :sswitch_38
        0xd0 -> :sswitch_39
        0xd1 -> :sswitch_3c
        0xd2 -> :sswitch_3d
    .end sparse-switch

    .line 1260
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_8
        0x8 -> :sswitch_2
        0xb -> :sswitch_3
        0xd -> :sswitch_4
        0x11 -> :sswitch_11
        0x1a -> :sswitch_5
        0x1d -> :sswitch_6
        0x26 -> :sswitch_7
        0x2f -> :sswitch_e
        0x31 -> :sswitch_10
        0x32 -> :sswitch_9
        0x37 -> :sswitch_f
        0x39 -> :sswitch_a
        0x3a -> :sswitch_3
        0x3c -> :sswitch_14
        0x48 -> :sswitch_13
        0x4e -> :sswitch_12
        0x58 -> :sswitch_b
        0x59 -> :sswitch_c
        0x5b -> :sswitch_d
        0x72 -> :sswitch_15
        0x73 -> :sswitch_16
    .end sparse-switch

    .line 1590
    :sswitch_data_2
    .sparse-switch
        0x5 -> :sswitch_21
        0xb -> :sswitch_22
        0x14 -> :sswitch_23
        0x2c -> :sswitch_24
        0x3a -> :sswitch_22
        0x3c -> :sswitch_25
        0x60 -> :sswitch_23
        0x64 -> :sswitch_23
    .end sparse-switch

    .line 1643
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1697
    :sswitch_data_3
    .sparse-switch
        0xc -> :sswitch_30
        0x11 -> :sswitch_31
        0x17 -> :sswitch_32
        0x37 -> :sswitch_33
    .end sparse-switch

    .line 1735
    :sswitch_data_4
    .sparse-switch
        0x27 -> :sswitch_35
        0x45 -> :sswitch_36
    .end sparse-switch
.end method

.method public static IsCadillacXt51280x480()Z
    .locals 2

    .prologue
    .line 1924
    const/16 v0, 0x58

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1926
    const/4 v0, 0x1

    .line 1928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsCamMode()I
    .locals 2

    .prologue
    .line 944
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamFix()I

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-static {}, Lcom/ts/can/CanIF;->GetOtherCamMode()I

    move-result v0

    .line 949
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetReverse()I

    move-result v0

    invoke-static {}, Lcom/ts/can/CanIF;->GetOtherCamMode()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static IsCanActivityJumped(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2006
    const/4 v1, 0x0

    .line 2007
    .local v1, "ret":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2008
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2010
    const/4 v1, 0x1

    .line 2011
    const-string v2, "CanFunc"

    const-string v3, "mfgJump"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_0
    return v1
.end method

.method public static IsDoorOpen(Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;)Z
    .locals 3
    .param p0, "door"    # Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .prologue
    .line 724
    iget v1, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iget v2, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    add-int/2addr v1, v2

    .line 725
    iget v2, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    .line 724
    add-int/2addr v1, v2

    .line 725
    iget v2, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    .line 724
    add-int v0, v1, v2

    .line 727
    .local v0, "i":I
    if-eqz v0, :cond_0

    .line 729
    const/4 v1, 0x1

    .line 732
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static IsHaveCarInfo()Z
    .locals 4

    .prologue
    .line 1233
    const/4 v1, -0x1

    sget v2, Lcom/ts/can/CanFunc;->mHaveCarInfo:I

    if-ne v1, v2, :cond_0

    .line 1235
    const/16 v1, 0x16

    invoke-static {v1}, Lcom/ts/can/CanFunc;->IsHaveIco(I)I

    move-result v1

    sput v1, Lcom/ts/can/CanFunc;->mHaveCarInfo:I

    .line 1238
    :cond_0
    sget v1, Lcom/ts/can/CanFunc;->mHaveCarInfo:I

    invoke-static {v1}, Lcom/ts/can/CanFunc;->i2b(I)Z

    move-result v0

    .line 1239
    .local v0, "ret":Z
    const-string v1, "CanFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsHaveCarInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v0
.end method

.method public static IsHaveIco(I)I
    .locals 3
    .param p0, "ico"    # I

    .prologue
    .line 1217
    const/16 v2, 0x64

    new-array v1, v2, [I

    .line 1218
    .local v1, "icoArray":[I
    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->GetIcon([I)I

    .line 1220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    .line 1228
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1222
    :cond_0
    aget v2, v1, v0

    if-ne v2, p0, :cond_1

    .line 1224
    const/4 v2, 0x1

    goto :goto_1

    .line 1220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static IsRevCamMode()I
    .locals 1

    .prologue
    .line 955
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamFix()I

    move-result v0

    if-nez v0, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 959
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetReverse()I

    move-result v0

    goto :goto_0
.end method

.method public static IsVolMute()I
    .locals 1

    .prologue
    .line 741
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetMute()I

    move-result v0

    return v0
.end method

.method public static IsVolShow()I
    .locals 1

    .prologue
    .line 751
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainVolume;->IsVolumeShow()I

    move-result v0

    return v0
.end method

.method public static Mzd3ModeChange(II)V
    .locals 4
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 653
    if-ne p0, v3, :cond_0

    .line 655
    const-string v0, "CanFunc"

    const-string v1, "Mzd3ModeChange Exd Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {v2, v2}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 660
    :cond_0
    if-ne v3, p1, :cond_1

    .line 662
    const-string v0, "CanFunc"

    const-string v1, "Mzd3ModeChange Exd Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v0, 0xf0

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 665
    :cond_1
    return-void
.end method

.method public static MzdCx4ModeChange(II)V
    .locals 3
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v2, 0xc

    .line 669
    if-ne p0, v2, :cond_0

    .line 670
    const-string v0, "CanFunc"

    const-string v1, "MzdCx4ModeChange Exd Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 674
    :cond_0
    if-ne v2, p1, :cond_1

    .line 675
    const-string v0, "CanFunc"

    const-string v1, "MzdCx4ModeChange Exd Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 678
    :cond_1
    return-void
.end method

.method public static OnStarCallBack(I)I
    .locals 3
    .param p0, "para"    # I

    .prologue
    .line 1916
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v0, v2, 0xff

    .line 1917
    .local v0, "NewSta":I
    and-int/lit16 v1, p0, 0xff

    .line 1918
    .local v1, "OldSta":I
    invoke-static {v0, v1}, Lcom/ts/can/gm/onstar/CanOnStarSpkActivity;->HandleStaChange(II)V

    .line 1919
    const/4 v2, 0x0

    return v2
.end method

.method public static Pg408ModeChange(II)V
    .locals 3
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v2, 0xc

    .line 683
    if-ne p0, v2, :cond_0

    .line 684
    const-string v0, "CanFunc"

    const-string v1, "Pg408ModeChange Exd Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbExit()V

    .line 688
    :cond_0
    if-ne v2, p1, :cond_1

    .line 689
    const-string v0, "CanFunc"

    const-string v1, "Pg408ModeChange Exd Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbEnter()V

    .line 692
    :cond_1
    return-void
.end method

.method public static RightCameraCallBack(I)I
    .locals 3
    .param p0, "para"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1872
    invoke-static {}, Lcom/ts/can/CanFunc;->IsRevCamMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1874
    packed-switch p0, :pswitch_data_0

    .line 1911
    :cond_0
    :goto_0
    return v2

    .line 1878
    :pswitch_0
    invoke-static {}, Lcom/ts/can/CanIF;->GetOtherCamMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1880
    sput-boolean v2, Lcom/ts/can/CanIF;->mfgCamKey:Z

    .line 1883
    :cond_1
    invoke-static {}, Lcom/ts/can/CanIF;->GetOtherCamMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/ts/can/CanIF;->SetOtherCamMode(I)V

    goto :goto_0

    .line 1888
    :pswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->GetOtherCamMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    sput-boolean v1, Lcom/ts/can/CanIF;->mfgCamKey:Z

    .line 1891
    invoke-static {v2}, Lcom/ts/can/CanIF;->SetOtherCamMode(I)V

    goto :goto_0

    .line 1897
    :pswitch_2
    sget-boolean v0, Lcom/ts/can/CanIF;->mfgCamKey:Z

    if-nez v0, :cond_0

    .line 1899
    invoke-static {v1}, Lcom/ts/can/CanIF;->SetOtherCamMode(I)V

    goto :goto_0

    .line 1909
    :cond_2
    invoke-static {v1}, Lcom/ts/can/CanIF;->SetOtherCamMode(I)V

    goto :goto_0

    .line 1874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static SetEvcAmp()I
    .locals 3

    .prologue
    .line 909
    const-string v0, "CanFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetEvcAmp FsCanTp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/can/CanFunc;->mFsCanTp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v0, 0x3

    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v0, v1, :cond_0

    .line 912
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->SetVolAllChannelGain(I)V

    .line 914
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static SyncModeChange(II)V
    .locals 4
    .param p0, "oldmode"    # I
    .param p1, "newmode"    # I

    .prologue
    const/16 v3, 0x82

    const/16 v2, 0xc

    .line 576
    if-ne p0, v2, :cond_0

    .line 578
    const-string v0, "CanFunc"

    const-string v1, "SyncModeChange Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    .line 582
    :cond_0
    sget v0, Lcom/ts/can/CanFunc;->mCanModeTimes:I

    if-nez v0, :cond_1

    .line 584
    if-eq v2, p1, :cond_1

    .line 586
    const-string v0, "CanFunc"

    const-string v1, "SyncModeChange Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->FordSyncCtrl(I)V

    .line 588
    sget v0, Lcom/ts/can/CanFunc;->mCanModeTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/can/CanFunc;->mCanModeTimes:I

    .line 591
    :cond_1
    return-void
.end method

.method public static TurnToMode(I)I
    .locals 5
    .param p0, "para"    # I

    .prologue
    const/16 v4, 0x34

    const/16 v3, 0xe

    .line 1935
    const-string v0, "CanFunc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Turn to mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    packed-switch p0, :pswitch_data_0

    .line 2001
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1939
    :pswitch_1
    const/16 v0, 0x35

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1943
    :pswitch_2
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1947
    :pswitch_3
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1951
    :pswitch_4
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1955
    :pswitch_5
    invoke-static {v3}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1959
    :pswitch_6
    invoke-static {v3}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1963
    :pswitch_7
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1967
    :pswitch_8
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1971
    :pswitch_9
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1975
    :pswitch_a
    invoke-static {v3}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1995
    :pswitch_b
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 1936
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public static UpdateOutTemp()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v5, 0x0

    .line 919
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateOutTemp()V

    .line 920
    sget-object v1, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Update:I

    if-eqz v1, :cond_1

    .line 922
    sget-object v1, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iput v5, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Update:I

    .line 923
    const-string v0, " "

    .line 924
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Val:I

    const/16 v2, -0x3e8

    if-le v1, v2, :cond_0

    const/4 v1, -0x1

    sget-object v2, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Val:I

    if-eq v1, v2, :cond_0

    .line 926
    sget-object v1, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->DW:I

    if-nez v1, :cond_2

    .line 928
    const-string v1, "%.1f\u2103"

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Val:I

    int-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 936
    :cond_0
    :goto_0
    const-string v1, "forfan.user.info"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v1, "CanFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forfan.user.info, Can.mOutTemp.Val = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Val:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_1
    return v5

    .line 932
    :cond_2
    const-string v1, "%.1f\u2109"

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/lgb/canmodule/Can;->mOutTemp:Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;->Val:I

    int-to-double v3, v3

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b2i(Z)I
    .locals 1
    .param p0, "val"    # Z

    .prologue
    .line 1039
    if-eqz p0, :cond_0

    .line 1041
    const/4 v0, 0x1

    .line 1043
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ts/can/CanFunc;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/ts/can/CanFunc;->mIns:Lcom/ts/can/CanFunc;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/ts/can/CanFunc;

    invoke-direct {v0}, Lcom/ts/can/CanFunc;-><init>()V

    sput-object v0, Lcom/ts/can/CanFunc;->mIns:Lcom/ts/can/CanFunc;

    .line 264
    :cond_0
    sget-object v0, Lcom/ts/can/CanFunc;->mIns:Lcom/ts/can/CanFunc;

    return-object v0
.end method

.method public static getTickCount()J
    .locals 2

    .prologue
    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static i2b(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 1030
    if-nez p0, :cond_0

    .line 1032
    const/4 v0, 0x0

    .line 1034
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static intAdj(I)I
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 1048
    if-eqz p0, :cond_0

    .line 1050
    const/4 v0, 0x1

    .line 1053
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showCanActivity(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/ts/can/MyApplication;->mContext:Landroid/content/Context;

    .line 712
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 713
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 714
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "Class"

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 719
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 720
    return-void
.end method


# virtual methods
.method public CanInit(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsbHost()I

    move-result v1

    invoke-static {v1}, Lcom/ts/factoryset/FsOtherActivity;->setUsbMode(I)V

    .line 336
    sput-object p1, Lcom/ts/can/CanFunc;->mContext:Landroid/content/Context;

    .line 339
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCanTp()I

    move-result v1

    sput v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    .line 340
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCanSubT()I

    move-result v0

    .line 343
    .local v0, "SubType":I
    const-string v1, "CanFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init can tp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/ts/can/CanFunc;->mFsCanTp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->CanStart(II)I

    .line 347
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    sput v1, Lcom/ts/can/CanFunc;->mCanType:I

    .line 349
    invoke-static {}, Lcom/ts/can/CanCameraUI;->GetInstance()Lcom/ts/can/CanCameraUI;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ts/can/CanCameraUI;->Init(Landroid/content/Context;)V

    .line 350
    invoke-static {}, Lcom/ts/can/CanRadarManager;->GetInstance()Lcom/ts/can/CanRadarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/can/CanRadarManager;->Init()V

    .line 351
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    invoke-static {v1}, Lcom/ts/can/CanRadarActivity;->InitRadarMax(I)V

    .line 352
    invoke-direct {p0}, Lcom/ts/can/CanFunc;->CarDevInit()V

    .line 353
    invoke-static {p1}, Lcom/ts/can/CanFunc;->CarCanInit(Landroid/content/Context;)V

    .line 354
    sget-object v1, Lcom/ts/can/CanFunc;->mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

    invoke-virtual {v1, p1}, Lcom/ts/can/CanDoorMsgbox;->Init(Landroid/content/Context;)V

    .line 355
    return-void
.end method

.method public CanTask(I)I
    .locals 5
    .param p1, "mcuSta"    # I

    .prologue
    const/4 v4, 0x5

    .line 429
    const/16 v0, 0xff

    .line 430
    .local v0, "ret":I
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->CanMain(I)I

    move-result v0

    .line 433
    invoke-static {}, Lcom/ts/can/CanRadarManager;->GetInstance()Lcom/ts/can/CanRadarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/can/CanRadarManager;->Main()V

    .line 434
    invoke-static {}, Lcom/ts/can/CanCameraUI;->GetInstance()Lcom/ts/can/CanCameraUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/can/CanCameraUI;->UserAll()V

    .line 435
    invoke-static {}, Lcom/ts/can/CanFunc;->DealCanUserAll()V

    .line 436
    sget-object v1, Lcom/ts/can/CanFunc;->mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

    invoke-virtual {v1}, Lcom/ts/can/CanDoorMsgbox;->OnTimer()V

    .line 438
    sget v1, Lcom/ts/can/CanFunc;->mOldMcuSta:I

    if-eq p1, v1, :cond_0

    .line 440
    const-string v1, "CanFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mcu Status Changed, Now ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Old = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/ts/can/CanFunc;->mOldMcuSta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sput p1, Lcom/ts/can/CanFunc;->mOldMcuSta:I

    .line 442
    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    .line 444
    sget-object v1, Lcom/ts/can/CanFunc;->mDoorDlg:Lcom/ts/can/CanDoorMsgbox;

    invoke-virtual {v1}, Lcom/ts/can/CanDoorMsgbox;->Hide()V

    .line 448
    :cond_0
    sget v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    if-ltz v1, :cond_1

    sget v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    if-le v1, v4, :cond_2

    .line 450
    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    .line 452
    :cond_2
    sget v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    .line 466
    sget v1, Lcom/ts/can/CanFunc;->mLastQueryTick:I

    if-ne v1, v4, :cond_3

    .line 471
    invoke-static {}, Lcom/ts/can/CanFunc;->UpdateOutTemp()I

    .line 474
    :cond_3
    sget v1, Lcom/ts/can/CanFunc;->mCanType:I

    if-eqz v1, :cond_4

    .line 476
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 478
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    sput v1, Lcom/ts/can/CanFunc;->mNewMode:I

    .line 479
    sget v1, Lcom/ts/can/CanFunc;->mNewMode:I

    sget v2, Lcom/ts/can/CanFunc;->mOldMode:I

    if-eq v1, v2, :cond_4

    .line 481
    sget v1, Lcom/ts/can/CanFunc;->mOldMode:I

    sget v2, Lcom/ts/can/CanFunc;->mNewMode:I

    invoke-static {v1, v2}, Lcom/ts/can/CanFunc;->DealModeChange(II)V

    .line 482
    sget v1, Lcom/ts/can/CanFunc;->mNewMode:I

    sput v1, Lcom/ts/can/CanFunc;->mOldMode:I

    .line 489
    :cond_4
    return v0
.end method

.method public EnterCamera(I)V
    .locals 1
    .param p1, "nMode"    # I

    .prologue
    .line 1867
    invoke-static {}, Lcom/ts/can/CanCameraUI;->GetInstance()Lcom/ts/can/CanCameraUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ts/can/CanCameraUI;->EnterCamera(I)V

    .line 1868
    return-void
.end method

.method public GetCanTypeArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2021
    invoke-static {}, Lcom/ts/can/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_auto_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public testSendRecvData()V
    .locals 5

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 424
    :cond_0
    return-void

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanFunc;->mCanData:[B

    invoke-static {v2, v0}, Lcom/yyw/ts70xhw/Mcu;->GetCanMsg([BI)I

    move-result v1

    .line 414
    .local v1, "len":I
    if-eqz v1, :cond_0

    .line 420
    const-string v2, "CanFunc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mcu.GetCanMsg len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lcom/ts/can/CanFunc;->mCanData:[B

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->SendCanMsg([BI)I

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateAc()Z
    .locals 1

    .prologue
    .line 701
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const-class v0, Lcom/ts/can/CanACActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 704
    const/4 v0, 0x1

    .line 706
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
