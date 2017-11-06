.class public Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanXbsygACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_AC:I = 0x2

.field public static final ITEM_AUTO:I = 0x4

.field public static final ITEM_FORE_WIND:I = 0x5

.field public static final ITEM_LOOP:I = 0x3

.field public static final ITEM_LTEMP_DEC:I = 0x8

.field public static final ITEM_LTEMP_INC:I = 0x7

.field public static final ITEM_LTSEAT_HOT:I = 0xf

.field public static final ITEM_MAX_AC:I = 0x1

.field public static final ITEM_OFF:I = 0x11

.field public static final ITEM_REAR_WIND:I = 0x6

.field public static final ITEM_RTEMP_DEC:I = 0xe

.field public static final ITEM_RTEMP_INC:I = 0xd

.field public static final ITEM_RTSEAT_HOT:I = 0x10

.field public static final ITEM_SYNC:I = 0x14

.field public static final ITEM_WD_DN:I = 0xb

.field public static final ITEM_WD_PX:I = 0x9

.field public static final ITEM_WD_PX_DN:I = 0xa

.field public static final ITEM_WD_UP_DN:I = 0xc

.field public static final ITEM_WIND_DEC:I = 0x12

.field public static final ITEM_WIND_INC:I = 0x13

.field public static final TAG:Ljava/lang/String; = "CanXbsygACActivity"

.field protected static mIsAC:Z

.field protected static mUpdateOnce:Z

.field protected static mfgJump:Z


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAc:Lcom/ts/other/ParamButton;

.field private mBtnAuto:Lcom/ts/other/ParamButton;

.field private mBtnForeWind:Lcom/ts/other/ParamButton;

.field private mBtnLoop:Lcom/ts/other/ParamButton;

.field private mBtnLtHot:Lcom/ts/other/ParamButton;

.field private mBtnLtTempDec:Lcom/ts/other/ParamButton;

.field private mBtnLtTempInc:Lcom/ts/other/ParamButton;

.field private mBtnMaxAc:Lcom/ts/other/ParamButton;

.field private mBtnOff:Lcom/ts/other/ParamButton;

.field private mBtnRearWind:Lcom/ts/other/ParamButton;

.field private mBtnRtHot:Lcom/ts/other/ParamButton;

.field private mBtnRtTempDec:Lcom/ts/other/ParamButton;

.field private mBtnRtTempInc:Lcom/ts/other/ParamButton;

.field private mBtnSync:Lcom/ts/other/ParamButton;

.field private mBtnWdDn:Lcom/ts/other/ParamButton;

.field private mBtnWdPx:Lcom/ts/other/ParamButton;

.field private mBtnWdPxDn:Lcom/ts/other/ParamButton;

.field private mBtnWdUpDn:Lcom/ts/other/ParamButton;

.field private mBtnWindDec:Lcom/ts/other/ParamButton;

.field private mBtnWindInc:Lcom/ts/other/ParamButton;

.field private mIvWindAuto:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mTvLtTemp:Lcom/ts/other/CustomTextView;

.field private mTvRtTemp:Lcom/ts/other/CustomTextView;

.field private mTvWindVal:Lcom/ts/other/CustomTextView;

.field private mWindProg:Lcom/ts/canview/MyProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mUpdateOnce:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 309
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 310
    if-eqz p1, :cond_0

    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->updateACUI()V

    .line 315
    :cond_1
    sget-boolean v2, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mfgJump:Z

    if-eqz v2, :cond_2

    .line 317
    invoke-static {}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->GetTickCount()J

    move-result-wide v0

    .line 318
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->finish()V

    .line 322
    const-string v2, "CanXbsygACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "curTick":J
    :cond_2
    return-void
.end method

.method public static ShowAC()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 365
    sget-boolean v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mIsAC:Z

    if-nez v0, :cond_0

    .line 367
    sput-boolean v1, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mfgJump:Z

    .line 368
    const-class v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 371
    :cond_0
    sput-boolean v1, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mUpdateOnce:Z

    .line 372
    return-void
.end method

