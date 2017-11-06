.class public Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanLexusIs250CarACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final CLOSED:I = 0x10

.field private static final LT_TEMP_INCREASE:I = 0x0

.field private static final LT_TEMP__DECREASE:I = 0x1

.field private static final MODE_BOTH:I = 0x7

.field private static final MODE_FOOT:I = 0x8

.field private static final MODE_FOOT_WIN:I = 0x9

.field private static final MODE_HEAD:I = 0x6

.field private static final RT_TEMP_INCREASE:I = 0x2

.field private static final RT_TEMP__DECREASE:I = 0x3

.field private static final STATUS_AC:I = 0xf

.field private static final STATUS_AUTO:I = 0xd

.field private static final STATUS_AUTO_MODE:I = 0x11

.field private static final STATUS_DUAL:I = 0xb

.field private static final STATUS_LOOP:I = 0xc

.field private static final STATUS_MODE:I = 0x12

.field private static final STATUS_REAR_WIN:I = 0xe

.field private static final STATUS_WINOW:I = 0xa

.field private static final WIND_DECREASE:I = 0x5

.field private static final WIND_INCREASE:I = 0x4

.field private static mfgJump:Z


# instance fields
.field private isAutoFinish:Z

.field private mACMode:[Lcom/ts/other/ParamButton;

.field private mIcons:[I

.field private mLeftTemp:Landroid/widget/TextView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mRightTemp:Landroid/widget/TextView;

.field private mStatusAc:Lcom/ts/other/ParamButton;

.field private mStatusAuto:Lcom/ts/other/ParamButton;

.field private mStatusAutoMode:Lcom/ts/other/ParamButton;

.field private mStatusDual:Lcom/ts/other/ParamButton;

.field private mStatusMode:Lcom/ts/other/ParamButton;

.field private mStatusOutLoop:Lcom/ts/other/ParamButton;

.field private mStatusRearWin:Lcom/ts/other/ParamButton;

.field private mStatusWindow:Lcom/ts/other/ParamButton;

.field private mWindIcons:[Lcom/ts/other/CustomImgView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 50
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    .line 52
    new-array v0, v1, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v2, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mIcons:[I

    .line 57
    new-array v0, v4, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    .line 69
    iput-boolean v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->isAutoFinish:Z

    .line 23
    return-void
.end method

.method private InitView()V
    .locals 14

    .prologue
    const/16 v2, 0x57

    const/16 v13, 0x2f5

    const/16 v12, 0x289

    const/16 v11, 0x131

    const/16 v10, 0xc6

    .line 82
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 83
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 85
    const/16 v1, 0x32

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    .line 86
    const/4 v5, 0x0

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 87
    const/16 v4, 0x32

    const/16 v5, 0x11c

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 88
    sget v7, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v8, 0x1

    move-object v3, p0

    .line 87
    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 89
    const/16 v0, 0x35

    const/16 v1, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v10, v1, v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mLeftTemp:Landroid/widget/TextView;

    .line 91
    const/16 v1, 0x370

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    .line 92
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    const/4 v5, 0x2

    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 93
    const/16 v4, 0x370

    const/16 v5, 0x11c

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 94
    sget v7, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v8, 0x3

    move-object v3, p0

    .line 93
    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 95
    const/16 v0, 0x373

    const/16 v1, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v10, v1, v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mRightTemp:Landroid/widget/TextView;

    .line 97
    const/16 v1, 0xbc

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    .line 98
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    const/4 v5, 0x4

    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 99
    const/16 v1, 0xbc

    const/16 v2, 0x11c

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    .line 100
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    const/4 v5, 0x5

    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 101
    const/16 v0, 0xbf

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-direct {p0, v0, v10, v1}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    .line 103
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v0, v0

    if-lt v9, v0, :cond_0

    .line 107
    iget-object v6, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x0

    const/16 v2, 0x4e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    .line 108
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    const/4 v5, 0x6

    move-object v0, p0

    move v1, v11

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 109
    iget-object v6, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x1

    const/16 v2, 0x9b

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    .line 110
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    const/4 v5, 0x7

    move-object v0, p0

    move v1, v11

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 111
    iget-object v6, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x2

    const/16 v2, 0xea

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    .line 112
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    const/16 v5, 0x8

    move-object v0, p0

    move v1, v11

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 113
    iget-object v6, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x3

    const/16 v2, 0x138

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_up:I

    .line 114
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_dn:I

    const/16 v5, 0x9

    move-object v0, p0

    move v1, v11

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 116
    const/16 v2, 0x197

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_up:I

    .line 117
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_dn:I

    const/16 v5, 0x12

    move-object v0, p0

    move v1, v12

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusMode:Lcom/ts/other/ParamButton;

    .line 118
    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    .line 119
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_dn:I

    const/16 v5, 0xc

    move-object v0, p0

    move v1, v12

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    .line 120
    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    .line 121
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    const/16 v5, 0xa

    move-object v0, p0

    move v1, v12

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    .line 122
    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window02_up:I

    .line 123
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_window02_dn:I

    const/16 v5, 0xe

    move-object v0, p0

    move v1, v12

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusRearWin:Lcom/ts/other/ParamButton;

    .line 127
    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    .line 128
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    const/16 v5, 0xf

    move-object v0, p0

    move v1, v13

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    .line 129
    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_up:I

    .line 130
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_dn:I

    const/16 v5, 0xb

    move-object v0, p0

    move v1, v13

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusDual:Lcom/ts/other/ParamButton;

    .line 131
    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_up:I

    .line 132
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_dn:I

    const/16 v5, 0xd

    move-object v0, p0

    move v1, v13

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    .line 133
    const/16 v2, 0x197

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_05_up:I

    .line 134
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_05_dn:I

    const/16 v5, 0x11

    move-object v0, p0

    move v1, v13

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusAutoMode:Lcom/ts/other/ParamButton;

    .line 137
    const/16 v1, 0x1ce

    const/16 v2, 0x196

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    .line 138
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    const/16 v5, 0x10

    move-object v0, p0

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 144
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    const/16 v1, 0xbf

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mIcons:[I

    aget v2, v2, v9

    invoke-direct {p0, v1, v10, v2}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v9

    .line 103
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method private UpdateACUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 203
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 205
    .local v2, "mAcInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v4, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v6, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 207
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mLeftTemp:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mRightTemp:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setWindValue(I)V

    .line 212
    iget v0, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    .line 213
    .local v0, "footWind":I
    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    .line 214
    .local v1, "headWind":I
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    .line 216
    .local v3, "winWind":I
    invoke-static {v0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setAcMode(I)V

    .line 231
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 232
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 233
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusDual:Lcom/ts/other/ParamButton;

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 234
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 236
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusRearWin:Lcom/ts/other/ParamButton;

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 239
    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    if-eqz v4, :cond_5

    .line 241
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_autoloop_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_autoloop_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 252
    :goto_1
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusAutoMode:Lcom/ts/other/ParamButton;

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoMode:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 254
    return-void

    .line 218
    :cond_1
    invoke-static {v1}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    invoke-direct {p0, v6}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {v0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {v0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 224
    :cond_4
    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->i2b(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 243
    :cond_5
    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-eqz v4, :cond_6

    .line 245
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto :goto_1

    .line 249
    :cond_6
    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto :goto_1
.end method

.method private addImage(III)Lcom/ts/other/CustomImgView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    .line 164
    .local v0, "image":Lcom/ts/other/CustomImgView;
    return-object v0
.end method

.method private addText(IIII)Landroid/widget/TextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 169
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "#08D2D3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    return-object v0
.end method

.method private setAcMode(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 276
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    aget-object v2, v1, v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setWindValue(I)V
    .locals 3
    .param p1, "wind"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 265
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    aget-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    if-gt v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 348
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 349
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->UpdateACUI()V

    .line 353
    :cond_0
    sget-boolean v2, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 355
    invoke-static {}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->GetTickCount()J

    move-result-wide v0

    .line 356
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->finish()V

    .line 358
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->isAutoFinish:Z

    .line 362
    .end local v0    # "curTick":J
    :cond_1
    return-void
.end method

.method public addButton(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "normal"    # I
    .param p4, "selected"    # I
    .param p5, "id"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 148
    .local v0, "button":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p3, p4, p4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 149
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 151
    return-object v0
.end method

.method public addButton1(IIIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "normal"    # I
    .param p4, "pressed"    # I
    .param p5, "selected"    # I
    .param p6, "id"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 156
    .local v0, "button":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p3, p4, p5}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 157
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 159
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mfgJump:Z

    .line 78
    invoke-direct {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->InitView()V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 187
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 188
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 190
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 192
    iget-boolean v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->isAutoFinish:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->finish()V

    .line 196
    :cond_0
    sput-boolean v2, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->mfgJump:Z

    .line 197
    iput-boolean v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->isAutoFinish:Z

    .line 200
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 178
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 179
    invoke-direct {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->UpdateACUI()V

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 182
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 281
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 283
    .local v1, "id":I
    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return v4

    .line 292
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/ts/can/lexus/is250/CanLexusIs250CarACActivity;->GetTickCount()J

    move-result-wide v2

    sput-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-static {v5, v3}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 298
    :pswitch_2
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 301
    :pswitch_3
    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 304
    :pswitch_4
    invoke-static {v6, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 307
    :pswitch_5
    invoke-static {v3, v3}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 310
    :pswitch_6
    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 313
    :pswitch_7
    const/4 v2, 0x4

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 316
    :pswitch_8
    const/4 v2, 0x5

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 319
    :pswitch_9
    const/4 v2, 0x6

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 322
    :pswitch_a
    const/4 v2, 0x7

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 325
    :pswitch_b
    const/16 v2, 0x8

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 328
    :pswitch_c
    const/16 v2, 0x9

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 331
    :pswitch_d
    const/16 v2, 0xa

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 334
    :pswitch_e
    const/16 v2, 0xb

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 337
    :pswitch_f
    const/16 v2, 0xc

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->LexusIs250AirKey(II)V

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method
