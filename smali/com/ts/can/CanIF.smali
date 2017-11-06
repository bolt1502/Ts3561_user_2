.class public Lcom/ts/can/CanIF;
.super Ljava/lang/Object;
.source "CanIF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/CanIF$CAN_ID3;,
        Lcom/ts/can/CanIF$MediaInfo;,
        Lcom/ts/can/CanIF$MediaStatus;,
        Lcom/ts/can/CanIF$NaviInfo;
    }
.end annotation


# static fields
.field public static final AC_FML_KEY_AC:I = 0x4

.field public static final AC_FML_KEY_HCS:I = 0x6

.field public static final AC_FML_KEY_LOOP:I = 0x5

.field public static final AC_FML_KEY_MODE:I = 0x3

.field public static final AC_FML_KEY_PWR:I = 0x0

.field public static final AC_FML_KEY_QCS:I = 0x7

.field public static final AC_FML_KEY_TEMP:I = 0x2

.field public static final AC_FML_KEY_WIND:I = 0x1

.field public static final AC_KEY_AC:I = 0x8

.field public static final AC_KEY_AC_MAX:I = 0xc

.field public static final AC_KEY_AUTO:I = 0x6

.field public static final AC_KEY_FRONT_WIN:I = 0xb

.field public static final AC_KEY_LOOP:I = 0x9

.field public static final AC_KEY_MODE:I = 0x5

.field public static final AC_KEY_PTC:I = 0x7

.field public static final AC_KEY_PWR:I = 0xa

.field public static final AC_KEY_REAR_WIN:I = 0xe

.field public static final AC_KEY_TEMP_DEC:I = 0x2

.field public static final AC_KEY_TEMP_INC:I = 0x1

.field public static final AC_KEY_WIND_CYCLEC:I = 0xd

.field public static final AC_KEY_WIND_DEC:I = 0x4

.field public static final AC_KEY_WIND_INC:I = 0x3

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

.field public static final CanMediaStaPause:I = 0x2

.field public static final CanMediaStaPlay:I = 0x1

.field public static final CanMediaStaStop:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanIF"

.field public static final UI_A2DP:I = 0x7

.field public static final UI_AM:I = 0x1

.field public static final UI_APPS:I = 0x10

.field public static final UI_AUX:I = 0x8

.field public static final UI_CD:I = 0x4

.field public static final UI_FM:I = 0x9

.field public static final UI_FM1:I = 0x2

.field public static final UI_FM2:I = 0x3

.field public static final UI_RSYS:I = 0xf

.field public static final UI_SXM:I = 0xd

.field public static final UI_TV2:I = 0xe

.field public static final UI_USB:I = 0xa

.field public static final UI_USB1:I = 0x5

.field public static final UI_USB2:I = 0x6

.field public static final UI_XM1:I = 0xb

.field public static final UI_XM2:I = 0xc

