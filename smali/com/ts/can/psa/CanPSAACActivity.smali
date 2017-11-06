.class public Lcom/ts/can/psa/CanPSAACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPSAACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_AC:I = 0xa

.field public static final ITEM_ACMAX:I = 0xb

.field public static final ITEM_AUTO:I = 0xf

.field public static final ITEM_DUAL:I = 0x10

.field public static final ITEM_LTEMP_DEC:I = 0x2

.field public static final ITEM_LTEMP_INC:I = 0x1

.field public static final ITEM_MODE_DN:I = 0xe

.field public static final ITEM_MODE_PX:I = 0xd

.field public static final ITEM_MODE_UP:I = 0xc

.field public static final ITEM_RTEMP_DEC:I = 0x4

.field public static final ITEM_RTEMP_INC:I = 0x3

.field public static final ITEM_WIND_DEC:I = 0x8

.field public static final ITEM_WIND_INC:I = 0x9

.field public static final ITEM_WLEVEL_HI:I = 0x7

.field public static final ITEM_WLEVEL_LO:I = 0x5

.field public static final ITEM_WLEVEL_MID:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanPSAACActivity"


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field protected mAutoFinish:Z

.field private mBtnAC:Lcom/ts/other/ParamButton;

.field private mBtnAcMax:Lcom/ts/other/ParamButton;

.field private mBtnAuto:Lcom/ts/other/ParamButton;

.field private mBtnDual:Lcom/ts/other/ParamButton;

.field private mBtnLtTempDec:Lcom/ts/other/ParamButton;

.field private mBtnLtTempInc:Lcom/ts/other/ParamButton;

.field private mBtnModeDn:Lcom/ts/other/ParamButton;

.field private mBtnModePx:Lcom/ts/other/ParamButton;

.field private mBtnModeUp:Lcom/ts/other/ParamButton;

.field private mBtnRtTempDec:Lcom/ts/other/ParamButton;

.field private mBtnRtTempInc:Lcom/ts/other/ParamButton;

.field private mBtnWindDec:Lcom/ts/other/ParamButton;

.field private mBtnWindInc:Lcom/ts/other/ParamButton;

