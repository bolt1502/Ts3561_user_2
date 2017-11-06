.class public Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCcH2sCarACActivity.java"

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

    .line 48
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    .line 50
    new-array v0, v1, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 51
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 52
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v2, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mIcons:[I

    .line 55
    new-array v0, v4, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    .line 65
    iput-boolean v3, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->isAutoFinish:Z

    .line 23
    return-void
.end method

.method private InitView()V
    .locals 9

    .prologue
    .line 80
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 81
    iget-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_bg02:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 83
    const/16 v1, 0x32

    const/16 v2, 0x75

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    .line 84
    const/4 v5, 0x0

    move-object v0, p0

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 85
    const/16 v1, 0x32

    const/16 v2, 0x13a

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    .line 86
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    const/4 v5, 0x1

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 87
    const/16 v0, 0x33

    const/16 v1, 0xe4

    const/16 v2, 0x64

    const/16 v3, 0x3d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mLeftTemp:Landroid/widget/TextView;

    .line 95
    const/16 v1, 0xbc

    const/16 v2, 0x75

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    .line 96
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    const/4 v5, 0x4

    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 97
    const/16 v1, 0xbc

    const/16 v2, 0x13a

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    .line 98
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    const/4 v5, 0x5

    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 99
    const/16 v0, 0xbf

    const/16 v1, 0xe4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    .line 101
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 105
    iget-object v7, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v8, 0x0

    const/16 v1, 0x131

    const/16 v2, 0x4e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    .line 106
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    const/4 v5, 0x6

    move-object v0, p0

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v7, v8

    .line 107
    iget-object v7, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v8, 0x1

    const/16 v1, 0x131

    const/16 v2, 0x9b

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    .line 108
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    const/4 v5, 0x7

    move-object v0, p0

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v7, v8

    .line 109
    iget-object v7, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v8, 0x2

    const/16 v1, 0x131

    const/16 v2, 0xea

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    .line 110
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    const/16 v5, 0x8

    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v7, v8

    .line 111
    iget-object v7, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    const/4 v8, 0x3

    const/16 v1, 0x131

    const/16 v2, 0x138

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_up:I

    .line 112
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_dn:I

    const/16 v5, 0x9

    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v7, v8

    .line 114
    const/16 v1, 0x289

    const/16 v2, 0x46

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    .line 115
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    const/16 v5, 0xa

    move-object v0, p0

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    .line 116
    const/16 v1, 0x289

    const/16 v2, 0xb6

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_up:I

    .line 117
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_dn:I

    const/16 v5, 0xc

    move-object v0, p0

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    .line 124
    const/16 v1, 0x289

    const/16 v2, 0x127

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    .line 125
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    const/16 v5, 0xf

    move-object v0, p0

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    .line 127
    const/16 v1, 0x1ce

    const/16 v2, 0x196

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    .line 128
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    const/16 v5, 0x10

    move-object v0, p0

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addButton(IIIII)Lcom/ts/other/ParamButton;

    .line 129
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    const/16 v1, 0xbf

    const/16 v2, 0xe4

    iget-object v3, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mIcons:[I

    aget v3, v3, v6

    invoke-direct {p0, v1, v2, v3}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->addImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private UpdateACUI()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 188
    .local v2, "mAcInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v6, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v5, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 190
    iget-object v6, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mLeftTemp:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget v6, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v6}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setWindValue(I)V

    .line 195
    iget v0, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    .line 196
    .local v0, "footWind":I
    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    .line 197
    .local v1, "headWind":I
    iget v3, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    .line 199
    .local v3, "winWind":I
    invoke-static {v0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    invoke-direct {p0, v4}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setAcMode(I)V

    .line 214
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mStatusWindow:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 215
    iget-object v6, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mStatusAc:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v6, v7}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 220
    iget-object v6, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mStatusOutLoop:Lcom/ts/other/ParamButton;

    iget v7, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-nez v7, :cond_5

    :goto_1
    invoke-virtual {v6, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 222
    return-void

    .line 201
    :cond_1
    invoke-static {v1}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 202
    invoke-direct {p0, v5}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {v0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {v0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setAcMode(I)V

    goto :goto_0

    .line 207
    :cond_4
    invoke-static {v3}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->i2b(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 211
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setAcMode(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 220
    goto :goto_1
.end method

.method private addImage(III)Lcom/ts/other/CustomImgView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    .line 143
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
    .line 148
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 149
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "#08D2D3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    return-object v0
.end method

.method private setAcMode(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mACMode:[Lcom/ts/other/ParamButton;

    aget-object v2, v1, v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setWindValue(I)V
    .locals 3
    .param p1, "wind"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 235
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mWindIcons:[Lcom/ts/other/CustomImgView;

    aget-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    if-gt v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 332
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 333
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->UpdateACUI()V

    .line 337
    :cond_0
    sget-boolean v2, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 339
    invoke-static {}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->GetTickCount()J

    move-result-wide v0

    .line 340
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->finish()V

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->isAutoFinish:Z

    .line 347
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
    .line 133
    iget-object v1, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 134
    .local v0, "button":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p3, p4, p4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 135
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 137
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

    invoke-virtual {p0, v0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mfgJump:Z

    .line 75
    invoke-direct {p0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->InitView()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 169
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 170
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 172
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->isAutoFinish:Z

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->finish()V

    .line 179
    :cond_0
    sput-boolean v2, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->mfgJump:Z

    .line 180
    iput-boolean v2, p0, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->isAutoFinish:Z

    .line 182
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 159
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 160
    invoke-direct {p0}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->UpdateACUI()V

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 163
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 254
    .local v1, "id":I
    const/4 v2, 0x1

    .line 256
    .local v2, "param":I
    if-nez v0, :cond_1

    .line 258
    const/4 v2, 0x1

    .line 269
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/ts/can/cc/h2s/CanCcH2sCarACActivity;->GetTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 326
    :cond_0
    return v5

    .line 260
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 262
    const/4 v2, 0x0

    .line 263
    goto :goto_0

    .line 272
    :pswitch_1
    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 275
    :pswitch_2
    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 284
    :pswitch_3
    const/16 v3, 0x1c

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 287
    :pswitch_4
    const/16 v3, 0x1d

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 290
    :pswitch_5
    const/16 v3, 0x18

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 293
    :pswitch_6
    const/16 v3, 0x19

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 296
    :pswitch_7
    const/16 v3, 0x1a

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 299
    :pswitch_8
    const/16 v3, 0x1b

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 302
    :pswitch_9
    const/16 v3, 0x15

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 305
    :pswitch_a
    const/16 v3, 0x13

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 308
    :pswitch_b
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 317
    :pswitch_c
    const/16 v3, 0x11

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 320
    :pswitch_d
    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CCH2sAcSet(II)V

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