.method private updateACUI()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 231
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnMaxAc:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 235
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 236
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 237
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_nxh_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_nxh_dn:I

    invoke-virtual {v1, v4, v5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnForeWind:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 247
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRearWind:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 249
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    mul-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    mul-int/lit8 v4, v4, 0x4

    add-int v0, v1, v4

    .line 250
    .local v0, "windDirect":I
    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdPx:Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 251
    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdPxDn:Lcom/ts/other/ParamButton;

    const/4 v1, 0x6

    if-ne v1, v0, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 252
    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdDn:Lcom/ts/other/ParamButton;

    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 253
    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdUpDn:Lcom/ts/other/ParamButton;

    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 255
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 256
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 258
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    packed-switch v1, :pswitch_data_0

    .line 269
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_ac_high:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 273
    :goto_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    packed-switch v1, :pswitch_data_1

    .line 284
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_ac_high:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 289
    :goto_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    rsub-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 290
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnSync:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 292
    const/16 v1, 0xf

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    if-ne v1, v4, :cond_5

    .line 294
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v1, v3}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 295
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvWindVal:Lcom/ts/other/CustomTextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 304
    :goto_7
    return-void

    .line 243
    .end local v0    # "windDirect":I
    :cond_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_wxh_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_wxh_dn:I

    invoke-virtual {v1, v4, v5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto/16 :goto_0

    .restart local v0    # "windDirect":I
    :cond_1
    move v1, v3

    .line 250
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 251
    goto :goto_2

    :cond_3
    move v1, v3

    .line 252
    goto :goto_3

    :cond_4
    move v1, v3

    .line 253
    goto :goto_4

    .line 261
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    goto :goto_5

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_ac_low:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    goto :goto_5

    .line 276
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    goto :goto_6

    .line 280
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_ac_low:I

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    goto :goto_6

    .line 300
    :cond_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 301
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvWindVal:Lcom/ts/other/CustomTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_7

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected ACDown(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 565
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthACCtrl(II)V

    .line 566
    return-void
.end method

.method protected ACRel(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthACCtrl(II)V

    .line 571
    return-void
.end method

.method protected AddBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 187
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 190
    return-object v0
.end method

.method protected AddTemp(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 196
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 198
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 199
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ResetData(Z)V

    .line 354
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 361
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 345
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x19f

    const/16 v12, 0xe2

    const/16 v11, 0x90

    const/16 v3, 0x19

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->setContentView(I)V

    .line 106
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 108
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 109
    .local v10, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v0, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_bg:I

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2c

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_tmp:I

    invoke-virtual {v0, v1, v12, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 112
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x379

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_tmp:I

    invoke-virtual {v0, v1, v12, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 115
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mfgJump:Z

    .line 117
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 119
    const/4 v1, 0x1

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_max_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_max_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnMaxAc:Lcom/ts/other/ParamButton;

    .line 120
    const/4 v5, 0x2

    const/16 v6, 0xae

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_ac_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_ac_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 121
    const/4 v5, 0x3

    const/16 v6, 0x158

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_nxh_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_nxh_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    .line 122
    const/4 v5, 0x4

    const/16 v6, 0x201

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_auto_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_auto_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 123
    const/4 v5, 0x5

    const/16 v6, 0x2aa

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_window_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_window_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnForeWind:Lcom/ts/other/ParamButton;

    .line 124
    const/4 v5, 0x6

    const/16 v6, 0x354

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_rear_up:I

    sget v9, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_rear_dn:I

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRearWind:Lcom/ts/other/ParamButton;

    .line 126
    const/16 v4, 0x8

    const/16 v5, 0x2d

    const/16 v6, 0x152

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_leng_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_leng_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtTempDec:Lcom/ts/other/ParamButton;

    .line 127
    const/4 v4, 0x7

    const/16 v5, 0x2d

    const/16 v6, 0x7c

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_re_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_re_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtTempInc:Lcom/ts/other/ParamButton;

    .line 128
    const/16 v0, 0x2c

    const/16 v1, 0x5d

    const/16 v3, 0x33

    invoke-virtual {p0, v0, v12, v1, v3}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    .line 130
    const/16 v4, 0xe

    const/16 v5, 0x37a

    const/16 v6, 0x152

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_leng_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_leng_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtTempDec:Lcom/ts/other/ParamButton;

    .line 131
    const/16 v4, 0xd

    const/16 v5, 0x37a

    const/16 v6, 0x7c

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_re_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_re_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtTempInc:Lcom/ts/other/ParamButton;

    .line 132
    const/16 v0, 0x379

    const/16 v1, 0x5f

    const/16 v3, 0x33

    invoke-virtual {p0, v0, v12, v1, v3}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    .line 134
    const/16 v4, 0x9

    const/16 v5, 0xf1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_01_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_01_dn:I

    move-object v3, p0

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdPx:Lcom/ts/other/ParamButton;

    .line 135
    const/16 v4, 0xa

    const/16 v5, 0x184

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_02_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_02_dn:I

    move-object v3, p0

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdPxDn:Lcom/ts/other/ParamButton;

    .line 136
    const/16 v4, 0xb

    const/16 v5, 0x218

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_03_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_03_dn:I

    move-object v3, p0

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdDn:Lcom/ts/other/ParamButton;

    .line 137
    const/16 v4, 0xc

    const/16 v5, 0x2ab

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_04_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_04_dn:I

    move-object v3, p0

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWdUpDn:Lcom/ts/other/ParamButton;

    .line 138
    const/16 v4, 0xf

    const/16 v5, 0xf1

    const/16 v6, 0x126

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_lchair_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_lchair_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    .line 139
    const/16 v4, 0x10

    const/16 v5, 0x218

    const/16 v6, 0x126

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_rchair_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_rchair_dn:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    .line 140
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    const/16 v1, 0xa2

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setGravity(I)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 146
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 147
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setGravity(I)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 150
    const/16 v1, 0x11

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_off_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_off_dn:I

    move-object v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    .line 151
    const/16 v4, 0x12

    const/16 v5, 0x86

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_xfans_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_xfans_dn:I

    move-object v3, p0

    move v6, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWindDec:Lcom/ts/other/ParamButton;

    .line 152
    const/16 v4, 0x13

    const/16 v5, 0x2fb

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_dfans_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_dfans_dn:I

    move-object v3, p0

    move v6, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnWindInc:Lcom/ts/other/ParamButton;

    .line 154
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_pro_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_pro_dn:I

    invoke-direct {v0, p0, v1, v3}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    .line 155
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v3, 0x11f

    const/16 v4, 0x1c8

    invoke-virtual {v0, v1, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1c9

    const/16 v3, 0x1ca

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_wind_auto:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    .line 160
    const/16 v4, 0x14

    const/16 v5, 0x37d

    sget v7, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_sync_up:I

    sget v8, Lcom/ts/MainUI/R$drawable;->can_jeep_ac_sync_dn:I

    move-object v3, p0

    move v6, v13

    invoke-virtual/range {v3 .. v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mBtnSync:Lcom/ts/other/ParamButton;

    .line 162
    const/16 v0, 0x2cd

    const/16 v1, 0x1c3

    const/16 v3, 0x20

    const/16 v4, 0x28

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mTvWindVal:Lcom/ts/other/CustomTextView;

    .line 172
    const-string v0, "CanXbsygACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "jump = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mfgJump:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mfgJump:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x7

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 181
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 219
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 220
    const-string v0, "CanXbsygACActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sput-boolean v2, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mIsAC:Z

    .line 223
    sput-boolean v2, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mfgJump:Z

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 207
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ResetData(Z)V

    .line 209
    const-string v0, "CanXbsygACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->mIsAC:Z

    .line 212
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 379
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 380
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 381
    .local v0, "Id":I
    if-nez v1, :cond_1

    .line 383
    const-string v2, "CanXbsygACActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    packed-switch v0, :pswitch_data_0

    .line 560
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 388
    :pswitch_0
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 396
    :pswitch_2
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 400
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 404
    :pswitch_4
    invoke-virtual {p0, v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 408
    :pswitch_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 412
    :pswitch_6
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 416
    :pswitch_7
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 420
    :pswitch_8
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 424
    :pswitch_9
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 428
    :pswitch_a
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 432
    :pswitch_b
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 436
    :pswitch_c
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 440
    :pswitch_d
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 444
    :pswitch_e
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 448
    :pswitch_f
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 452
    :pswitch_10
    invoke-virtual {p0, v4}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 456
    :pswitch_11
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 460
    :pswitch_12
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 464
    :pswitch_13
    invoke-virtual {p0, v6}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACDown(I)V

    goto :goto_0

    .line 471
    :cond_1
    if-ne v4, v1, :cond_0

    .line 473
    const-string v2, "CanXbsygACActivity"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 477
    :pswitch_14
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto :goto_0

    .line 481
    :pswitch_15
    invoke-virtual {p0, v5}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 485
    :pswitch_16
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 489
    :pswitch_17
    invoke-virtual {p0, v7}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 493
    :pswitch_18
    invoke-virtual {p0, v8}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 497
    :pswitch_19
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 501
    :pswitch_1a
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 505
    :pswitch_1b
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 509
    :pswitch_1c
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 513
    :pswitch_1d
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 517
    :pswitch_1e
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 521
    :pswitch_1f
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 525
    :pswitch_20
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 529
    :pswitch_21
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 533
    :pswitch_22
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 537
    :pswitch_23
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 541
    :pswitch_24
    invoke-virtual {p0, v4}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 545
    :pswitch_25
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 549
    :pswitch_26
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 553
    :pswitch_27
    invoke-virtual {p0, v6}, Lcom/ts/can/chrysler/xbs/CanXbsygACActivity;->ACRel(I)V

    goto/16 :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 474
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method