.field public static mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field public static final mCanTypeArray:[Ljava/lang/String;

.field public static mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;

.field public static mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

.field public static mID3:Lcom/ts/can/CanIF$CAN_ID3;

.field public static mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

.field public static mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

.field public static mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

.field public static mOtherCamMode:I

.field public static mOtherCamModeOld:I

.field public static mbExdAvalid:Z

.field public static mfgCamKey:Z

.field public static mpfnType:Lcom/ts/can/CanTypeStrCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/ts/can/CanIF$MediaStatus;

    invoke-direct {v0}, Lcom/ts/can/CanIF$MediaStatus;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mMediaSta:Lcom/ts/can/CanIF$MediaStatus;

    .line 98
    new-instance v0, Lcom/ts/can/CanIF$MediaInfo;

    invoke-direct {v0}, Lcom/ts/can/CanIF$MediaInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mMediaInfo:Lcom/ts/can/CanIF$MediaInfo;

    .line 99
    new-instance v0, Lcom/ts/can/CanIF$CAN_ID3;

    invoke-direct {v0}, Lcom/ts/can/CanIF$CAN_ID3;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mID3:Lcom/ts/can/CanIF$CAN_ID3;

    .line 100
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 101
    new-instance v0, Lcom/ts/can/CanIF$NaviInfo;

    invoke-direct {v0}, Lcom/ts/can/CanIF$NaviInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    .line 102
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 103
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;-><init>()V

    sput-object v0, Lcom/ts/can/CanIF;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;

    .line 105
    sput-boolean v2, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/can/CanIF;->mpfnType:Lcom/ts/can/CanTypeStrCallBack;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NULL"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NULL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ts/can/CanIF;->mCanTypeArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Deal360CameraKey()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 315
    const/4 v1, 0x1

    .line 316
    .local v1, "ret":Z
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 350
    const/4 v1, 0x0

    .line 353
    :goto_0
    return v1

    .line 319
    :sswitch_0
    invoke-static {}, Lcom/ts/can/CanIF;->IsCanHave360Camera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    const/4 v1, 0x0

    .line 322
    goto :goto_0

    .line 324
    :cond_0
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->NissanCamera360Key(I)V

    goto :goto_0

    .line 328
    :sswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->QCCamSwitch()V

    goto :goto_0

    .line 332
    :sswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 334
    const/16 v2, 0x80

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->HmS5CameraSet(I)V

    .line 336
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->HmS5CameraSet(I)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 345
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    .line 347
    goto :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x2e -> :sswitch_2
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method public static DealAccordKey(I)I
    .locals 6
    .param p0, "nkey"    # I

    .prologue
    const/16 v5, 0x37

    const/16 v4, 0x32

    const/4 v3, 0x2

    const/16 v1, 0x30

    const/4 v2, 0x1

    .line 570
    const/4 v0, 0x1

    .line 571
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 731
    const/4 v0, 0x0

    .line 735
    :goto_0
    :sswitch_0
    return v0

    .line 578
    :sswitch_1
    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 583
    :sswitch_2
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 588
    :sswitch_3
    invoke-static {v5, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 593
    :sswitch_4
    const/4 v1, 0x3

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 598
    :sswitch_5
    const/4 v1, 0x4

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 603
    :sswitch_6
    const/4 v1, 0x5

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 608
    :sswitch_7
    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 613
    :sswitch_8
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 618
    :sswitch_9
    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 623
    :sswitch_a
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 628
    :sswitch_b
    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 632
    :sswitch_c
    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 636
    :sswitch_d
    const/16 v1, 0x38

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 640
    :sswitch_e
    const/16 v1, 0x38

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 646
    :sswitch_f
    const/16 v1, 0x35

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 651
    :sswitch_10
    const/16 v1, 0x35

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 656
    :sswitch_11
    const/16 v1, 0x34

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 661
    :sswitch_12
    const/16 v1, 0x31

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 666
    :sswitch_13
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 671
    :sswitch_14
    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 676
    :sswitch_15
    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 681
    :sswitch_16
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 686
    :sswitch_17
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 691
    :sswitch_18
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 696
    :sswitch_19
    invoke-static {v4, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 701
    :sswitch_1a
    const/4 v1, 0x3

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 706
    :sswitch_1b
    const/4 v1, 0x4

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto/16 :goto_0

    .line 711
    :sswitch_1c
    const/4 v1, 0x5

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto/16 :goto_0

    .line 715
    :sswitch_1d
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto/16 :goto_0

    .line 719
    :sswitch_1e
    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto/16 :goto_0

    .line 723
    :sswitch_1f
    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto/16 :goto_0

    .line 727
    :sswitch_20
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    goto/16 :goto_0

    .line 571
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_4
        0x24 -> :sswitch_5
        0x25 -> :sswitch_6
        0x2b -> :sswitch_7
        0x2c -> :sswitch_8
        0x2d -> :sswitch_9
        0x2e -> :sswitch_a
        0x2f -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_e
        0x38 -> :sswitch_f
        0x39 -> :sswitch_10
        0x3a -> :sswitch_11
        0x3b -> :sswitch_12
        0x42 -> :sswitch_13
        0x43 -> :sswitch_14
        0x44 -> :sswitch_15
        0x45 -> :sswitch_16
        0x4b -> :sswitch_17
        0x4c -> :sswitch_18
        0x4d -> :sswitch_19
        0x4e -> :sswitch_1a
        0x4f -> :sswitch_1b
        0x50 -> :sswitch_1c
        0x107 -> :sswitch_7
        0x114 -> :sswitch_1
        0x115 -> :sswitch_2
        0x116 -> :sswitch_3
        0x117 -> :sswitch_4
        0x118 -> :sswitch_5
        0x119 -> :sswitch_6
        0x11f -> :sswitch_16
        0x120 -> :sswitch_15
        0x121 -> :sswitch_13
        0x122 -> :sswitch_14
        0x123 -> :sswitch_8
        0x124 -> :sswitch_9
        0x125 -> :sswitch_a
        0x126 -> :sswitch_b
        0x127 -> :sswitch_11
        0x128 -> :sswitch_12
        0x143 -> :sswitch_17
        0x144 -> :sswitch_18
        0x145 -> :sswitch_19
        0x146 -> :sswitch_1a
        0x147 -> :sswitch_1b
        0x148 -> :sswitch_1c
        0x203 -> :sswitch_10
        0x204 -> :sswitch_f
        0x310 -> :sswitch_1d
        0x315 -> :sswitch_1e
        0x31a -> :sswitch_1f
        0x31f -> :sswitch_20
    .end sparse-switch
.end method

.method public static DealAccordXbsKey(I)I
    .locals 6
    .param p0, "nkey"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 741
    const/4 v0, 0x1

    .line 742
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 902
    const/4 v0, 0x0

    .line 906
    :goto_0
    :sswitch_0
    return v0

    .line 745
    :sswitch_1
    const/16 v1, 0x50

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 750
    :sswitch_2
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 755
    :sswitch_3
    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 760
    :sswitch_4
    invoke-static {v3, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 765
    :sswitch_5
    const/4 v1, 0x4

    invoke-static {v3, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 770
    :sswitch_6
    const/4 v1, 0x5

    invoke-static {v3, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 775
    :sswitch_7
    invoke-static {v3, v3}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 780
    :sswitch_8
    const/16 v1, 0x50

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 785
    :sswitch_9
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 790
    :sswitch_a
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 795
    :sswitch_b
    const/4 v1, 0x4

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 800
    :sswitch_c
    const/4 v1, 0x5

    invoke-static {v1, v4}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 804
    :sswitch_d
    const/16 v1, 0x50

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 808
    :sswitch_e
    const/16 v1, 0x51

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 812
    :sswitch_f
    const/16 v1, 0x51

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 818
    :sswitch_10
    const/16 v1, 0x8

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 823
    :sswitch_11
    const/16 v1, 0x9

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 832
    :sswitch_12
    const/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 837
    :sswitch_13
    const/16 v1, 0x8

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 842
    :sswitch_14
    const/16 v1, 0x9

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 847
    :sswitch_15
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 852
    :sswitch_16
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 857
    :sswitch_17
    const/4 v1, 0x1

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 862
    :sswitch_18
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 867
    :sswitch_19
    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto :goto_0

    .line 872
    :sswitch_1a
    const/4 v1, 0x4

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 877
    :sswitch_1b
    const/4 v1, 0x5

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 882
    :sswitch_1c
    invoke-static {v5, v3}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 886
    :sswitch_1d
    const/4 v1, 0x5

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 890
    :sswitch_1e
    const/4 v1, 0x4

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 894
    :sswitch_1f
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 898
    :sswitch_20
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsRadioCtrl(II)V

    goto/16 :goto_0

    .line 742
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_5
        0x24 -> :sswitch_6
        0x25 -> :sswitch_7
        0x2b -> :sswitch_8
        0x2c -> :sswitch_9
        0x2d -> :sswitch_a
        0x2e -> :sswitch_b
        0x2f -> :sswitch_c
        0x33 -> :sswitch_d
        0x34 -> :sswitch_e
        0x35 -> :sswitch_f
        0x38 -> :sswitch_10
        0x39 -> :sswitch_11
        0x3a -> :sswitch_0
        0x3b -> :sswitch_12
        0x42 -> :sswitch_13
        0x43 -> :sswitch_14
        0x44 -> :sswitch_15
        0x45 -> :sswitch_16
        0x4b -> :sswitch_17
        0x4c -> :sswitch_18
        0x4d -> :sswitch_19
        0x4e -> :sswitch_1a
        0x4f -> :sswitch_1b
        0x50 -> :sswitch_1c
        0x107 -> :sswitch_8
        0x114 -> :sswitch_2
        0x115 -> :sswitch_3
        0x116 -> :sswitch_4
        0x117 -> :sswitch_5
        0x118 -> :sswitch_6
        0x119 -> :sswitch_7
        0x11f -> :sswitch_16
        0x120 -> :sswitch_15
        0x121 -> :sswitch_13
        0x122 -> :sswitch_14
        0x123 -> :sswitch_9
        0x124 -> :sswitch_a
        0x125 -> :sswitch_b
        0x126 -> :sswitch_c
        0x127 -> :sswitch_0
        0x128 -> :sswitch_12
        0x143 -> :sswitch_17
        0x144 -> :sswitch_18
        0x145 -> :sswitch_19
        0x146 -> :sswitch_1a
        0x147 -> :sswitch_1b
        0x148 -> :sswitch_1c
        0x203 -> :sswitch_11
        0x204 -> :sswitch_10
        0x310 -> :sswitch_1d
        0x315 -> :sswitch_1e
        0x31a -> :sswitch_1f
        0x31f -> :sswitch_20
    .end sparse-switch
.end method

.method public static DealCam360Key(I)V
    .locals 5
    .param p0, "nKeyCode"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x5c

    .line 2008
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2012
    :sswitch_0
    const-string v1, "CanIF"

    const-string v2, "**********360 Key,Can.CAN_NISSAN**********"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2015
    if-ne p0, v3, :cond_1

    .line 2017
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->NissanCamera360Key(I)V

    goto :goto_0

    .line 2021
    :cond_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->NissanCamera360Key(I)V

    goto :goto_0

    .line 2024
    :cond_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2026
    if-ne p0, v3, :cond_0

    .line 2028
    invoke-static {v4}, Lcom/lgb/canmodule/CanJni;->NissanCamera360Key(I)V

    goto :goto_0

    .line 2035
    :sswitch_1
    if-ne p0, v3, :cond_0

    .line 2037
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->QCCamSwitch()V

    goto :goto_0

    .line 2043
    :sswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2045
    if-ne p0, v3, :cond_0

    .line 2047
    const/16 v1, 0x80

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HmS5CameraSet(I)V

    .line 2049
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->HmS5CameraSet(I)V

    goto :goto_0

    .line 2050
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2008
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x2e -> :sswitch_2
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method public static DealChrOthKey(I)I
    .locals 5
    .param p0, "nkey"    # I

    .prologue
    const/16 v4, 0xf0

    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 911
    const/4 v0, 0x1

    .line 912
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1000
    :goto_0
    return v0

    .line 916
    :sswitch_0
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 921
    :sswitch_1
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 926
    :sswitch_2
    const/4 v1, 0x5

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 931
    :sswitch_3
    const/4 v1, 0x6

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 936
    :sswitch_4
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 941
    :sswitch_5
    const/16 v1, 0xf1

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 946
    :sswitch_6
    const/16 v1, 0xf2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 951
    :sswitch_7
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 956
    :sswitch_8
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 961
    :sswitch_9
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 966
    :sswitch_a
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 970
    :sswitch_b
    const/4 v1, 0x2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 974
    :sswitch_c
    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 978
    :sswitch_d
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 982
    :sswitch_e
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 986
    :sswitch_f
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 990
    :sswitch_10
    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 994
    :sswitch_11
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    goto :goto_0

    .line 912
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
        0x3c -> :sswitch_4
        0x3d -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_7
        0x43 -> :sswitch_8
        0x44 -> :sswitch_9
        0x45 -> :sswitch_a
        0x5a -> :sswitch_b
        0x5b -> :sswitch_c
        0x11f -> :sswitch_a
        0x120 -> :sswitch_9
        0x121 -> :sswitch_7
        0x122 -> :sswitch_8
        0x123 -> :sswitch_0
        0x124 -> :sswitch_1
        0x125 -> :sswitch_2
        0x126 -> :sswitch_3
        0x12b -> :sswitch_4
        0x12c -> :sswitch_5
        0x12d -> :sswitch_6
        0x310 -> :sswitch_d
        0x315 -> :sswitch_e
        0x31a -> :sswitch_f
        0x31f -> :sswitch_10
        0x338 -> :sswitch_11
    .end sparse-switch
.end method

.method public static DealCrosstourKey(I)I
    .locals 7
    .param p0, "nkey"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1005
    const/4 v0, 0x1

    .line 1006
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1166
    const/4 v0, 0x0

    .line 1170
    :goto_0
    :sswitch_0
    return v0

    .line 1013
    :sswitch_1
    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1018
    :sswitch_2
    const/4 v1, 0x2

    invoke-static {v6, v1}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1023
    :sswitch_3
    const/4 v1, 0x3

    invoke-static {v6, v1}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1028
    :sswitch_4
    invoke-static {v6, v4}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1033
    :sswitch_5
    invoke-static {v6, v5}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1038
    :sswitch_6
    invoke-static {v6, v6}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1043
    :sswitch_7
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1048
    :sswitch_8
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1053
    :sswitch_9
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1058
    :sswitch_a
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1063
    :sswitch_b
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1067
    :sswitch_c
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1071
    :sswitch_d
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1075
    :sswitch_e
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1081
    :sswitch_f
    const/16 v1, 0x8

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1086
    :sswitch_10
    const/16 v1, 0x9

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1091
    :sswitch_11
    const/16 v1, 0xc

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1096
    :sswitch_12
    const/16 v1, 0xa

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1101
    :sswitch_13
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1106
    :sswitch_14
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1111
    :sswitch_15
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1116
    :sswitch_16
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1121
    :sswitch_17
    const/4 v1, 0x7

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1126
    :sswitch_18
    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1131
    :sswitch_19
    const/4 v1, 0x7

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1136
    :sswitch_1a
    const/4 v1, 0x7

    invoke-static {v1, v4}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1141
    :sswitch_1b
    const/4 v1, 0x7

    invoke-static {v1, v5}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto :goto_0

    .line 1146
    :sswitch_1c
    const/4 v1, 0x7

    invoke-static {v1, v6}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto/16 :goto_0

    .line 1150
    :sswitch_1d
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto/16 :goto_0

    .line 1154
    :sswitch_1e
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto/16 :goto_0

    .line 1158
    :sswitch_1f
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto/16 :goto_0

    .line 1162
    :sswitch_20
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    goto/16 :goto_0

    .line 1006
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_4
        0x24 -> :sswitch_5
        0x25 -> :sswitch_6
        0x2b -> :sswitch_7
        0x2c -> :sswitch_8
        0x2d -> :sswitch_9
        0x2e -> :sswitch_a
        0x2f -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_e
        0x38 -> :sswitch_f
        0x39 -> :sswitch_10
        0x3a -> :sswitch_11
        0x3b -> :sswitch_12
        0x42 -> :sswitch_13
        0x43 -> :sswitch_14
        0x44 -> :sswitch_15
        0x45 -> :sswitch_16
        0x4b -> :sswitch_17
        0x4c -> :sswitch_18
        0x4d -> :sswitch_19
        0x4e -> :sswitch_1a
        0x4f -> :sswitch_1b
        0x50 -> :sswitch_1c
        0x107 -> :sswitch_7
        0x114 -> :sswitch_1
        0x115 -> :sswitch_2
        0x116 -> :sswitch_3
        0x117 -> :sswitch_4
        0x118 -> :sswitch_5
        0x119 -> :sswitch_6
        0x11f -> :sswitch_16
        0x120 -> :sswitch_15
        0x121 -> :sswitch_13
        0x122 -> :sswitch_14
        0x123 -> :sswitch_8
        0x124 -> :sswitch_9
        0x125 -> :sswitch_a
        0x126 -> :sswitch_b
        0x127 -> :sswitch_11
        0x128 -> :sswitch_12
        0x143 -> :sswitch_17
        0x144 -> :sswitch_18
        0x145 -> :sswitch_19
        0x146 -> :sswitch_1a
        0x147 -> :sswitch_1b
        0x148 -> :sswitch_1c
        0x203 -> :sswitch_10
        0x204 -> :sswitch_f
        0x310 -> :sswitch_1d
        0x315 -> :sswitch_1e
        0x31a -> :sswitch_1f
        0x31f -> :sswitch_20
    .end sparse-switch
.end method

.method public static DealExdKey(I)I
    .locals 3
    .param p0, "nKey"    # I

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "ret":I
    const-string v1, "CanIF"

    const-string v2, "[lgb]DealExdKey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 565
    :goto_0
    return v0

    .line 527
    :sswitch_0
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealAccordKey(I)I

    move-result v0

    .line 528
    goto :goto_0

    .line 531
    :sswitch_1
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealCrosstourKey(I)I

    move-result v0

    .line 532
    goto :goto_0

    .line 535
    :sswitch_2
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealChrOthKey(I)I

    move-result v0

    .line 536
    goto :goto_0

    .line 539
    :sswitch_3
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealFiatAllKey(I)I

    move-result v0

    .line 540
    goto :goto_0

    .line 543
    :sswitch_4
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealFiatBravoKey(I)I

    move-result v0

    .line 544
    goto :goto_0

    .line 547
    :sswitch_5
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealMzd3Key(I)I

    move-result v0

    .line 548
    goto :goto_0

    .line 551
    :sswitch_6
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealMzdCx4Key(I)I

    move-result v0

    .line 552
    goto :goto_0

    .line 555
    :sswitch_7
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealAccordXbsKey(I)I

    move-result v0

    .line 556
    goto :goto_0

    .line 559
    :sswitch_8
    invoke-static {p0}, Lcom/ts/can/CanIF;->DealPg408Key(I)I

    move-result v0

    .line 560
    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1d -> :sswitch_2
        0x24 -> :sswitch_3
        0x25 -> :sswitch_4
        0x27 -> :sswitch_5
        0x45 -> :sswitch_6
        0x60 -> :sswitch_7
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method public static DealFiatAllKey(I)I
    .locals 1
    .param p0, "nkey"    # I

    .prologue
    .line 1196
    const/4 v0, 0x1

    .line 1197
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1279
    :goto_0
    :sswitch_0
    return v0

    .line 1201
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllNext()V

    goto :goto_0

    .line 1206
    :sswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPrev()V

    goto :goto_0

    .line 1231
    :sswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllNext()V

    goto :goto_0

    .line 1236
    :sswitch_4
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPrev()V

    goto :goto_0

    .line 1241
    :sswitch_5
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPrev()V

    goto :goto_0

    .line 1246
    :sswitch_6
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllNext()V

    goto :goto_0

    .line 1250
    :sswitch_7
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPlay()V

    goto :goto_0

    .line 1254
    :sswitch_8
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllStop()V

    goto :goto_0

    .line 1258
    :sswitch_9
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllNext()V

    goto :goto_0

    .line 1262
    :sswitch_a
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPrev()V

    goto :goto_0

    .line 1266
    :sswitch_b
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllNext()V

    goto :goto_0

    .line 1270
    :sswitch_c
    invoke-static {}, Lcom/ts/can/CanIF;->FiatAllPrev()V

    goto :goto_0

    .line 1197
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
        0x45 -> :sswitch_6
        0x5a -> :sswitch_7
        0x5b -> :sswitch_8
        0x11f -> :sswitch_6
        0x120 -> :sswitch_5
        0x121 -> :sswitch_3
        0x122 -> :sswitch_4
        0x123 -> :sswitch_1
        0x124 -> :sswitch_2
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12b -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x310 -> :sswitch_9
        0x315 -> :sswitch_a
        0x31a -> :sswitch_b
        0x31f -> :sswitch_c
        0x338 -> :sswitch_0
    .end sparse-switch
.end method

.method public static DealFiatBravoKey(I)I
    .locals 1
    .param p0, "nkey"    # I

    .prologue
    .line 1304
    const/4 v0, 0x1

    .line 1305
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1387
    :goto_0
    :sswitch_0
    return v0

    .line 1309
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoNext()V

    goto :goto_0

    .line 1314
    :sswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPrev()V

    goto :goto_0

    .line 1339
    :sswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoNext()V

    goto :goto_0

    .line 1344
    :sswitch_4
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPrev()V

    goto :goto_0

    .line 1349
    :sswitch_5
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPrev()V

    goto :goto_0

    .line 1354
    :sswitch_6
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoNext()V

    goto :goto_0

    .line 1358
    :sswitch_7
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPlay()V

    goto :goto_0

    .line 1362
    :sswitch_8
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoStop()V

    goto :goto_0

    .line 1366
    :sswitch_9
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoNext()V

    goto :goto_0

    .line 1370
    :sswitch_a
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPrev()V

    goto :goto_0

    .line 1374
    :sswitch_b
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoNext()V

    goto :goto_0

    .line 1378
    :sswitch_c
    invoke-static {}, Lcom/ts/can/CanIF;->FiatBravoPrev()V

    goto :goto_0

    .line 1305
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
        0x45 -> :sswitch_6
        0x5a -> :sswitch_7
        0x5b -> :sswitch_8
        0x11f -> :sswitch_6
        0x120 -> :sswitch_5
        0x121 -> :sswitch_3
        0x122 -> :sswitch_4
        0x123 -> :sswitch_1
        0x124 -> :sswitch_2
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12b -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x310 -> :sswitch_9
        0x315 -> :sswitch_a
        0x31a -> :sswitch_b
        0x31f -> :sswitch_c
        0x338 -> :sswitch_0
    .end sparse-switch
.end method

.method public static DealFmlACKey(II)V
    .locals 9
    .param p0, "key"    # I
    .param p1, "sta"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 1933
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    sput-object v2, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 1936
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 1937
    .local v1, "msg":[B
    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-byte v3, v1, v2

    .line 1938
    const/16 v2, -0x76

    aput-byte v2, v1, v6

    .line 1939
    aput-byte v5, v1, v5

    .line 1940
    const/4 v2, 0x3

    int-to-byte v3, p0

    aput-byte v3, v1, v2

    .line 1942
    if-ne p0, v4, :cond_1

    if-eqz p1, :cond_1

    .line 1944
    sget-object v2, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-static {v2}, Lcom/ts/can/CanIF;->int2Bool(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1946
    aput-byte v5, v1, v4

    .line 1991
    :goto_0
    add-int/lit16 v2, p0, 0x8c

    aget-byte v3, v1, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 1992
    invoke-static {v1, v8}, Lcom/yyw/ts70xhw/Mcu;->SendCanMsg([BI)I

    .line 1995
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    :goto_1
    const/4 v2, 0x0

    aput-byte v2, v1, v4

    .line 2002
    add-int/lit16 v2, p0, 0x8c

    aget-byte v3, v1, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 2003
    invoke-static {v1, v8}, Lcom/yyw/ts70xhw/Mcu;->SendCanMsg([BI)I

    .line 2004
    return-void

    .line 1950
    :cond_0
    aput-byte v6, v1, v4

    goto :goto_0

    .line 1953
    :cond_1
    if-ne p0, v7, :cond_3

    if-eqz p1, :cond_3

    .line 1955
    sget-object v2, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v2}, Lcom/ts/can/CanIF;->int2Bool(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1957
    aput-byte v6, v1, v4

    goto :goto_0

    .line 1961
    :cond_2
    aput-byte v5, v1, v4

    goto :goto_0

    .line 1964
    :cond_3
    if-ne p0, v8, :cond_5

    if-eqz p1, :cond_5

    .line 1966
    sget-object v2, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-static {v2}, Lcom/ts/can/CanIF;->int2Bool(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1968
    aput-byte v5, v1, v4

    goto :goto_0

    .line 1972
    :cond_4
    aput-byte v6, v1, v4

    goto :goto_0

    .line 1975
    :cond_5
    const/4 v2, 0x7

    if-ne p0, v2, :cond_7

    if-eqz p1, :cond_7

    .line 1977
    sget-object v2, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-static {v2}, Lcom/ts/can/CanIF;->int2Bool(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1979
    aput-byte v5, v1, v4

    goto :goto_0

    .line 1983
    :cond_6
    aput-byte v6, v1, v4

    goto :goto_0

    .line 1988
    :cond_7
    int-to-byte v2, p1

    aput-byte v2, v1, v4

    goto :goto_0

    .line 1996
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static DealGeelyYjx1ACKey(I)V
    .locals 12
    .param p0, "key"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 2067
    sget-object v4, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    sput-object v4, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 2070
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 2071
    .local v2, "msg":[B
    const/16 v4, 0x2e

    aput-byte v4, v2, v9

    .line 2072
    const/4 v4, 0x1

    const/16 v5, -0x76

    aput-byte v5, v2, v4

    .line 2073
    const/4 v4, 0x2

    aput-byte v8, v2, v4

    .line 2074
    aput-byte v9, v2, v7

    .line 2075
    const/16 v4, 0xa

    if-ne p0, v4, :cond_6

    .line 2077
    const/16 v4, -0x80

    aput-byte v4, v2, v7

    .line 2096
    :cond_0
    :goto_0
    aput-byte v9, v2, v8

    .line 2097
    sget-object v4, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    .line 2098
    .local v3, "temp":I
    const/16 v4, 0xd

    if-ne p0, v4, :cond_b

    .line 2100
    sget-object v4, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    if-lt v3, v4, :cond_a

    .line 2102
    const/4 v3, 0x0

    .line 2135
    :cond_1
    :goto_1
    shl-int/lit8 v4, v3, 0x4

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    .line 2137
    const/16 v4, 0xe

    if-ne p0, v4, :cond_2

    .line 2139
    aget-byte v4, v2, v8

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    .line 2142
    :cond_2
    aput-byte v9, v2, v10

    .line 2143
    const/16 v4, 0x9

    if-ne p0, v4, :cond_3

    .line 2145
    aget-byte v4, v2, v10

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v10

    .line 2148
    :cond_3
    aput-byte v9, v2, v11

    .line 2149
    const/4 v4, 0x1

    if-ne p0, v4, :cond_4

    .line 2151
    aget-byte v4, v2, v11

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    aput-byte v4, v2, v11

    .line 2153
    :cond_4
    const/4 v4, 0x2

    if-ne p0, v4, :cond_5

    .line 2155
    aget-byte v4, v2, v11

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v11

    .line 2158
    :cond_5
    const/4 v4, 0x7

    aget-byte v5, v2, v7

    add-int/lit16 v5, v5, 0x8e

    aget-byte v6, v2, v8

    add-int/2addr v5, v6

    aget-byte v6, v2, v10

    add-int/2addr v5, v6

    aget-byte v6, v2, v11

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 2159
    const/16 v4, 0x8

    invoke-static {v2, v4}, Lcom/yyw/ts70xhw/Mcu;->SendCanMsg([BI)I

    .line 2162
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    :goto_2
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_3
    const/4 v4, 0x7

    if-lt v1, v4, :cond_f

    .line 2172
    const/4 v4, 0x7

    aget-byte v5, v2, v7

    add-int/lit16 v5, v5, 0x8e

    aget-byte v6, v2, v8

    add-int/2addr v5, v6

    aget-byte v6, v2, v10

    add-int/2addr v5, v6

    aget-byte v6, v2, v11

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 2173
    const/16 v4, 0x8

    invoke-static {v2, v4}, Lcom/yyw/ts70xhw/Mcu;->SendCanMsg([BI)I

    .line 2174
    return-void

    .line 2079
    .end local v1    # "i":I
    .end local v3    # "temp":I
    :cond_6
    if-ne p0, v10, :cond_7

    .line 2081
    const/16 v4, 0x40

    aput-byte v4, v2, v7

    goto/16 :goto_0

    .line 2083
    :cond_7
    const/16 v4, 0xb

    if-ne p0, v4, :cond_8

    .line 2085
    const/16 v4, 0x10

    aput-byte v4, v2, v7

    goto/16 :goto_0

    .line 2087
    :cond_8
    const/16 v4, 0x8

    if-ne p0, v4, :cond_9

    .line 2089
    const/4 v4, 0x2

    aput-byte v4, v2, v7

    goto/16 :goto_0

    .line 2091
    :cond_9
    const/16 v4, 0xc

    if-ne p0, v4, :cond_0

    .line 2093
    const/4 v4, 0x1

    aput-byte v4, v2, v7

    goto/16 :goto_0

    .line 2106
    .restart local v3    # "temp":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 2108
    goto/16 :goto_1

    .line 2109
    :cond_b
    if-ne p0, v7, :cond_d

    .line 2111
    sget-object v4, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    if-lt v3, v4, :cond_c

    .line 2113
    sget-object v4, Lcom/ts/can/CanIF;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    .line 2114
    goto/16 :goto_1

    .line 2117
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 2119
    goto/16 :goto_1

    .line 2120
    :cond_d
    if-ne p0, v8, :cond_1

    .line 2122
    if-eqz v3, :cond_1

    .line 2126
    const/4 v4, 0x1

    if-gt v3, v4, :cond_e

    .line 2128
    const/4 v3, 0x1

    .line 2129
    goto/16 :goto_1

    .line 2132
    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 2163
    :catch_0
    move-exception v0

    .line 2165
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2170
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    :cond_f
    aput-byte v9, v2, v1

    .line 2168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static DealGpsVoice(I)V
    .locals 9
    .param p0, "sta"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1867
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1870
    :sswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1872
    new-instance v2, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;

    invoke-direct {v2}, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;-><init>()V

    .line 1873
    .local v2, "mStaData":Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;
    new-instance v1, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;

    invoke-direct {v1}, Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;-><init>()V

    .line 1874
    .local v1, "mPhoneData":Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;
    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMGetOnStar(Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;)V

    .line 1875
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/ts/can/CanIF;->IsExdMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1877
    :cond_1
    invoke-static {v8, v6}, Lcom/lgb/canmodule/CanJni;->GmSbCarMoudleCtl(II)V

    .line 1879
    const-wide/16 v3, 0x15e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :goto_1
    invoke-static {v7}, Lcom/yyw/ts70xhw/Iop;->RstPort(I)I

    .line 1885
    const-string v3, "CanIF"

    const-string v4, "GpsVoice off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1880
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1890
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v3, "CanIF"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GpsVoice on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;->Sta:I

    if-nez v3, :cond_3

    .line 1893
    invoke-static {v6}, Lcom/yyw/ts70xhw/Iop;->RstPort(I)I

    .line 1895
    :cond_3
    invoke-static {v8, v7}, Lcom/lgb/canmodule/CanJni;->GmSbCarMoudleCtl(II)V

    goto :goto_0

    .line 1901
    .end local v1    # "mPhoneData":Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;
    .end local v2    # "mStaData":Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->IsExdMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1903
    if-nez p0, :cond_4

    .line 1905
    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetAudio(I)V

    goto :goto_0

    .line 1909
    :cond_4
    invoke-static {v7}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetAudio(I)V

    goto :goto_0

    .line 1867
    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public static DealJLACKey(I)V
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 1768
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 1769
    .local v0, "msg":[B
    const/4 v1, 0x0

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    .line 1770
    const/4 v1, 0x1

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    .line 1771
    const/4 v1, 0x2

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    .line 1772
    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 1773
    const/4 v1, 0x4

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 1774
    const/4 v1, 0x5

    add-int/lit16 v2, p0, 0x157

    and-int/lit16 v2, v2, 0xff

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1775
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Mcu;->SendCanMsg([BI)I

    .line 1776
    return-void
.end method

.method public static DealMzd3Key(I)I
    .locals 1
    .param p0, "nkey"    # I

    .prologue
    .line 1429
    const/4 v0, 0x1

    .line 1430
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1516
    :goto_0
    :sswitch_0
    return v0

    .line 1434
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Next()V

    goto :goto_0

    .line 1439
    :sswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Prev()V

    goto :goto_0

    .line 1452
    :sswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3PP()V

    goto :goto_0

    .line 1457
    :sswitch_4
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Rdm()V

    goto :goto_0

    .line 1462
    :sswitch_5
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Rpt()V

    goto :goto_0

    .line 1467
    :sswitch_6
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Next()V

    goto :goto_0

    .line 1472
    :sswitch_7
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Prev()V

    goto :goto_0

    .line 1477
    :sswitch_8
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Prev()V

    goto :goto_0

    .line 1482
    :sswitch_9
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Next()V

    goto :goto_0

    .line 1486
    :sswitch_a
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Play()V

    goto :goto_0

    .line 1490
    :sswitch_b
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Pause()V

    goto :goto_0

    .line 1494
    :sswitch_c
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Next()V

    goto :goto_0

    .line 1498
    :sswitch_d
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Prev()V

    goto :goto_0

    .line 1502
    :sswitch_e
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Next()V

    goto :goto_0

    .line 1506
    :sswitch_f
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Prev()V

    goto :goto_0

    .line 1510
    :sswitch_10
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3PP()V

    goto :goto_0

    .line 1430
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_3
        0x3d -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_6
        0x43 -> :sswitch_7
        0x44 -> :sswitch_8
        0x45 -> :sswitch_9
        0x5a -> :sswitch_a
        0x5b -> :sswitch_b
        0x11f -> :sswitch_9
        0x120 -> :sswitch_8
        0x121 -> :sswitch_6
        0x122 -> :sswitch_7
        0x123 -> :sswitch_1
        0x124 -> :sswitch_2
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12b -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x310 -> :sswitch_c
        0x315 -> :sswitch_d
        0x31a -> :sswitch_e
        0x31f -> :sswitch_f
        0x338 -> :sswitch_10
    .end sparse-switch
.end method

.method public static DealMzdCx4Key(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 1548
    const/4 v0, 0x1

    .line 1549
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1635
    :goto_0
    :sswitch_0
    return v0

    .line 1553
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Next()V

    goto :goto_0

    .line 1558
    :sswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Prev()V

    goto :goto_0

    .line 1571
    :sswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4PP()V

    goto :goto_0

    .line 1576
    :sswitch_4
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Rdm()V

    goto :goto_0

    .line 1581
    :sswitch_5
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Rpt()V

    goto :goto_0

    .line 1586
    :sswitch_6
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Next()V

    goto :goto_0

    .line 1591
    :sswitch_7
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Prev()V

    goto :goto_0

    .line 1596
    :sswitch_8
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Prev()V

    goto :goto_0

    .line 1601
    :sswitch_9
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Next()V

    goto :goto_0

    .line 1605
    :sswitch_a
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Play()V

    goto :goto_0

    .line 1609
    :sswitch_b
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Pause()V

    goto :goto_0

    .line 1613
    :sswitch_c
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Next()V

    goto :goto_0

    .line 1617
    :sswitch_d
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Prev()V

    goto :goto_0

    .line 1621
    :sswitch_e
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Next()V

    goto :goto_0

    .line 1625
    :sswitch_f
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4Prev()V

    goto :goto_0

    .line 1629
    :sswitch_10
    invoke-static {}, Lcom/ts/can/CanIF;->MzdCx4PP()V

    goto :goto_0

    .line 1549
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_3
        0x3d -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_6
        0x43 -> :sswitch_7
        0x44 -> :sswitch_8
        0x45 -> :sswitch_9
        0x5a -> :sswitch_a
        0x5b -> :sswitch_b
        0x11f -> :sswitch_9
        0x120 -> :sswitch_8
        0x121 -> :sswitch_6
        0x122 -> :sswitch_7
        0x123 -> :sswitch_1
        0x124 -> :sswitch_2
        0x125 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12b -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x310 -> :sswitch_c
        0x315 -> :sswitch_d
        0x31a -> :sswitch_e
        0x31f -> :sswitch_f
        0x338 -> :sswitch_10
    .end sparse-switch
.end method

.method public static DealPg408Key(I)I
    .locals 1
    .param p0, "nkey"    # I

    .prologue
    .line 1676
    const/4 v0, 0x1

    .line 1677
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 1762
    :goto_0
    :sswitch_0
    return v0

    .line 1681
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Next()V

    goto :goto_0

    .line 1686
    :sswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Prev()V

    goto :goto_0

    .line 1691
    :sswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Ff()V

    goto :goto_0

    .line 1696
    :sswitch_4
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Fr()V

    goto :goto_0

    .line 1701
    :sswitch_5
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Play()V

    goto :goto_0

    .line 1714
    :sswitch_6
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Prev()V

    goto :goto_0

    .line 1719
    :sswitch_7
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Next()V

    goto :goto_0

    .line 1724
    :sswitch_8
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Prev()V

    goto :goto_0

    .line 1729
    :sswitch_9
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Next()V

    goto :goto_0

    .line 1733
    :sswitch_a
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Play()V

    goto :goto_0

    .line 1737
    :sswitch_b
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Pause()V

    goto :goto_0

    .line 1741
    :sswitch_c
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Prev()V

    goto :goto_0

    .line 1745
    :sswitch_d
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Next()V

    goto :goto_0

    .line 1749
    :sswitch_e
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Prev()V

    goto :goto_0

    .line 1753
    :sswitch_f
    invoke-static {}, Lcom/ts/can/CanIF;->Pg408Next()V

    goto :goto_0

    .line 1677
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_3
        0x2f -> :sswitch_4
        0x3c -> :sswitch_5
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_6
        0x43 -> :sswitch_7
        0x44 -> :sswitch_8
        0x45 -> :sswitch_9
        0x5a -> :sswitch_a
        0x5b -> :sswitch_b
        0x11f -> :sswitch_9
        0x120 -> :sswitch_8
        0x121 -> :sswitch_6
        0x122 -> :sswitch_7
        0x123 -> :sswitch_1
        0x124 -> :sswitch_2
        0x125 -> :sswitch_3
        0x126 -> :sswitch_4
        0x12b -> :sswitch_5
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x310 -> :sswitch_c
        0x315 -> :sswitch_d
        0x31a -> :sswitch_e
        0x31f -> :sswitch_f
        0x338 -> :sswitch_0
    .end sparse-switch
.end method

.method public static FiatAllNext()V
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatAllUsbCtrl(I)V

    .line 1192
    return-void
.end method

.method public static FiatAllPlay()V
    .locals 1

    .prologue
    .line 1176
    const/16 v0, 0x81

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatAllUsbCtrl(I)V

    .line 1177
    return-void
.end method

.method public static FiatAllPrev()V
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatAllUsbCtrl(I)V

    .line 1187
    return-void
.end method

.method public static FiatAllStop()V
    .locals 1

    .prologue
    .line 1181
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatAllUsbCtrl(I)V

    .line 1182
    return-void
.end method

.method public static FiatBravoNext()V
    .locals 0

    .prologue
    .line 1300
    return-void
.end method

.method public static FiatBravoPlay()V
    .locals 1

    .prologue
    .line 1284
    const/16 v0, 0x81

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatBravoUsbCtrl(I)V

    .line 1285
    return-void
.end method

.method public static FiatBravoPrev()V
    .locals 0

    .prologue
    .line 1295
    return-void
.end method

.method public static FiatBravoStop()V
    .locals 1

    .prologue
    .line 1289
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FiatBravoUsbCtrl(I)V

    .line 1290
    return-void
.end method

.method public static GetCanTypeArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2183
    const-string v0, "CanIF"

    const-string v1, "[lgb]###GetCanTypeArray###"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    sget-object v0, Lcom/ts/can/CanIF;->mpfnType:Lcom/ts/can/CanTypeStrCallBack;

    if-nez v0, :cond_0

    .line 2186
    sget-object v0, Lcom/ts/can/CanIF;->mCanTypeArray:[Ljava/lang/String;

    .line 2191
    :goto_0
    return-object v0

    .line 2190
    :cond_0
    const-string v0, "CanIF"

    const-string v1, "[lgb]###mpfnType.GetCanTypeArray###"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    sget-object v0, Lcom/ts/can/CanIF;->mpfnType:Lcom/ts/can/CanTypeStrCallBack;

    invoke-interface {v0}, Lcom/ts/can/CanTypeStrCallBack;->GetCanTypeArray()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static GetOtherCamMode()I
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/ts/can/CanIF;->mOtherCamMode:I

    return v0
.end method

.method public static GetResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2197
    const/4 v2, 0x0

    .line 2198
    .local v2, "themeResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2201
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 2202
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2209
    :goto_0
    return v3

    .line 2204
    :catch_0
    move-exception v0

    .line 2207
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2209
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static GetTsResStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2214
    const-string v1, ""

    .line 2215
    .local v1, "strRes":Ljava/lang/String;
    const-string v2, "string"

    const-string v3, "com.ts.MainUI"

    invoke-static {p0, p1, v2, v3}, Lcom/ts/can/CanIF;->GetResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2216
    .local v0, "resStr":I
    if-lez v0, :cond_0

    .line 2218
    const-string v2, "CanIF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "###Get resStr = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2226
    :goto_0
    return-object v1

    .line 2223
    :cond_0
    const-string v2, "CanIF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "###Can\'t Get resStr = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetTsResStrArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2231
    const/4 v1, 0x0

    .line 2232
    .local v1, "strArray":[Ljava/lang/String;
    const-string v2, "array"

    const-string v3, "com.ts.MainUI"

    invoke-static {p0, p1, v2, v3}, Lcom/ts/can/CanIF;->GetResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2233
    .local v0, "resStrArr":I
    if-lez v0, :cond_0

    .line 2235
    const-string v2, "CanIF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "###Get resStrArr = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2242
    :goto_0
    return-object v1

    .line 2240
    :cond_0
    const-string v2, "CanIF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "###Can\'t Get resStrArr = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetWorkMode()I
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    return v0
.end method

.method public static GotoExdMode()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 432
    const/4 v0, 0x1

    .line 433
    .local v0, "ret":Z
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 436
    :sswitch_0
    invoke-static {}, Lcom/ts/can/CanIF;->IsHaveIcoExdRadio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.honda.accord.CanAccordRadioActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    const/4 v0, 0x0

    .line 441
    goto :goto_0

    .line 444
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->IsHaveIcoExdRadio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.honda.crosstour.CanCrstourRadioActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_1
    const/4 v0, 0x0

    .line 449
    goto :goto_0

    .line 452
    :sswitch_2
    invoke-static {v2}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    const/16 v1, 0x26

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 456
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.chrysler.rz.CanRZygCDActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 465
    goto :goto_0

    .line 460
    :cond_3
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.chrysler.CanChrOthCDActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :sswitch_3
    invoke-static {v2}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 470
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.fiat.CanFiatAllExdActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_4
    const/4 v0, 0x0

    .line 473
    goto :goto_0

    .line 476
    :sswitch_4
    invoke-static {v2}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 478
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.fiat.CanFiatBravoExdActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_5
    const/4 v0, 0x0

    .line 481
    goto :goto_0

    .line 484
    :sswitch_5
    invoke-static {v2}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 486
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.mzd.axela.CanMzd3CDActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_6
    const/4 v0, 0x0

    .line 489
    goto :goto_0

    .line 492
    :sswitch_6
    invoke-static {v2}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v1

    if-eqz v1, :cond_7

    .line 494
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.mzd.cx4.CanMzdCx4CDActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_7
    const/4 v0, 0x0

    .line 497
    goto :goto_0

    .line 500
    :sswitch_7
    invoke-static {}, Lcom/ts/can/CanIF;->IsHaveIcoExdRadio()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 502
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.honda.accord_xbs.CanAccordXbsRadioActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_8
    const/4 v0, 0x0

    .line 505
    goto/16 :goto_0

    .line 508
    :sswitch_8
    invoke-static {v2}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 510
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.psa.pg408.CanPg408ExdActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_9
    const/4 v0, 0x0

    .line 513
    goto/16 :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1d -> :sswitch_2
        0x24 -> :sswitch_3
        0x25 -> :sswitch_4
        0x27 -> :sswitch_5
        0x45 -> :sswitch_6
        0x60 -> :sswitch_7
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method public static GotoExdRadWin()Z
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/ts/can/CanIF;->IsHaveIcoExdRadio()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 427
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 407
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x1

    .line 408
    .restart local v0    # "ret":Z
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 423
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :sswitch_0
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.honda.accord.CanAccordRadioActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :sswitch_1
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.honda.crosstour.CanCrstourRadioActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :sswitch_2
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.can.honda.accord_xbs.CanAccordXbsRadioActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x14 -> :sswitch_1
        0x60 -> :sswitch_2
    .end sparse-switch
.end method

.method public static IsCanHave360Camera()Z
    .locals 3

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "ret":Z
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 300
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCanSubT()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCanSubT()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 302
    :cond_1
    const/4 v0, 0x1

    .line 304
    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static IsCurExdRadioWin(Ljava/lang/String;)Z
    .locals 3
    .param p0, "strTopActivity"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 380
    if-nez p0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 385
    :cond_1
    const-string v2, "com.ts.can.honda.accord.CanAccordRadioActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 387
    goto :goto_0

    .line 389
    :cond_2
    const-string v2, "com.ts.can.honda.crosstour.CanCrstourRadioActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 391
    goto :goto_0

    .line 393
    :cond_3
    const-string v2, "com.ts.can.honda.accord_xbs.CanAccordXbsRadioActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 395
    goto :goto_0
.end method

.method public static IsExdMode()Z
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/ts/can/CanIF;->GetWorkMode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsExdModeAvalid()Z
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/ts/can/CanIF;->mbExdAvalid:Z

    return v0
.end method

.method public static IsHaveIco(I)I
    .locals 3
    .param p0, "ico"    # I

    .prologue
    .line 358
    const/16 v2, 0x64

    new-array v1, v2, [I

    .line 359
    .local v1, "icoArray":[I
    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->GetIcon([I)I

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    .line 369
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 363
    :cond_0
    aget v2, v1, v0

    if-ne v2, p0, :cond_1

    .line 365
    const/4 v2, 0x1

    goto :goto_1

    .line 361
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static IsHaveIcoExdRadio()Z
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/ts/can/CanIF;->IsHaveIco(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Mzd3Next()V
    .locals 2

    .prologue
    .line 1409
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1410
    return-void
.end method

.method public static Mzd3PP()V
    .locals 2

    .prologue
    .line 1414
    const/16 v0, 0xaa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1415
    return-void
.end method

.method public static Mzd3Pause()V
    .locals 2

    .prologue
    .line 1399
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1400
    return-void
.end method

.method public static Mzd3Play()V
    .locals 2

    .prologue
    .line 1394
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1395
    return-void
.end method

.method public static Mzd3Prev()V
    .locals 2

    .prologue
    .line 1404
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1405
    return-void
.end method

.method public static Mzd3Rdm()V
    .locals 2

    .prologue
    .line 1419
    const/16 v0, 0xbb

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1420
    return-void
.end method

.method public static Mzd3Rpt()V
    .locals 2

    .prologue
    .line 1424
    const/16 v0, 0xcc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 1425
    return-void
.end method

.method public static MzdCx4Next()V
    .locals 1

    .prologue
    .line 1520
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1521
    return-void
.end method

.method public static MzdCx4PP()V
    .locals 1

    .prologue
    .line 1528
    const/16 v0, 0xaa

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1529
    return-void
.end method

.method public static MzdCx4Pause()V
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1545
    return-void
.end method

.method public static MzdCx4Play()V
    .locals 1

    .prologue
    .line 1540
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1541
    return-void
.end method

.method public static MzdCx4Prev()V
    .locals 1

    .prologue
    .line 1524
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1525
    return-void
.end method

.method public static MzdCx4Rdm()V
    .locals 1

    .prologue
    .line 1532
    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1533
    return-void
.end method

.method public static MzdCx4Rpt()V
    .locals 1

    .prologue
    .line 1536
    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    .line 1537
    return-void
.end method

.method public static Pg408Ff()V
    .locals 1

    .prologue
    .line 1660
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    .line 1661
    return-void
.end method

.method public static Pg408Fr()V
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    .line 1666
    return-void
.end method

.method public static Pg408Next()V
    .locals 1

    .prologue
    .line 1655
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    .line 1656
    return-void
.end method

.method public static Pg408Pause()V
    .locals 1

    .prologue
    .line 1671
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    .line 1672
    return-void
.end method

.method public static Pg408Play()V
    .locals 1

    .prologue
    .line 1641
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    .line 1642
    return-void
.end method

.method public static Pg408Prev()V
    .locals 1

    .prologue
    .line 1650
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Pg408SetUsbCtrl(I)V

    .line 1651
    return-void
.end method

.method public static Pg408Stop()V
    .locals 0

    .prologue
    .line 1646
    return-void
.end method

.method public static SetCanTypeCb(Lcom/ts/can/CanTypeStrCallBack;)V
    .locals 0
    .param p0, "cb"    # Lcom/ts/can/CanTypeStrCallBack;

    .prologue
    .line 2178
    sput-object p0, Lcom/ts/can/CanIF;->mpfnType:Lcom/ts/can/CanTypeStrCallBack;

    .line 2179
    return-void
.end method

.method public static SetOtherCamMode(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 281
    sput p0, Lcom/ts/can/CanIF;->mOtherCamMode:I

    .line 282
    sget v0, Lcom/ts/can/CanIF;->mOtherCamModeOld:I

    sget v1, Lcom/ts/can/CanIF;->mOtherCamMode:I

    if-eq v0, v1, :cond_0

    .line 284
    const-string v0, "CanIF"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Other Camera Mode Change, Old = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/can/CanIF;->mOtherCamModeOld:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ts/can/CanIF;->mOtherCamMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget v0, Lcom/ts/can/CanIF;->mOtherCamMode:I

    sput v0, Lcom/ts/can/CanIF;->mOtherCamModeOld:I

    .line 287
    :cond_0
    return-void
.end method

.method public static UpdateCarInfo()V
    .locals 1

    .prologue
    .line 1860
    sget-object v0, Lcom/ts/can/CanIF;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GetCarInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;)V

    .line 1861
    return-void
.end method

.method public static UpdateDoorUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1781
    sget-object v0, Lcom/lgb/canmodule/Can;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 1782
    .local v0, "curDoor":Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;
    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GetDoorInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;)V

    .line 1783
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1785
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 1786
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    .line 1787
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 1788
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    .line 1789
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    .line 1790
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    .line 1854
    :goto_0
    return-void

    .line 1794
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1809
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 1810
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    .line 1814
    :goto_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 1829
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 1830
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    .line 1834
    :goto_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 1837
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    .line 1844
    :goto_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v1

    if-ne v4, v1, :cond_2

    .line 1847
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    goto :goto_0

    .line 1798
    :pswitch_0
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 1799
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    goto :goto_1

    .line 1804
    :pswitch_1
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 1805
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    goto :goto_1

    .line 1818
    :pswitch_2
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 1819
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    goto :goto_2

    .line 1824
    :pswitch_3
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 1825
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    goto :goto_2

    .line 1841
    :cond_1
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    goto :goto_3

    .line 1851
    :cond_2
    sget-object v1, Lcom/ts/can/CanIF;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    goto :goto_0

    .line 1794
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1814
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static byte2String([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 231
    array-length v0, p0

    .line 232
    .local v0, "Datalen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-lt v4, v5, :cond_0

    .line 241
    :goto_1
    if-nez v0, :cond_2

    .line 243
    const-string v2, ""

    .line 267
    :goto_2
    return-object v2

    .line 234
    :cond_0
    aget-byte v5, p0, v4

    if-nez v5, :cond_1

    .line 236
    move v0, v4

    .line 237
    goto :goto_1

    .line 232
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_2
    const-string v2, ""

    .line 250
    .local v2, "des":Ljava/lang/String;
    :try_start_0
    array-length v5, p0

    if-ne v0, v5, :cond_3

    .line 252
    new-instance v2, Ljava/lang/String;

    .end local v2    # "des":Ljava/lang/String;
    const-string v5, "GBK"

    invoke-direct {v2, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 253
    .restart local v2    # "des":Ljava/lang/String;
    goto :goto_2

    .line 256
    :cond_3
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 257
    .local v1, "data":[B
    new-instance v2, Ljava/lang/String;

    .end local v2    # "des":Ljava/lang/String;
    const-string v5, "GBK"

    invoke-direct {v2, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "des":Ljava/lang/String;
    goto :goto_2

    .line 260
    .end local v1    # "data":[B
    .end local v2    # "des":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const-string v2, ""

    .restart local v2    # "des":Ljava/lang/String;
    goto :goto_2
.end method

.method public static byte2UnicodeStr([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 203
    const-string v4, ""

    .line 208
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    array-length v5, p0

    div-int/lit8 v3, v5, 0x2

    .line 209
    .local v3, "len":I
    mul-int/lit8 v0, v3, 0x2

    .line 210
    .local v0, "bytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 218
    new-instance v4, Ljava/lang/String;

    .end local v4    # "str":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "UNICODE"

    invoke-direct {v4, p0, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 226
    .end local v0    # "bytes":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    .restart local v4    # "str":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 212
    .restart local v0    # "bytes":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_0
    mul-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_1

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    .line 214
    mul-int/lit8 v0, v2, 0x2

    .line 210
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "bytes":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, ""

    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method protected static int2Bool(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 1923
    if-nez p0, :cond_0

    .line 1925
    const/4 v0, 0x0

    .line 1928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
