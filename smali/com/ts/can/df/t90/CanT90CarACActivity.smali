.class public Lcom/ts/can/df/t90/CanT90CarACActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanT90CarACActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static AC_SHOW_TIME:J = 0x0L

.field private static final AC_TOGGLE:I = 0x12

.field private static final LT_TEMP_DECREASE:I = 0x1

.field private static final LT_TEMP_INCREASE:I = 0x0

.field private static final MODE:I = 0x13

.field private static final RT_TEMP_DECREASE:I = 0x3

.field private static final RT_TEMP_INCREASE:I = 0x2

.field private static final STATUS_AC:I = 0xa

.field private static final STATUS_LOOPER_INNER:I = 0xb

.field private static final STATUS_LOOPER_OUTTER:I = 0xc

.field private static final WIND_DECREASE:I = 0x5

.field private static final WIND_INCREASE:I = 0x4

.field private static mWindArrays:[I


# instance fields
.field private cmd:I

.field private isACJump:Z

.field private mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAc:Lcom/ts/other/ParamButton;

.field private mBtnAcMax:Lcom/ts/other/ParamButton;

.field private mBtnAcToggle:Lcom/ts/other/ParamButton;

.field private mBtnDual:Lcom/ts/other/ParamButton;

.field private mBtnFront:Lcom/ts/other/ParamButton;

.field private mBtnLooperInner:Lcom/ts/other/ParamButton;

.field private mBtnLooperOutter:Lcom/ts/other/ParamButton;

.field private mBtnMode:Lcom/ts/other/ParamButton;

.field private mBtnModeFoot:Lcom/ts/other/ParamButton;

.field private mBtnModeFootFront:Lcom/ts/other/ParamButton;

.field private mBtnModeHead:Lcom/ts/other/ParamButton;

.field private mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

.field private mBtnRear:Lcom/ts/other/ParamButton;

.field private mIvWinds:[Landroid/widget/ImageView;

.field private mTvLeftTemp:Landroid/widget/TextView;

.field private mTvRightTemp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 41
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 42
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 43
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    .line 40
    sput-object v0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mWindArrays:[I

    .line 69
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/ts/can/df/t90/CanT90CarACActivity;->AC_SHOW_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->isACJump:Z

    .line 20
    return-void
.end method

.method private setWindMode(III)V
    .locals 3
    .param p1, "fgParallel"    # I
    .param p2, "fgDown"    # I
    .param p3, "fgForeWind"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 265
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 266
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 267
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 268
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 270
    invoke-static {p1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-static {p1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-static {p1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-static {p1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 278
    :cond_4
    invoke-static {p1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private setWindValue(I)V
    .locals 6
    .param p1, "wind"    # I

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v4, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_1

    .line 294
    return-void

    .line 285
    .end local v0    # "i":I
    :cond_0
    aget-object v1, v4, v2

    .line 286
    .local v1, "windIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v1, v3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "windIcon":Landroid/widget/ImageView;
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/df/t90/CanT90CarACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateACUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 246
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v0, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 248
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mTvRightTemp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 252
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 253
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 255
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 256
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 257
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 259
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v0}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setWindValue(I)V

    .line 260
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    iget-object v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/df/t90/CanT90CarACActivity;->setWindMode(III)V

    .line 261
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected InitUI()V
    .locals 15

    .prologue
    const/16 v4, 0x75

    const/4 v2, 0x0

    const/16 v14, 0x131

    const/16 v5, 0xe4

    const/16 v3, 0x11

    .line 157
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->isACJump:Z

    .line 159
    new-instance v6, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    .line 160
    .local v6, "container":Lcom/ts/canview/RelativeLayoutContainer;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_rh7_bg_01:I

    invoke-virtual {v6, v0}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 162
    const/16 v0, 0x32

    invoke-virtual {v6, v0, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v9

    .line 163
    .local v9, "leftTempIncrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0x32

    const/16 v1, 0x13a

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v8

    .line 164
    .local v8, "leftTempDecrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0x370

    invoke-virtual {v6, v0, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v11

    .line 165
    .local v11, "rightTempIncrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0x370

    const/16 v1, 0x13a

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v10

    .line 167
    .local v10, "rightTempDecrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0xbc

    invoke-virtual {v6, v0, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v13

    .line 168
    .local v13, "windIncrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0xbc

    const/16 v1, 0x13a

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v12

    .line 169
    .local v12, "windDecrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0xbf

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-virtual {v6, v0, v5, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 171
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt v7, v0, :cond_0

    .line 175
    const/16 v0, 0x35

    const/16 v1, 0x5f

    const/16 v4, 0x3d

    invoke-virtual {v6, v0, v5, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    .line 176
    const/16 v0, 0x373

    const/16 v1, 0x5f

    const/16 v4, 0x3d

    invoke-virtual {v6, v0, v5, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mTvRightTemp:Landroid/widget/TextView;

    .line 178
    const/16 v0, 0x6c

    invoke-virtual {v6, v14, v0}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    .line 179
    const/16 v0, 0xb9

    invoke-virtual {v6, v14, v0}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    .line 180
    const/16 v0, 0x108

    invoke-virtual {v6, v14, v0}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    .line 181
    const/16 v0, 0x156

    invoke-virtual {v6, v14, v0}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    .line 183
    const/16 v0, 0xc8

    const/16 v1, 0x14

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    .line 184
    const/16 v0, 0x140

    const/16 v1, 0x14

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    .line 185
    const/16 v0, 0x1c2

    invoke-virtual {v6, v0, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    .line 186
    const/16 v0, 0x230

    invoke-virtual {v6, v0, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 188
    const/16 v0, 0x289

    const/16 v1, 0x6e

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 189
    const/16 v0, 0x2f5

    const/16 v1, 0x6e

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    .line 190
    const/16 v0, 0x289

    const/16 v1, 0xde

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    .line 191
    const/16 v0, 0x2f5

    const/16 v1, 0xde

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    .line 192
    const/16 v0, 0x289

    const/16 v1, 0x156

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    .line 194
    sget v0, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v6, v9, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 195
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v8, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 196
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v0, v11, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 197
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v10, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 198
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v0, v13, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 199
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    invoke-virtual {v0, v12, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_dual_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_dual_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_wind_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_wind_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_heat_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_heat_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mTvRightTemp:Landroid/widget/TextView;

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v9, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 222
    const/4 v1, 0x2

    invoke-virtual {v0, v11, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 223
    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 224
    const/4 v1, 0x4

    invoke-virtual {v0, v13, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 225
    const/4 v1, 0x5

    invoke-virtual {v0, v12, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 233
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    const/16 v1, 0xbf

    sget-object v4, Lcom/ts/can/df/t90/CanT90CarACActivity;->mWindArrays:[I

    aget v4, v4, v7

    invoke-virtual {v6, v1, v5, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v1

    aput-object v1, v0, v7

    .line 171
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 313
    return-void
.end method

.method public UserAll()V
    .locals 6

    .prologue
    .line 298
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 299
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/ts/can/df/t90/CanT90CarACActivity;->updateACUI()V

    .line 303
    :cond_0
    invoke-static {}, Lcom/ts/can/df/t90/CanT90CarACActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    sget-wide v4, Lcom/ts/can/df/t90/CanT90CarACActivity;->AC_SHOW_TIME:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 304
    iget-boolean v0, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->isACJump:Z

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/ts/can/df/t90/CanT90CarACActivity;->finish()V

    .line 308
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0xf

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    if-ge v1, v3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    if-le v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    if-ge v1, v3, :cond_0

    .line 89
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v1}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    if-le v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v6, v1}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_0

    .line 98
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_0

    .line 103
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    if-le v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/ts/can/CanCommonActivity;->onResume()V

    .line 239
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 241
    invoke-direct {p0}, Lcom/ts/can/df/t90/CanT90CarACActivity;->updateACUI()V

    .line 242
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 115
    .local v1, "id":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 117
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 119
    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 139
    iget v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    .line 147
    :cond_0
    :goto_1
    return v3

    .line 122
    :pswitch_1
    iput v4, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    goto :goto_0

    .line 125
    :pswitch_2
    iput v3, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    goto :goto_0

    .line 128
    :pswitch_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    goto :goto_0

    .line 131
    :pswitch_4
    const/4 v2, 0x5

    iput v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    goto :goto_0

    .line 134
    :pswitch_5
    const/16 v2, 0x11

    iput v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    goto :goto_0

    .line 141
    :cond_1
    if-ne v0, v3, :cond_0

    .line 143
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 144
    iget v2, p0, Lcom/ts/can/df/t90/CanT90CarACActivity;->cmd:I

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->T90CarAcSet(II)V

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
