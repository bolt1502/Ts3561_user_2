.class public Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGeelyBoyCarACActivity.java"


# static fields
.field private static AC_SHOW_TIME:J = 0x0L

.field private static final AC_TOGGLE:I = 0x12

.field private static final LT_TEMP_DECREASE:I = 0x1

.field private static final LT_TEMP_INCREASE:I = 0x0

.field private static final MODE:I = 0x13

.field private static final MODE_FOOT:I = 0x8

.field private static final MODE_FOOT_FRONT:I = 0x9

.field private static final MODE_HEAD:I = 0x6

.field private static final MODE_HEAD_FOOT:I = 0x7

.field private static final RT_TEMP_DECREASE:I = 0x3

.field private static final RT_TEMP_INCREASE:I = 0x2

.field private static final STATUS_AC:I = 0xa

.field private static final STATUS_AC_MAX:I = 0x10

.field private static final STATUS_AUTO:I = 0xc

.field private static final STATUS_DUAL:I = 0xd

.field private static final STATUS_FRONT:I = 0xe

.field private static final STATUS_LOOPER:I = 0xb

.field private static final STATUS_REAR:I = 0xf

.field private static final WIND_DECREASE:I = 0x5

.field private static final WIND_INCREASE:I = 0x4

.field private static mWindArrays:[I


# instance fields
.field private isACJump:Z

.field private mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAc:Lcom/ts/other/ParamButton;

.field private mBtnAcMax:Lcom/ts/other/ParamButton;

.field private mBtnAcToggle:Lcom/ts/other/ParamButton;

.field private mBtnAuto:Lcom/ts/other/ParamButton;

.field private mBtnDual:Lcom/ts/other/ParamButton;

.field private mBtnFront:Lcom/ts/other/ParamButton;

.field private mBtnLooper:Lcom/ts/other/ParamButton;

.field private mBtnModeFoot:Lcom/ts/other/ParamButton;

.field private mBtnModeFootFront:Lcom/ts/other/ParamButton;

.field private mBtnModeHead:Lcom/ts/other/ParamButton;

.field private mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

.field private mBtnRear:Lcom/ts/other/ParamButton;

.field private mIvIon:Landroid/widget/ImageView;

.field private mIvWinds:[Landroid/widget/ImageView;

.field private mTvLeftTemp:Landroid/widget/TextView;

.field private mTvRightTemp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 46
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 47
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 48
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    .line 45
    sput-object v0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mWindArrays:[I

    .line 68
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->AC_SHOW_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->isACJump:Z

    .line 18
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

    .line 267
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 268
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 269
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 270
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 272
    invoke-static {p1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-static {p1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 276
    :cond_2
    invoke-static {p1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {p1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private setWindValue(I)V
    .locals 6
    .param p1, "wind"    # I

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v4, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

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
    invoke-virtual {p0, v1, v3}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "windIcon":Landroid/widget/ImageView;
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateACUI()V
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 246
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 248
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mTvRightTemp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 252
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 253
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 254
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 255
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 256
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 257
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 258
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvIon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgPTC:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->showGoneView(Landroid/view/View;I)V

    .line 259
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 261
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v0}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setWindValue(I)V

    .line 262
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->setWindMode(III)V

    .line 263
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected InitUI()V
    .locals 15

    .prologue
    .line 149
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->isACJump:Z

    .line 151
    new-instance v6, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    .line 152
    .local v6, "container":Lcom/ts/canview/RelativeLayoutContainer;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_rh7_bg:I

    invoke-virtual {v6, v0}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 154
    const/16 v0, 0x32

    const/16 v1, 0x57

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v9

    .line 155
    .local v9, "leftTempIncrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0x32

    const/16 v1, 0x11c

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v8

    .line 156
    .local v8, "leftTempDecrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0x370

    const/16 v1, 0x57

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v12

    .line 157
    .local v12, "rightTempIncrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0x370

    const/16 v1, 0x11c

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v11

    .line 159
    .local v11, "rightTempDecrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0xbc

    const/16 v1, 0x57

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v14

    .line 160
    .local v14, "windIncrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0xbc

    const/16 v1, 0x11c

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v13

    .line 161
    .local v13, "windDecrease":Lcom/ts/other/ParamButton;
    const/16 v0, 0xbf

    const/16 v1, 0xc6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-virtual {v6, v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 163
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt v7, v0, :cond_0

    .line 167
    const/16 v0, 0x35

    const/16 v1, 0xc6

    const/16 v2, 0x5c

    const/16 v3, 0x3d

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    .line 168
    const/16 v0, 0x373

    const/16 v1, 0xc6

    const/16 v2, 0x5c

    const/16 v3, 0x3d

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mTvRightTemp:Landroid/widget/TextView;

    .line 170
    const/16 v0, 0x131

    const/16 v1, 0x4e

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    .line 171
    const/16 v0, 0x131

    const/16 v1, 0x9b

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    .line 172
    const/16 v0, 0x131

    const/16 v1, 0xea

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    .line 173
    const/16 v0, 0x131

    const/16 v1, 0x138

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    .line 175
    const/16 v0, 0x289

    const/16 v1, 0x28

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 176
    const/16 v0, 0x2f5

    const/16 v1, 0x28

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    .line 177
    const/16 v0, 0x289

    const/16 v1, 0x98

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 178
    const/16 v0, 0x2f5

    const/16 v1, 0x98

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    .line 179
    const/16 v0, 0x289

    const/16 v1, 0x109

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    .line 180
    const/16 v0, 0x2f5

    const/16 v1, 0x109

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 181
    const/16 v0, 0x289

    const/16 v1, 0x17a

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    .line 182
    const/16 v0, 0x2f5

    const/16 v1, 0x175

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    .line 184
    const/16 v0, 0x1d6

    const/16 v1, 0x19a

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_ion:I

    invoke-virtual {v6, v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvIon:Landroid/widget/ImageView;

    .line 186
    const/16 v0, 0x131

    const/16 v1, 0x1b3

    invoke-virtual {v6, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v10

    .line 188
    .local v10, "mode":Landroid/widget/TextView;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v6, v9, v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 189
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 190
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v0, v12, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 191
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v11, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 192
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v0, v14, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 193
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v0, v13, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_window01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window01_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_max_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_max_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x11

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mTvRightTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x11

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 210
    const-string v2, "MODE"

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/16 v5, 0x18

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 211
    const/4 v1, -0x1

    const-string v2, "#0066FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setColorUpDnList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 214
    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 215
    const/4 v1, 0x2

    invoke-virtual {v0, v12, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 216
    const/4 v1, 0x3

    invoke-virtual {v0, v11, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 217
    const/4 v1, 0x4

    invoke-virtual {v0, v14, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 218
    const/4 v1, 0x5

    invoke-virtual {v0, v13, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 231
    const/16 v1, 0x13

    invoke-virtual {v0, v10, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 233
    return-void

    .line 164
    .end local v10    # "mode":Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mIvWinds:[Landroid/widget/ImageView;

    const/16 v1, 0xbf

    const/16 v2, 0xc6

    sget-object v3, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mWindArrays:[I

    aget v3, v3, v7

    invoke-virtual {v6, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v1

    aput-object v1, v0, v7

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 317
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarQuery(II)V

    .line 318
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
    invoke-direct {p0}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->updateACUI()V

    .line 303
    :cond_0
    invoke-static {}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    sget-wide v4, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->AC_SHOW_TIME:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 304
    iget-boolean v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->isACJump:Z

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->finish()V

    .line 308
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-static {v2, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 84
    :pswitch_3
    const/4 v1, 0x2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 87
    :pswitch_4
    const/4 v1, 0x3

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 90
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v1}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x4

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 93
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 97
    :pswitch_6
    const/4 v1, 0x6

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 100
    :pswitch_7
    const/16 v1, 0x12

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 103
    :pswitch_8
    const/4 v1, 0x7

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 106
    :pswitch_9
    const/16 v1, 0x8

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 109
    :pswitch_a
    const/16 v1, 0x9

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 112
    :pswitch_b
    const/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 115
    :pswitch_c
    const/16 v1, 0xb

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 118
    :pswitch_d
    const/16 v1, 0xc

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 121
    :pswitch_e
    const/16 v1, 0xd

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 124
    :pswitch_f
    const/16 v1, 0xe

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 127
    :pswitch_10
    const/16 v1, 0xf

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 130
    :pswitch_11
    const/16 v1, 0x10

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 133
    :pswitch_12
    const/16 v1, 0x11

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 136
    :pswitch_13
    const/16 v1, 0x13

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarAcSet(II)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_12
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
    invoke-direct {p0}, Lcom/ts/can/geely/boy/CanGeelyBoyCarACActivity;->updateACUI()V

    .line 242
    return-void
.end method
