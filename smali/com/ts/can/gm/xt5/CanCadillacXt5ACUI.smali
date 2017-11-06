.class public Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;
.super Ljava/lang/Object;
.source "CanCadillacXt5ACUI.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_AC:I = 0x5

.field public static final ITEM_LOOP_MODE:I = 0x6

.field public static final ITEM_WIND_DN:I = 0x1

.field public static final ITEM_WIND_DN_FORE:I = 0x4

.field public static final ITEM_WIND_PX:I = 0x3

.field public static final ITEM_WIND_PXDN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanCadillacXt5ACUI"

.field protected static mContext:Landroid/content/Context;

.field static mInstance:Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

.field protected static mIsAC:Z

.field protected static mfgJump:Z


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mAcAuto:Lcom/ts/other/CustomTextView;

.field private mBtnAC:Lcom/ts/other/CustomTextView;

.field private mBtnAirMode:[Lcom/ts/other/ParamButton;

.field private mBtnLoopMode:Lcom/ts/other/ParamButton;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mModeAuto:Lcom/ts/other/CustomTextView;

.field private mTvAirSync:Lcom/ts/other/CustomTextView;

.field private mTvLtTemp:Lcom/ts/other/CustomTextView;

.field private mTvRtTemp:Lcom/ts/other/CustomTextView;

.field private mWindAuto:Lcom/ts/other/CustomTextView;

.field private mWindProg:Lcom/ts/canview/MyProgressBar;

.field private nDelayCheck:I

.field private wManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    .line 60
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 69
    return-void
.end method

.method public static GetInstance()Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mInstance:Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    invoke-direct {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;-><init>()V

    sput-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mInstance:Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    .line 78
    :cond_0
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mInstance:Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;

    return-object v0
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 327
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 328
    if-eqz p1, :cond_0

    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->updateACUI()V

    .line 333
    :cond_1
    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mfgJump:Z

    if-eqz v0, :cond_3

    .line 335
    iget v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    if-eqz v0, :cond_3

    .line 337
    iget v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    .line 338
    iget v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v0

    if-lez v0, :cond_3

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->onPause()V

    .line 341
    const-string v0, "CanCadillacXt5ACUI"

    const-string v1, "UserAll Exit Ac"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    return-void
.end method

.method private updateACUI()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/16 v4, -0x100

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 220
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    const-string v1, "\u4f4e"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    if-nez v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    const-string v1, "\u4f4e"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 245
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindAuto:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    .line 260
    :goto_2
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoMode:I

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mModeAuto:Lcom/ts/other/CustomTextView;

    const-string v1, "\u81ea\u52a8"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_3
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoAC:I

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mAcAuto:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 282
    :goto_4
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnLoopMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 292
    :goto_5
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    if-eqz v0, :cond_b

    .line 294
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 301
    :goto_6
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 302
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 303
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 304
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 305
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    if-eqz v0, :cond_c

    .line 307
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 322
    :cond_0
    :goto_7
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    const-string v1, "\u9ad8"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_4

    .line 237
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    const-string v1, "\u9ad8"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindAuto:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto/16 :goto_2

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto/16 :goto_2

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mModeAuto:Lcom/ts/other/CustomTextView;

    const-string v1, "\u9664\u971c"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mModeAuto:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mAcAuto:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v5}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 288
    :cond_a
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnLoopMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_5

    .line 298
    :cond_b
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v5}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 309
    :cond_c
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    if-eqz v0, :cond_d

    .line 311
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_7

    .line 313
    :cond_d
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    if-eqz v0, :cond_e

    .line 315
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_7

    .line 317
    :cond_e
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method protected AddBtn(IIIIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "up"    # I
    .param p7, "dn"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 171
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v0, p6, p7}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 174
    return-object v0
.end method

