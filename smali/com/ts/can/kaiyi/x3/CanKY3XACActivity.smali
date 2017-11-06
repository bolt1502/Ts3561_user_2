.class public Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanKY3XACActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static AC_SHOW_TIME:J = 0x0L

.field private static final ITEM_AC:I = 0x0

.field private static final ITEM_AC_TOGGLE:I = 0x4

.field private static final ITEM_FRONT_HEAT:I = 0x2

.field private static final ITEM_LOOPER:I = 0x1

.field private static final ITEM_MODE_FOOT:I = 0x7

.field private static final ITEM_MODE_FOOT_FRONT:I = 0x8

.field private static final ITEM_MODE_HEAD:I = 0x5

.field private static final ITEM_MODE_HEAD_FOOT:I = 0x6

.field private static final ITEM_REAR_HEAT:I = 0x3

.field private static final ITEM_TEMP_VALUE:I = 0x9

.field private static final ITEM_WIND_VALUE:I = 0xa


# instance fields
.field private isACJump:Z

.field private mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAc:Lcom/ts/other/ParamButton;

.field private mBtnAcToggle:Lcom/ts/other/ParamButton;

.field private mBtnFrontHeat:Lcom/ts/other/ParamButton;

.field private mBtnLooper:Lcom/ts/other/ParamButton;

.field private mBtnModeFoot:Lcom/ts/other/ParamButton;

.field private mBtnModeFootFront:Lcom/ts/other/ParamButton;

.field private mBtnModeHead:Lcom/ts/other/ParamButton;

.field private mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

.field private mBtnRearHeat:Lcom/ts/other/ParamButton;

.field private mContainer:Lcom/ts/canview/RelativeLayoutContainer;

.field private mIvWindCc:Landroid/widget/ImageView;

.field private mIvWindLc:Landroid/widget/ImageView;

.field private mIvWindLs:Landroid/widget/ImageView;

.field private mIvWindLx:Landroid/widget/ImageView;

.field private mIvWindRc:Landroid/widget/ImageView;

.field private mIvWindRs:Landroid/widget/ImageView;

.field private mIvWindRx:Landroid/widget/ImageView;

.field private mTempLayout:Landroid/widget/LinearLayout;

.field private mWindLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->AC_SHOW_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->isACJump:Z

    .line 19
    return-void
.end method

.method private getTempIndex(Landroid/view/MotionEvent;)I
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2

    :goto_0
    float-to-int v0, v3

    .line 150
    .local v0, "scrollY":I
    if-lt v0, v2, :cond_0

    move v0, v2

    .line 152
    :cond_0
    div-int/lit8 v1, v0, 0x19

    .line 154
    .local v1, "tempIndex":I
    rem-int/lit8 v2, v0, 0x19

    int-to-double v2, v2

    const-wide/high16 v4, 0x4029000000000000L    # 12.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 157
    :cond_1
    return v1

    .line 149
    .end local v0    # "scrollY":I
    .end local v1    # "tempIndex":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_0
.end method

.method private getWindIndex(Landroid/view/MotionEvent;)I
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x10f

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_2

    :goto_0
    float-to-int v0, v3

    .line 162
    .local v0, "scrollX":I
    if-lt v0, v2, :cond_0

    move v0, v2

    .line 164
    :cond_0
    div-int/lit8 v1, v0, 0x2d

    .line 166
    .local v1, "windIndex":I
    rem-int/lit8 v2, v0, 0x2d

    int-to-double v2, v2

    const-wide v4, 0x4036800000000000L    # 22.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 169
    :cond_1
    return v1

    .line 161
    .end local v0    # "scrollX":I
    .end local v1    # "windIndex":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_0
.end method

