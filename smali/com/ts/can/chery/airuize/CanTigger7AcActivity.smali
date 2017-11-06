.class public Lcom/ts/can/chery/airuize/CanTigger7AcActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanTigger7AcActivity.java"

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

.field private static final STATUS_DUAL:I = 0xb

.field private static final STATUS_INNER_LOOP:I = 0xe

.field private static final STATUS_OUT_LOOP:I = 0xc

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

.field private mStatusDual:Lcom/ts/other/ParamButton;

.field private mStatusInnerLoop:Lcom/ts/other/ParamButton;

.field private mStatusOutLoop:Lcom/ts/other/ParamButton;

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

    .line 49
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    .line 51
    new-array v0, v1, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 52
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v2, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mIcons:[I

    .line 56
    new-array v0, v4, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    .line 66
    iput-boolean v3, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->isAutoFinish:Z

    .line 23
    return-void
.end method

.method private InitView()V
    .locals 14

    .prologue
    const/16 v13, 0x289

    const/16 v12, 0x11c

    const/16 v2, 0x57

    const/16 v11, 0x131

    const/16 v10, 0xc6

    .line 79
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 80
    iget-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 82
    const/16 v1, 0x32

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    .line 83
    const/4 v5, 0x0

    move-object v0, p0

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 84
    const/16 v4, 0x32

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 85
    sget v7, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v8, 0x1

    move-object v3, p0

    move v5, v12

    .line 84
    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 86
    const/16 v0, 0x35

    const/16 v1, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v10, v1, v3}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mLeftTemp:Landroid/widget/TextView;

    .line 88
    const/16 v1, 0x370

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    .line 89
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    const/4 v5, 0x2

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 90
    const/16 v4, 0x370

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 91
    sget v7, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v8, 0x3

    move-object v3, p0

    move v5, v12

    .line 90
    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 92
    const/16 v0, 0x373

    const/16 v1, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v10, v1, v3}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mRightTemp:Landroid/widget/TextView;

    .line 94
    const/16 v1, 0xbc

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    .line 95
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    const/4 v5, 0x4

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 96
    const/16 v1, 0xbc

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    .line 97
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    const/4 v5, 0x5

    move-object v0, p0

    move v2, v12

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 98
    const/16 v0, 0xbf

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-direct {p0, v0, v10, v1}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    .line 100
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v0, v0

    if-lt v9, v0, :cond_0

    .line 104
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x0

    const/16 v2, 0x4e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    .line 105
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    const/4 v5, 0x6

    move-object v0, p0

    move v1, v11

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 106
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x1

    const/16 v2, 0x9b

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    .line 107
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    const/4 v5, 0x7

    move-object v0, p0

    move v1, v11

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 108
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x2

    const/16 v2, 0xea

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    .line 109
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    const/16 v5, 0x8

    move-object v0, p0

    move v1, v11

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 110
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v7, 0x3

    const/16 v2, 0x138

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_up:I

    .line 111
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_dn:I

    const/16 v5, 0x9

    move-object v0, p0

    move v1, v11

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v7

    .line 113
    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    .line 114
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    const/16 v5, 0xa

    move-object v0, p0

    move v1, v13

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    .line 115
    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    .line 116
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_dn:I

    const/16 v5, 0xc

    move-object v0, p0

    move v1, v13

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    .line 117
    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_up:I

    .line 118
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    const/16 v5, 0xe

    move-object v0, p0

    move v1, v13

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusInnerLoop:Lcom/ts/other/ParamButton;

    .line 119
    const/16 v1, 0x2f5

    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_up:I

    .line 120
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_dn:I

    const/16 v5, 0xb

    move-object v0, p0

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusDual:Lcom/ts/other/ParamButton;

    .line 121
    const/16 v1, 0x2f5

    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_up:I

    .line 122
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_dn:I

    const/16 v5, 0xd

    move-object v0, p0

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    .line 123
    const/16 v1, 0x2f5

    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    .line 124
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    const/16 v5, 0xf

    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    .line 126
    const/16 v1, 0x1ce

    const/16 v2, 0x196

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    .line 127
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    const/16 v5, 0x10

    move-object v0, p0

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 128
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    const/16 v1, 0xbf

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mIcons:[I

    aget v2, v2, v9

    invoke-direct {p0, v1, v10, v2}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v9

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method private UpdateACUI()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 179
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 181
    .local v2, "mAcInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v6, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v5, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 183
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mLeftTemp:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mRightTemp:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget v6, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v6}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setWindValue(I)V

    .line 188
    iget v0, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    .line 189
    .local v0, "footWind":I
    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    .line 190
    .local v1, "headWind":I
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    .line 192
    .local v3, "winWind":I
    invoke-static {v0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    invoke-direct {p0, v4}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setAcMode(I)V

    .line 207
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 208
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 209
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusDual:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 210
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 212
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusInnerLoop:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 213
    iget-object v6, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-nez v7, :cond_5

    :goto_1
    invoke-virtual {v6, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 215
    return-void

    .line 194
    :cond_1
    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    invoke-direct {p0, v5}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setAcMode(I)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {v0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 197
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setAcMode(I)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {v0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setAcMode(I)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-static {v3}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->i2b(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 204
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setAcMode(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 213
    goto :goto_1
.end method

.method private addImage(III)Lcom/ts/other/CustomImgView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    .line 140
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
    .line 144
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 145
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "#08D2D3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    return-object v0
.end method

.method private setAcMode(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 237
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mACMode:[Lcom/ts/other/ParamButton;

    aget-object v2, v1, v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setWindValue(I)V
    .locals 3
    .param p1, "wind"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 226
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    aget-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    if-gt v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 315
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 316
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->UpdateACUI()V

    .line 320
    :cond_0
    sget-boolean v2, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 322
    invoke-static {}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->GetTickCount()J

    move-result-wide v0

    .line 323
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->finish()V

    .line 325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->isAutoFinish:Z

    .line 329
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
    .line 131
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 132
    .local v0, "button":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p3, p4, p4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 133
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 135
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mfgJump:Z

    .line 75
    invoke-direct {p0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->InitView()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 163
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 164
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 166
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->isAutoFinish:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->finish()V

    .line 172
    :cond_0
    sput-boolean v2, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->mfgJump:Z

    .line 173
    iput-boolean v2, p0, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->isAutoFinish:Z

    .line 176
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 154
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 155
    invoke-direct {p0}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->UpdateACUI()V

    .line 157
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 158
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 242
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    .local v1, "id":I
    const/4 v2, 0x1

    .line 245
    .local v2, "param":I
    if-nez v0, :cond_1

    .line 246
    const/4 v2, 0x1

    .line 254
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_1
    invoke-static {}, Lcom/ts/can/chery/airuize/CanTigger7AcActivity;->GetTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 310
    :cond_0
    return v5

    .line 247
    :cond_1
    if-ne v0, v4, :cond_0

    .line 248
    const/4 v2, 0x0

    .line 249
    goto :goto_0

    .line 256
    :pswitch_0
    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 259
    :pswitch_1
    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 262
    :pswitch_2
    const/16 v3, 0xf

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 265
    :pswitch_3
    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 268
    :pswitch_4
    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 271
    :pswitch_5
    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 274
    :pswitch_6
    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 277
    :pswitch_7
    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 280
    :pswitch_8
    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 283
    :pswitch_9
    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 286
    :pswitch_a
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 289
    :pswitch_b
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 292
    :pswitch_c
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 295
    :pswitch_d
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 298
    :pswitch_e
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 301
    :pswitch_f
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 304
    :pswitch_10
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->Tigger7CarAcSet(II)V

    goto :goto_1

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