.method protected AddTemp(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 181
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 182
    const-string v1, "88.8\u2103"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 184
    return-object v0
.end method

.method protected AddText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 190
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 191
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 193
    return-object v0
.end method

.method public Destroy()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "CanCadillacXt5ACUI"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    .line 165
    :cond_0
    return-void
.end method

.method public InintWinManage(IIIILandroid/content/Context;)V
    .locals 2
    .param p1, "nSizeX"    # I
    .param p2, "nSizeY"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "MyContext"    # Landroid/content/Context;

    .prologue
    .line 85
    .line 86
    const-string v0, "window"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 85
    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wManager:Landroid/view/WindowManager;

    .line 87
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 88
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 89
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 91
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 97
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    return-void
.end method

.method public InitAc(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x75

    const/16 v9, 0x5f

    const/16 v7, 0x4f

    const/16 v6, 0x1d

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ts/can/CanFunc;->IsCadillacXt51280x480()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sput-object p1, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mContext:Landroid/content/Context;

    .line 113
    sget-object v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 114
    .local v12, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_ac_cadillax_xt5:I

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    .line 115
    const/16 v1, 0x320

    const/16 v2, 0x10d

    sget-object v5, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->InintWinManage(IIIILandroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 119
    const/16 v0, 0x6e

    const/16 v1, 0x87

    const/16 v2, 0x39

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    .line 120
    const/16 v0, 0x2a7

    const/16 v1, 0x6e

    const/16 v2, 0x87

    const/16 v4, 0x39

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    .line 122
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget-object v1, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/ts/MainUI/R$drawable;->xt5_ac_pro_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->xt5_ac_pro_dn:I

    invoke-direct {v0, v1, v2, v4}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    .line 123
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0xde

    const/16 v4, 0x78

    invoke-virtual {v0, v1, v2, v4}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 127
    const/16 v0, 0x168

    const/16 v1, 0x74

    invoke-virtual {p0, v0, v1, v7, v6}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindAuto:Lcom/ts/other/CustomTextView;

    .line 128
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindAuto:Lcom/ts/other/CustomTextView;

    const-string v1, "\u81ea\u52a8"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindAuto:Lcom/ts/other/CustomTextView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mWindAuto:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    .line 132
    const/16 v0, 0x168

    const/16 v1, 0xb2

    invoke-virtual {p0, v0, v1, v7, v6}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mModeAuto:Lcom/ts/other/CustomTextView;

    .line 133
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mModeAuto:Lcom/ts/other/CustomTextView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 135
    const/16 v0, 0x82

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1, v7, v6}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mAcAuto:Lcom/ts/other/CustomTextView;

    .line 136
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mAcAuto:Lcom/ts/other/CustomTextView;

    const-string v1, "\u81ea\u52a8"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mAcAuto:Lcom/ts/other/CustomTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 139
    const/16 v0, 0x82

    const/16 v1, 0x61

    invoke-virtual {p0, v0, v1, v7, v6}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    .line 140
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    const-string v1, "\u5236\u51b7"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAC:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p0}, Lcom/ts/other/CustomTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    const/16 v0, 0x11c

    const/16 v1, 0x18

    const/16 v2, 0xea

    const/16 v4, 0x33

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvAirSync:Lcom/ts/other/CustomTextView;

    .line 146
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvAirSync:Lcom/ts/other/CustomTextView;

    const-string v1, "\u540c\u6b65\u6e29\u5ea6"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mTvAirSync:Lcom/ts/other/CustomTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    const/4 v5, 0x1

    const/16 v6, 0x9

    const/16 v7, 0xae

    sget v10, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt01_up:I

    sget v11, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt01_dn:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddBtn(IIIIIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v3

    .line 150
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/16 v6, 0xe6

    const/16 v7, 0xae

    sget v10, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt02_up:I

    sget v11, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt02_dn:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddBtn(IIIIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x1c4

    const/16 v7, 0xae

    sget v10, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt03_up:I

    sget v11, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt03_dn:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddBtn(IIIIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnAirMode:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    const/4 v5, 0x4

    const/16 v6, 0x2a3

    const/16 v7, 0xae

    sget v10, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt04_up:I

    sget v11, Lcom/ts/MainUI/R$drawable;->xt5_ac_bt04_dn:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddBtn(IIIIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v1

    .line 153
    const/4 v1, 0x6

    const/16 v2, 0x251

    const/16 v3, 0x67

    const/16 v4, 0x4d

    const/16 v5, 0x31

    sget v6, Lcom/ts/MainUI/R$drawable;->xt5_ac_wxh_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->xt5_ac_nxh_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->AddBtn(IIIIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mBtnLoopMode:Lcom/ts/other/ParamButton;

    .line 154
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->onPause()V

    goto/16 :goto_0
.end method

.method public ShowAC()V
    .locals 1

    .prologue
    .line 368
    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mIsAC:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5ExdActivity;->IsCadillacXt5Win()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mfgJump:Z

    .line 371
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->onResume()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    const/16 v0, 0x64

    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCadillacXt51280x480()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mIsAC:Z

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->ResetData(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 364
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, "CanCadillacXt5ACUI"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    sput-boolean v2, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mIsAC:Z

    .line 211
    sput-boolean v2, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mfgJump:Z

    .line 212
    iput v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    .line 213
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->ResetData(Z)V

    .line 200
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    const-string v0, "CanCadillacXt5ACUI"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->mIsAC:Z

    .line 203
    const/16 v0, 0x64

    iput v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    .line 204
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 384
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 386
    .local v0, "Id":I
    const/16 v2, 0x64

    iput v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5ACUI;->nDelayCheck:I

    .line 388
    if-nez v1, :cond_1

    .line 390
    const-string v2, "CanCadillacXt5ACUI"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    :goto_0
    return v4

    .line 422
    :cond_1
    if-ne v4, v1, :cond_0

    .line 424
    const-string v2, "CanCadillacXt5ACUI"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
