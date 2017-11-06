.class public Lcom/ts/can/gm/comm/CanGMACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGMACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_AC:I = 0x3

.field public static final ITEM_AUTO:I = 0x4

.field public static final ITEM_LOOP:I = 0x5

.field public static final ITEM_MODE_DN:I = 0xa

.field public static final ITEM_MODE_FORE:I = 0xc

.field public static final ITEM_MODE_PX:I = 0x8

.field public static final ITEM_MODE_PX_DN:I = 0x9

.field public static final ITEM_MODE_UP_DN:I = 0xb

.field public static final ITEM_TEMP_DEC:I = 0x2

.field public static final ITEM_TEMP_INC:I = 0x1

.field public static final ITEM_WIND_DEC:I = 0x6

.field public static final ITEM_WIND_INC:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanGMACActivity"


# instance fields
.field protected mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field protected mAutoFinish:Z

.field private mBtnAC:Lcom/ts/other/ParamButton;

.field private mBtnAuto:Lcom/ts/other/ParamButton;

.field private mBtnLoop:Lcom/ts/other/ParamButton;

.field private mBtnModeDn:Lcom/ts/other/ParamButton;

.field private mBtnModeFore:Lcom/ts/other/ParamButton;

.field private mBtnModePx:Lcom/ts/other/ParamButton;

.field private mBtnModePxDn:Lcom/ts/other/ParamButton;

.field private mBtnModeUpDn:Lcom/ts/other/ParamButton;

.field private mBtnTempDec:Lcom/ts/other/ParamButton;

.field private mBtnTempInc:Lcom/ts/other/ParamButton;

.field private mBtnWindDec:Lcom/ts/other/ParamButton;

.field private mBtnWindInc:Lcom/ts/other/ParamButton;

.field private mIvModeAuto:Lcom/ts/other/CustomImgView;

.field private mIvWindAuto:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mTvTemp:Lcom/ts/other/CustomTextView;

.field private mTvWindAuto:Lcom/ts/other/CustomTextView;

.field private mWindProg:Lcom/ts/canview/MyProgressBar;

.field protected mfgJump:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mAutoFinish:Z

    .line 26
    return-void
.end method