.method private setTempValue(I)V
    .locals 3
    .param p1, "tempValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 283
    if-lez p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method private setWindMode(III)V
    .locals 3
    .param p1, "fgDFBL"    # I
    .param p2, "fgParalle"    # I
    .param p3, "fgDown"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 307
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 308
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 309
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 310
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 312
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnFrontHeat:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 314
    invoke-direct {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showFrontWind(Z)V

    .line 315
    invoke-direct {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showParalleWind(Z)V

    .line 316
    invoke-direct {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showDownWind(Z)V

    .line 318
    invoke-static {p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 320
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showParalleWind(Z)V

    .line 321
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showDownWind(Z)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {p3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 324
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showFrontWind(Z)V

    .line 325
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showDownWind(Z)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-static {p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 328
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showParalleWind(Z)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-static {p3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 331
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showDownWind(Z)V

    goto :goto_0

    .line 332
    :cond_4
    invoke-static {p3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnFrontHeat:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 334
    invoke-direct {p0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showFrontWind(Z)V

    goto :goto_0
.end method

.method private setWindValue(I)V
    .locals 5
    .param p1, "windValue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 292
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 294
    if-nez p1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v1, v3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 296
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v1, v3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 297
    invoke-direct {p0, v3, v3, v3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setWindMode(III)V

    .line 300
    :cond_0
    if-lez p1, :cond_1

    .line 301
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v0, v1, 0x2d

    .line 302
    .local v0, "scrollX":I
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    neg-int v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 304
    .end local v0    # "scrollX":I
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 291
    goto :goto_0

    :cond_3
    move v2, v3

    .line 292
    goto :goto_1
.end method

.method private showDownWind(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindLx:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 351
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindRx:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 352
    return-void
.end method

.method private showFrontWind(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindLs:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 340
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindRs:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 341
    return-void
.end method

.method private showParalleWind(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindLc:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 345
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindCc:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 346
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindRc:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 347
    return-void
.end method

.method private updateACUI()V
    .locals 6

    .prologue
    .line 257
    sget-object v3, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 258
    sget-object v3, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    const/4 v4, 0x0

    iput v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 260
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v3, v4}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 262
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgLoopDisable:I

    invoke-static {v3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ky3x_wxh_up:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setBackgroundResource(I)V

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnRearHeat:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v3, v4}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 270
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    invoke-virtual {p0, v3, v4}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 272
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    .line 273
    .local v0, "fgDFBL":I
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    .line 274
    .local v2, "fgParalle":I
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    .line 275
    .local v1, "fgDown":I
    invoke-direct {p0, v0, v2, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setWindMode(III)V

    .line 277
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    invoke-direct {p0, v3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setTempValue(I)V

    .line 279
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v3}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setWindValue(I)V

    .line 280
    return-void

    .line 265
    .end local v0    # "fgDFBL":I
    .end local v1    # "fgDown":I
    .end local v2    # "fgParalle":I
    :cond_0
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ky3x_wxh_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_ky3x_nxh_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 266
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v3, v4}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->setViewSelected(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 174
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected InitUI()V
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v3, 0xa5

    const/16 v2, 0x1ae

    .line 180
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->isACJump:Z

    .line 182
    new-instance v0, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v0, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    .line 183
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_ky3x_bg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 185
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 186
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x82

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    .line 187
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xe6

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnFrontHeat:Lcom/ts/other/ParamButton;

    .line 188
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x14a

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnRearHeat:Lcom/ts/other/ParamButton;

    .line 189
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    .line 191
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x238

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    .line 192
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x29c

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    .line 193
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x301

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    .line 194
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x365

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    .line 196
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v6, "tempPoint":Landroid/widget/ImageView;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ky3x_point:I

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    .local v7, "windPoint":Landroid/widget/ImageView;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ky3x_point:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 205
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    .line 208
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x6e

    const/16 v3, 0x3c

    const/16 v4, 0x26

    const/16 v5, 0x152

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->addView(Landroid/view/View;IIII)Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0xd0

    const/16 v3, 0x1d9

    const/16 v4, 0x135

    const/16 v5, 0x26

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->addView(Landroid/view/View;IIII)Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x192

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_ls:I

    invoke-virtual {v0, v1, v10, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindLs:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2a3

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_rs:I

    invoke-virtual {v0, v1, v10, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindRs:Landroid/widget/ImageView;

    .line 216
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x119

    const/16 v2, 0xcb

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_lc:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindLc:Landroid/widget/ImageView;

    .line 217
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x214

    const/16 v2, 0xbf

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_cc:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindCc:Landroid/widget/ImageView;

    .line 218
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x32e

    const/16 v2, 0xba

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_rc:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindRc:Landroid/widget/ImageView;

    .line 219
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x117

    const/16 v2, 0x113

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_lx:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindLx:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2ba

    const/16 v2, 0x113

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_shine_rx:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mIvWindRx:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_ac_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_wxh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_nxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnFrontHeat:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_window_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_window_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnRearHeat:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_window0_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_window0_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_snow_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_snow_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_01_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_03_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ky3x_04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_04_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v8, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnLooper:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v9, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnFrontHeat:Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnRearHeat:Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHead:Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeHeadFoot:Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFoot:Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mBtnModeFootFront:Lcom/ts/other/ParamButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mTempLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mWindLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 245
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 372
    return-void
.end method

.method public UserAll()V
    .locals 6

    .prologue
    .line 357
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 358
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->updateACUI()V

    .line 362
    :cond_0
    invoke-static {}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    sget-wide v4, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->AC_SHOW_TIME:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 363
    iget-boolean v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->isACJump:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->finish()V

    .line 367
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xd

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 73
    :pswitch_1
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 77
    :pswitch_2
    const/16 v1, 0xa

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 81
    :pswitch_3
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 85
    :pswitch_4
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 89
    :pswitch_5
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 93
    :pswitch_6
    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 97
    :pswitch_7
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 101
    :pswitch_8
    const/4 v1, 0x3

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 66
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
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/ts/can/CanCommonActivity;->onResume()V

    .line 251
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 253
    invoke-direct {p0}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->updateACUI()V

    .line 254
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    .local v1, "id":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 113
    .local v0, "action":I
    invoke-direct {p0, p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->getWindIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .line 116
    .local v3, "windIndex":I
    invoke-direct {p0, p2}, Lcom/ts/can/kaiyi/x3/CanKY3XACActivity;->getTempIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 118
    .local v2, "tempIndex":I
    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 133
    :pswitch_0
    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 135
    const/16 v4, 0xc

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 137
    :cond_1
    const/16 v4, 0x9

    if-ne v1, v4, :cond_0

    .line 139
    const/4 v4, 0x7

    rsub-int/lit8 v5, v2, 0xd

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