.field private mBtnWindLevel:[Lcom/ts/other/ParamButton;

.field private mIvForeWind:Lcom/ts/other/CustomImgView;

.field private mIvLoop:Lcom/ts/other/CustomImgView;

.field private mIvRearWind:Lcom/ts/other/CustomImgView;

.field private mIvWindAuto:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mTvLtTemp:Lcom/ts/other/CustomTextView;

.field private mTvRtTemp:Lcom/ts/other/CustomTextView;

.field private mTvWindLevel:[Lcom/ts/other/CustomTextView;

.field private mWindProg:Lcom/ts/canview/MyProgressBar;

.field protected mfgJump:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mAutoFinish:Z

    .line 25
    return-void
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 278
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 279
    if-eqz p1, :cond_0

    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_1

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/psa/CanPSAACActivity;->updateACUI()V

    .line 284
    :cond_1
    iget-boolean v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mfgJump:Z

    if-eqz v2, :cond_2

    .line 286
    invoke-static {}, Lcom/ts/can/psa/CanPSAACActivity;->GetTickCount()J

    move-result-wide v0

    .line 287
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAACActivity;->finish()V

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mAutoFinish:Z

    .line 291
    const-string v2, "CanPSAACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "curTick":J
    :cond_2
    return-void
.end method

.method private updateACUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 243
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvForeWind:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 246
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvRearWind:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 247
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvLoop:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 249
    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 250
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    if-lez v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 260
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 266
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 267
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnModeUp:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 268
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnModePx:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 269
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnModeDn:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 270
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 271
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 274
    return-void

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 249
    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v1, v3}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_1

    .line 262
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindLevel:[Lcom/ts/other/ParamButton;

    aget-object v4, v1, v0

    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindAutoLevel:I

    if-ne v1, v0, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 262
    goto :goto_3
.end method


# virtual methods
.method protected AddBtn(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 176
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 179
    return-object v0
.end method

.method protected AddTemp(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 185
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 186
    const-string v1, "88.8\u2103"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 188
    return-object v0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/CanPSAACActivity;->ResetData(Z)V

    .line 383
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 390
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/16 v4, 0x9

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 305
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 308
    :pswitch_0
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-static {v5, v3}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 316
    :pswitch_2
    invoke-static {v6, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 320
    :pswitch_3
    invoke-static {v6, v3}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 324
    :pswitch_4
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 328
    :pswitch_5
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 332
    :pswitch_6
    invoke-static {v4, v3}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 336
    :pswitch_7
    const/16 v1, 0xa

    invoke-static {v1, v3}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 340
    :pswitch_8
    const/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 344
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 348
    :pswitch_a
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 352
    :pswitch_b
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 356
    :pswitch_c
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 360
    :pswitch_d
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 364
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 368
    :pswitch_f
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSAACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto/16 :goto_0

    .line 305
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
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x1a2

    .line 90
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSAACActivity;->setContentView(I)V

    .line 93
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mfgJump:Z

    .line 96
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 98
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_408_bg:I

    invoke-virtual {v0, v10, v10, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 100
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 102
    const/16 v0, 0x12

    const/16 v2, 0x12

    const/16 v3, 0x83

    const/16 v4, 0x3e

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/ts/can/psa/CanPSAACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvLtTemp:Lcom/ts/other/CustomTextView;

    .line 103
    const/16 v2, 0x2f

    const/16 v3, 0x6b

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_upward_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_upward_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnLtTempInc:Lcom/ts/other/ParamButton;

    .line 104
    const/16 v4, 0x2f

    const/16 v5, 0x11f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_down_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_yl_down_dn:I

    move-object v2, p0

    move v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnLtTempDec:Lcom/ts/other/ParamButton;

    .line 106
    const/16 v0, 0x36e

    const/16 v2, 0x12

    const/16 v3, 0x83

    const/16 v4, 0x3e

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/ts/can/psa/CanPSAACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvRtTemp:Lcom/ts/other/CustomTextView;

    .line 107
    const/16 v4, 0x38b

    const/16 v5, 0x6b

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_upward_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_yl_upward_dn:I

    move-object v2, p0

    move v3, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnRtTempInc:Lcom/ts/other/ParamButton;

    .line 108
    const/4 v3, 0x4

    const/16 v4, 0x38b

    const/16 v5, 0x11f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_yl_down_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_yl_down_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnRtTempDec:Lcom/ts/other/ParamButton;

    .line 110
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x129

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvForeWind:Lcom/ts/other/CustomImgView;

    .line 111
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvForeWind:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_408_wind_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_psa_408_wind_dn:I

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e3

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvRearWind:Lcom/ts/other/CustomImgView;

    .line 114
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvRearWind:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_408_heat_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_psa_408_heat_dn:I

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x299

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvLoop:Lcom/ts/other/CustomImgView;

    .line 117
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvLoop:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_psa_408_wxh_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_psa_408_nxh_dn:I

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 119
    new-array v0, v12, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindLevel:[Lcom/ts/other/ParamButton;

    .line 120
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v3, 0x5

    const/16 v4, 0x113

    const/16 v5, 0x4f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_408_fs01_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_408_fs01_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v10

    .line 121
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v3, 0x6

    const/16 v4, 0x1cd

    const/16 v5, 0x4f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_408_fs02_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_408_fs02_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindLevel:[Lcom/ts/other/ParamButton;

    const/4 v3, 0x7

    const/16 v4, 0x287

    const/16 v5, 0x4f

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_408_fs03_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_408_fs03_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v11

    .line 124
    new-array v0, v12, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    .line 125
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v10

    sget v2, Lcom/ts/MainUI/R$string;->can_ac_low:I

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    sget v2, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v11

    sget v2, Lcom/ts/MainUI/R$string;->can_ac_high:I

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 135
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yl_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_rect_dn:I

    invoke-direct {v0, p0, v2, v3}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    .line 136
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v10, v2}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSAACActivity;->mWindProg:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0x105

    const/16 v3, 0x124

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 140
    const/16 v1, 0x8

    const/16 v2, 0xc4

    const/16 v3, 0x10f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_jian_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_jian_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindDec:Lcom/ts/other/ParamButton;

    .line 141
    const/16 v1, 0x9

    const/16 v2, 0x2f3

    const/16 v3, 0x10f

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yl_jia_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_yl_jia_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnWindInc:Lcom/ts/other/ParamButton;

    .line 142
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1da

    const/16 v2, 0x128

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yl_wind_auto:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mIvWindAuto:Lcom/ts/other/CustomImgView;

    .line 146
    const/16 v1, 0xa

    const/16 v2, 0x26

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_ac_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_ac_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    .line 147
    const/16 v1, 0xb

    const/16 v2, 0xb5

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_acmax_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_acmax_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    .line 148
    const/16 v1, 0xc

    const/16 v2, 0x143

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_show03_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_show03_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnModeUp:Lcom/ts/other/ParamButton;

    .line 149
    const/16 v1, 0xd

    const/16 v2, 0x1d2

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_show02_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_show02_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnModePx:Lcom/ts/other/ParamButton;

    .line 150
    const/16 v1, 0xe

    const/16 v2, 0x261

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_show01_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_show01_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnModeDn:Lcom/ts/other/ParamButton;

    .line 151
    const/16 v1, 0xf

    const/16 v2, 0x2ef

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_auto_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_auto_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 152
    const/16 v1, 0x10

    const/16 v2, 0x37e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_408_dual_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_408_dual_dn:I

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    .line 154
    const-string v0, "CanPSAACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jump = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mfgJump:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mfgJump:Z

    if-nez v0, :cond_0

    .line 157
    const/16 v0, 0x21

    invoke-static {v0, v10}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 159
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    mul-int/lit16 v2, v8, 0xba

    add-int/lit16 v2, v2, 0x113

    const/16 v3, 0xbc

    const/16 v4, 0x69

    const/16 v5, 0x28

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/ts/can/psa/CanPSAACActivity;->AddTemp(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 128
    iget-object v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mTvWindLevel:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v8

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 219
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 221
    const-string v0, "CanPSAACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----onPause----- mAutoFinish = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ts/can/psa/CanPSAACActivity;->mAutoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 226
    iget-boolean v0, p0, Lcom/ts/can/psa/CanPSAACActivity;->mAutoFinish:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAACActivity;->finish()V

    .line 229
    const-string v0, "CanPSAACActivity"

    const-string v1, "-----onPause finish-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iput-boolean v3, p0, Lcom/ts/can/psa/CanPSAACActivity;->mfgJump:Z

    .line 232
    iput-boolean v3, p0, Lcom/ts/can/psa/CanPSAACActivity;->mAutoFinish:Z

    .line 236
    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPostResume()V

    .line 168
    const-string v0, "CanPSAACActivity"

    const-string v1, "-----onPostResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    const-string v0, "CanPSAACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v0, "CanPSAACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSAACActivity;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-boolean v0, Lcom/ts/can/CanCarACActivity;->mfgAcIconClick:Z

    if-eqz v0, :cond_0

    .line 202
    sput-boolean v3, Lcom/ts/can/CanCarACActivity;->mfgAcIconClick:Z

    .line 203
    iput-boolean v3, p0, Lcom/ts/can/psa/CanPSAACActivity;->mfgJump:Z

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 208
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 209
    invoke-direct {p0, v3}, Lcom/ts/can/psa/CanPSAACActivity;->ResetData(Z)V

    .line 211
    sput-boolean v3, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 212
    return-void
.end method
