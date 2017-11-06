.class public Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;
.super Lcom/ts/can/CanCommonACActivity;
.source "CanM50FCarACActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanCommonACActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitACButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v1}, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->InitTempButtons(Z)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->InitWindButtons(Z)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->InitModeButtons(ZZ)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->InitClickableStatusButtons(Z)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_bg02:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 72
    return-void
.end method

.method protected InitClickableStatusButtons(Z)V
    .locals 5
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v4, 0x302

    const/16 v3, 0x289

    const/16 v2, 0x11d

    const/16 v1, 0x82

    .line 118
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 119
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    invoke-virtual {v0, v4, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    .line 120
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    invoke-virtual {v0, v3, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    .line 121
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    invoke-virtual {v0, v4, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 122
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1ce

    const/16 v2, 0x1aa

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    .line 124
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_window02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 134
    return-void
.end method

.method protected InitTempButtons(Z)V
    .locals 6
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x75

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    .line 106
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x13a

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    .line 107
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x35

    const/16 v3, 0xe4

    const/16 v4, 0x5c

    const/16 v5, 0x3d

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    const/16 v3, 0x11

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 114
    return-void
.end method

.method protected InitWindButtons(Z)V
    .locals 9
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v8, 0xe4

    const/16 v5, 0xbf

    const/16 v4, 0xbc

    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 76
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v3, 0x75

    invoke-virtual {v2, v4, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    .line 77
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v3, 0x13a

    invoke-virtual {v2, v4, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    .line 78
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal_up:I

    invoke-virtual {v2, v5, v8, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 80
    const/4 v2, 0x6

    new-array v1, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal01_dn:I

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 81
    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal02_dn:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal03_dn:I

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 82
    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal04_dn:I

    aput v3, v1, v2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal05_dn:I

    aput v2, v1, v6

    .line 83
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_6signal06_dn:I

    aput v2, v1, v7

    .line 85
    .local v1, "mWindArrays":[I
    array-length v2, v1

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 93
    if-eqz p1, :cond_1

    .line 94
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v3, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 95
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v3, v7, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 101
    :goto_1
    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    aget v4, v1, v0

    invoke-virtual {v3, v5, v8, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v3, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 98
    iget-object v2, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v3, p0, Lcom/ts/can/baic/senova/m50f/CanM50FCarACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v3, v7, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 17
    .local v1, "id":I
    const/4 v0, -0x1

    .line 19
    .local v0, "cmd":I
    packed-switch v1, :pswitch_data_0

    .line 61
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->SenovaAcSet(II)V

    .line 62
    return-void

    .line 21
    :pswitch_1
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 24
    :pswitch_2
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 27
    :pswitch_3
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 30
    :pswitch_4
    const/4 v0, 0x6

    .line 31
    goto :goto_0

    .line 33
    :pswitch_5
    const/16 v0, 0x12

    .line 34
    goto :goto_0

    .line 36
    :pswitch_6
    const/4 v0, 0x7

    .line 37
    goto :goto_0

    .line 39
    :pswitch_7
    const/16 v0, 0x8

    .line 40
    goto :goto_0

    .line 42
    :pswitch_8
    const/16 v0, 0x9

    .line 43
    goto :goto_0

    .line 45
    :pswitch_9
    const/16 v0, 0xa

    .line 46
    goto :goto_0

    .line 48
    :pswitch_a
    const/16 v0, 0xb

    .line 49
    goto :goto_0

    .line 51
    :pswitch_b
    const/16 v0, 0xc

    .line 52
    goto :goto_0

    .line 54
    :pswitch_c
    const/16 v0, 0xd

    .line 55
    goto :goto_0

    .line 57
    :pswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
