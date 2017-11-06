.class public Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGs8AcActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final AC_REAR:I = 0x9

.field private static final CLOSED:I = 0x10

.field private static final LT_TEMP_INCREASE:I = 0x0

.field private static final LT_TEMP__DECREASE:I = 0x1

.field private static final RR_TEMP_DECREASE:I = 0x7

.field private static final RR_TEMP_INCREASE:I = 0x6

.field private static final RT_TEMP_INCREASE:I = 0x2

.field private static final RT_TEMP__DECREASE:I = 0x3

.field private static final STATUS_AC:I = 0xf

.field private static final STATUS_AUTO:I = 0xd

.field private static final STATUS_DUAL:I = 0xb

.field private static final STATUS_MODE:I = 0xe

.field private static final STATUS_OUT_LOOP:I = 0xc

.field private static final STATUS_WINOW:I = 0xa

.field private static final WIND_DECREASE:I = 0x5

.field private static final WIND_INCREASE:I = 0x4

.field private static mfgJump:Z


# instance fields
.field private isAutoFinish:Z

.field private mACMode:[Lcom/ts/other/CustomImgView;

.field private mIcons:[I

.field private mLeftTemp:Landroid/widget/TextView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mRRightTemp:Landroid/widget/TextView;

.field private mRearAir:Landroid/widget/TextView;

.field private mRightTemp:Landroid/widget/TextView;

.field private mStatusAc:Lcom/ts/other/ParamButton;

.field private mStatusAcRear:Lcom/ts/other/ParamButton;

.field private mStatusAuto:Lcom/ts/other/ParamButton;

.field private mStatusDual:Lcom/ts/other/ParamButton;

.field private mStatusMode:Lcom/ts/other/ParamButton;

.field private mStatusOutLoop:Lcom/ts/other/ParamButton;

.field private mStatusWindow:Lcom/ts/other/ParamButton;

.field private mWindIcons:[Lcom/ts/other/CustomImgView;

.field private m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 54
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    .line 55
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GCAirData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    .line 58
    new-array v0, v1, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v2, v0, v1

    .line 60
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v1, v0, v4

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 61
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mIcons:[I

    .line 63
    new-array v0, v4, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    .line 75
    iput-boolean v3, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->isAutoFinish:Z

    .line 26
    return-void
.end method

.method private InitView()V
    .locals 7

    .prologue
    .line 88
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 89
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_bg_02:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 91
    const/16 v1, 0x32

    const/16 v2, 0x57

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    .line 92
    const/4 v5, 0x0

    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 93
    const/16 v1, 0x32

    const/16 v2, 0x11c

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 94
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v5, 0x1

    move-object v0, p0

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 95
    const/16 v0, 0x35

    const/16 v1, 0xc6

    const/16 v2, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mLeftTemp:Landroid/widget/TextView;

    .line 97
    const/16 v1, 0x370

    const/16 v2, 0x57

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    .line 98
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    const/4 v5, 0x2

    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 99
    const/16 v1, 0x370

    const/16 v2, 0x11c

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 100
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v5, 0x3

    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 101
    const/16 v0, 0x373

    const/16 v1, 0xc6

    const/16 v2, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRightTemp:Landroid/widget/TextView;

    .line 103
    const/16 v1, 0x16e

    const/16 v2, 0x19e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    .line 104
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    const/4 v5, 0x6

    move-object v0, p0

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 105
    const/16 v1, 0x235

    const/16 v2, 0x19e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 106
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v5, 0x7

    move-object v0, p0

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 107
    const/16 v0, 0x1d4

    const/16 v1, 0x1a9

    const/16 v2, 0x5c

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRRightTemp:Landroid/widget/TextView;

    .line 109
    const/16 v1, 0xbc

    const/16 v2, 0x57

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    .line 110
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    const/4 v5, 0x4

    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 111
    const/16 v1, 0xbc

    const/16 v2, 0x11c

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    .line 112
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    const/4 v5, 0x5

    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 113
    const/16 v0, 0xbf

    const/16 v1, 0xc6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    .line 115
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x131

    const/16 v4, 0x4e

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x131

    const/16 v4, 0x9b

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x131

    const/16 v4, 0xe8

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 126
    const/16 v1, 0x2f5

    const/16 v2, 0x198

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    .line 127
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    const/16 v5, 0xa

    move-object v0, p0

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    .line 128
    const/16 v1, 0x2f5

    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_up:I

    .line 129
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    const/16 v5, 0xc

    move-object v0, p0

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    .line 130
    const/16 v1, 0x289

    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_up:I

    .line 131
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_dn:I

    const/16 v5, 0xe

    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusMode:Lcom/ts/other/ParamButton;

    .line 132
    const/16 v1, 0x2f5

    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_3zone_up:I

    .line 133
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_3zone_dn:I

    const/16 v5, 0xb

    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusDual:Lcom/ts/other/ParamButton;

    .line 134
    const/16 v1, 0x289

    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_up:I

    .line 135
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_dn:I

    const/16 v5, 0xd

    move-object v0, p0

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    .line 136
    const/16 v1, 0x2f5

    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    .line 137
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    const/16 v5, 0xf

    move-object v0, p0

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    .line 138
    const/16 v1, 0x289

    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_rear_up:I

    .line 139
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_rear_dn:I

    const/16 v5, 0x9

    move-object v0, p0

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAcRear:Lcom/ts/other/ParamButton;

    .line 141
    const/16 v1, 0xb9

    const/16 v2, 0x196

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    .line 142
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    const/16 v5, 0x10

    move-object v0, p0

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 144
    const/16 v0, 0x8c

    const/16 v1, 0x12

    const/16 v2, 0xfa

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRearAir:Landroid/widget/TextView;

    .line 145
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    const/16 v1, 0xbf

    const/16 v2, 0xc6

    iget-object v3, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mIcons:[I

    aget v3, v3, v6

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private UpdateACUI()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 198
    .local v0, "mAcInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 199
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->Update:I

    .line 201
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mLeftTemp:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRightTemp:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRRightTemp:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->szRearTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 206
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusDual:Lcom/ts/other/ParamButton;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 208
    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 211
    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLock:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 213
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRearAir:Landroid/widget/TextView;

    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->setWindValue(I)V

    .line 215
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v3

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 216
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v2

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 217
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v5

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-static {v4}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-static {v4}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 218
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 230
    :goto_4
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAcRear:Lcom/ts/other/ParamButton;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLock:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 232
    return-void

    :cond_0
    move v1, v3

    .line 208
    goto :goto_0

    :cond_1
    move v1, v3

    .line 215
    goto :goto_1

    :cond_2
    move v1, v3

    .line 216
    goto :goto_2

    :cond_3
    move v2, v3

    .line 217
    goto :goto_3

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mRearAir:Landroid/widget/TextView;

    sget v4, Lcom/ts/MainUI/R$string;->can_gs8_rearac:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->nWindValue:I

    invoke-direct {p0, v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->setWindValue(I)V

    .line 224
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v3

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->bParallelWindFlg:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->bDownWindFlg:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 225
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v2

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->bDownWindFlg:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->bParallelWindFlg:I

    invoke-static {v1}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 226
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mACMode:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v5

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->bDownWindFlg:I

    invoke-static {v4}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->bParallelWindFlg:I

    invoke-static {v4}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->i2b(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_7
    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 227
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mStatusAuto:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->nAutoLight:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    goto :goto_4

    :cond_5
    move v1, v3

    .line 224
    goto :goto_5

    :cond_6
    move v1, v3

    .line 225
    goto :goto_6

    :cond_7
    move v2, v3

    .line 226
    goto :goto_7
.end method

.method private addImage(III)Lcom/ts/other/CustomImgView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    .line 157
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
    .line 161
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 162
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    return-object v0
.end method

.method private setWindValue(I)V
    .locals 3
    .param p1, "wind"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 243
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    aget-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    if-gt v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 322
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 323
    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Gs8GetAcSet(Lcom/lgb/canmodule/CanDataInfo$GCAirData;)V

    .line 324
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->m_RearAcInfo:Lcom/lgb/canmodule/CanDataInfo$GCAirData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GCAirData;->Update:I

    if-eqz v2, :cond_1

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->UpdateACUI()V

    .line 328
    :cond_1
    sget-boolean v2, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mfgJump:Z

    if-eqz v2, :cond_2

    .line 330
    invoke-static {}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->GetTickCount()J

    move-result-wide v0

    .line 331
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->finish()V

    .line 333
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->isAutoFinish:Z

    .line 337
    .end local v0    # "curTick":J
    :cond_2
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
    .line 148
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 149
    .local v0, "button":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p3, p4, p4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 150
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 152
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->setContentView(I)V

    .line 82
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mfgJump:Z

    .line 84
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->InitView()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 180
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 181
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 183
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 185
    iget-boolean v0, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->isAutoFinish:Z

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->finish()V

    .line 189
    :cond_0
    sput-boolean v2, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->mfgJump:Z

    .line 190
    iput-boolean v2, p0, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->isAutoFinish:Z

    .line 193
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 171
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 172
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->UpdateACUI()V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 175
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 249
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, "id":I
    const/4 v2, 0x1

    .line 252
    .local v2, "param":I
    if-nez v0, :cond_1

    .line 253
    const/4 v2, 0x1

    .line 261
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/ts/can/gac/trumpchi/CanGs8AcActivity;->GetTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 317
    :cond_0
    return v5

    .line 254
    :cond_1
    if-ne v0, v4, :cond_0

    .line 255
    const/4 v2, 0x0

    .line 256
    goto :goto_0

    .line 263
    :pswitch_1
    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 266
    :pswitch_2
    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 269
    :pswitch_3
    const/16 v3, 0xf

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 272
    :pswitch_4
    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 275
    :pswitch_5
    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 278
    :pswitch_6
    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 281
    :pswitch_7
    const/16 v3, 0x1c

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 284
    :pswitch_8
    const/16 v3, 0x1d

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 290
    :pswitch_9
    const/16 v3, 0x1b

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 293
    :pswitch_a
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 296
    :pswitch_b
    const/16 v3, 0x15

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 299
    :pswitch_c
    const/16 v3, 0x11

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 302
    :pswitch_d
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 305
    :pswitch_e
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 308
    :pswitch_f
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 311
    :pswitch_10
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->Gs8AcSet(II)V

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
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