.method private ACSet(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 356
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    .line 357
    return-void
.end method

.method private AddBtn(III)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 261
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 263
    return-object v0
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 269
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 270
    if-eqz p1, :cond_0

    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMACActivity;->updateACUI()V

    .line 275
    :cond_1
    iget-boolean v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mfgJump:Z

    if-eqz v2, :cond_2

    .line 277
    invoke-static {}, Lcom/ts/can/gm/comm/CanGMACActivity;->GetTickCount()J

    move-result-wide v0

    .line 278
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMACActivity;->finish()V

    .line 281
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mAutoFinish:Z

    .line 282
    const-string v2, "CanGMACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0    # "curTick":J
    :cond_2
    return-void
.end method

.method private updateACUI()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    sget-object v4, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 178
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mTvTemp:Lcom/ts/other/CustomTextView;

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const-string v4, "CanGMACActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fgAutoAC ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoAC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v4, "CanGMACActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nWindAutoLevel = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindAutoLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v4, "CanGMACActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fgAutoWind = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoAC:I

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_snow03_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_snow03_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 200
    :goto_0
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoAC:I

    if-eqz v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    invoke-virtual {v4, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 212
    :goto_1
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    if-eqz v4, :cond_4

    .line 214
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-eqz v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_car02_auto_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_car02_auto_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 236
    :goto_2
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    if-nez v4, :cond_6

    move v0, v2

    .line 237
    .local v0, "fgModeAutoDisable":Z
    :goto_3
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    mul-int/lit8 v5, v5, 0x4

    add-int v1, v4, v5

    .line 238
    .local v1, "mode":I
    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModePx:Lcom/ts/other/ParamButton;

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    if-eqz v0, :cond_7

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 239
    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModePxDn:Lcom/ts/other/ParamButton;

    const/4 v4, 0x6

    if-ne v1, v4, :cond_8

    if-eqz v0, :cond_8

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 240
    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeDn:Lcom/ts/other/ParamButton;

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9

    if-eqz v0, :cond_9

    move v4, v2

    :goto_6
    invoke-virtual {v5, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 241
    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeUpDn:Lcom/ts/other/ParamButton;

    const/4 v4, 0x5

    if-ne v1, v4, :cond_a

    if-eqz v0, :cond_a

    move v4, v2

    :goto_7
    invoke-virtual {v5, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 242
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeFore:Lcom/ts/other/ParamButton;

    if-ne v1, v2, :cond_b

    if-eqz v0, :cond_b

    :goto_8
    invoke-virtual {v4, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 244
    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    invoke-virtual {v2, v4}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 245
    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    if-eqz v2, :cond_c

    .line 247
    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v2, v3}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 254
    :goto_9
    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mIvModeAuto:Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 255
    return-void

    .line 190
    .end local v0    # "fgModeAutoDisable":Z
    .end local v1    # "mode":I
    :cond_0
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    if-eqz v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_snow02_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_snow02_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto/16 :goto_0

    .line 196
    :cond_1
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_snow01_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_snow01_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto/16 :goto_0

    .line 209
    :cond_2
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    invoke-virtual {v4, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 220
    :cond_3
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_car01_auto_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_car01_auto_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto/16 :goto_2

    .line 225
    :cond_4
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    if-eqz v4, :cond_5

    .line 227
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_car02_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_car02_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto/16 :goto_2

    .line 231
    :cond_5
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_car01_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_car01_dn:I

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    goto/16 :goto_2

    :cond_6
    move v0, v3

    .line 236
    goto/16 :goto_3

    .restart local v0    # "fgModeAutoDisable":Z
    .restart local v1    # "mode":I
    :cond_7
    move v4, v3

    .line 238
    goto/16 :goto_4

    :cond_8
    move v4, v3

    .line 239
    goto/16 :goto_5

    :cond_9
    move v4, v3

    .line 240
    goto/16 :goto_6

    :cond_a
    move v4, v3

    .line 241
    goto/16 :goto_7

    :cond_b
    move v2, v3

    .line 242
    goto :goto_8

    .line 251
    :cond_c
    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_9
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/gm/comm/CanGMACActivity;->ResetData(Z)V

    .line 346
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 352
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 296
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    return-void

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x44

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/16 v6, 0x29

    const/16 v5, 0x1ba

    .line 74
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_gm_ac:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMACActivity;->setContentView(I)V

    .line 78
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 80
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mfgJump:Z

    .line 82
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_rect_dn:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    .line 83
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v7}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0x153

    const/16 v3, 0x110

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x28

    const/16 v2, 0x17

    const/16 v3, 0x83

    const/16 v4, 0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mTvTemp:Lcom/ts/other/CustomTextView;

    .line 89
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mTvTemp:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mTvTemp:Lcom/ts/other/CustomTextView;

    const-string v1, "35.0\u2103"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mTvTemp:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 93
    const/16 v0, 0x6b

    invoke-direct {p0, v9, v0, v7}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnTempInc:Lcom/ts/other/ParamButton;

    .line 94
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnTempInc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_upward_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_upward_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 96
    const/16 v0, 0x11f

    const/4 v1, 0x2

    invoke-direct {p0, v9, v0, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnTempDec:Lcom/ts/other/ParamButton;

    .line 97
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnTempDec:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_down_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_down_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 99
    const/16 v0, 0xe5

    const/4 v1, 0x3

    invoke-direct {p0, v0, v6, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_snow01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_snow01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 102
    const/16 v0, 0x1f3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v6, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 103
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_auto_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_auto_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 105
    const/16 v0, 0x2fd

    const/4 v1, 0x5

    invoke-direct {p0, v0, v6, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    .line 106
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_car01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_car01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 108
    const/16 v0, 0x11c

    const/16 v1, 0xfb

    invoke-direct {p0, v0, v1, v8}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnWindDec:Lcom/ts/other/ParamButton;

    .line 109
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnWindDec:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_jian_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_jian_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 111
    const/16 v0, 0x337

    const/16 v1, 0xfb

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnWindInc:Lcom/ts/other/ParamButton;

    .line 112
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnWindInc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_jia_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_jia_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 115
    const/16 v0, 0x72

    const/16 v1, 0x8

    invoke-direct {p0, v0, v5, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModePx:Lcom/ts/other/ParamButton;

    .line 116
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModePx:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_show01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_show01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 118
    const/16 v0, 0x11d

    const/16 v1, 0x9

    invoke-direct {p0, v0, v5, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModePxDn:Lcom/ts/other/ParamButton;

    .line 119
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModePxDn:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_show02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_show02_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 121
    const/16 v0, 0x1c8

    const/16 v1, 0xa

    invoke-direct {p0, v0, v5, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeDn:Lcom/ts/other/ParamButton;

    .line 122
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeDn:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_show03_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_show03_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 124
    const/16 v0, 0x272

    const/16 v1, 0xb

    invoke-direct {p0, v0, v5, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeUpDn:Lcom/ts/other/ParamButton;

    .line 125
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeUpDn:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_show04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_show04_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 127
    const/16 v0, 0x31c

    const/16 v1, 0xc

    invoke-direct {p0, v0, v5, v1}, Lcom/ts/can/gm/comm/CanGMACActivity;->AddBtn(III)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeFore:Lcom/ts/other/ParamButton;

    .line 128
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mBtnModeFore:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yl_wind_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_wind_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1d9

    const/16 v2, 0x19e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_show_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mIvModeAuto:Lcom/ts/other/CustomImgView;

    .line 131
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x22b

    const/16 v2, 0x13e

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_wind_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    .line 137
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 155
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 157
    const-string v0, "CanGMACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----onPause----- mAutoFinish = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mAutoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mAutoFinish:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMACActivity;->finish()V

    .line 165
    const-string v0, "CanGMACActivity"

    const-string v1, "-----onPause finish-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iput-boolean v3, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mfgJump:Z

    .line 168
    iput-boolean v3, p0, Lcom/ts/can/gm/comm/CanGMACActivity;->mAutoFinish:Z

    .line 171
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 144
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 145
    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ResetData(Z)V

    .line 146
    const-string v0, "CanGMACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sput-boolean v2, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 148
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 364
    .local v1, "action":I
    if-nez v1, :cond_1

    .line 366
    const-string v2, "CanGMACActivity"

    const-string v3, "****ACTION_DOWN*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 368
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 427
    .end local v0    # "Id":I
    :cond_0
    :goto_0
    return v4

    .line 371
    .restart local v0    # "Id":I
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 375
    :pswitch_1
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 379
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 383
    :pswitch_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 387
    :pswitch_4
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 391
    :pswitch_5
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 395
    :pswitch_6
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 399
    :pswitch_7
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 403
    :pswitch_8
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 407
    :pswitch_9
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 411
    :pswitch_a
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 415
    :pswitch_b
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 422
    .end local v0    # "Id":I
    :cond_1
    if-ne v5, v1, :cond_0

    .line 424
    const-string v2, "CanGMACActivity"

    const-string v3, "****ACTION_UP*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0, v4}, Lcom/ts/can/gm/comm/CanGMACActivity;->ACSet(I)V

    goto :goto_0

    .line 368
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
    .end packed-switch
.end method
