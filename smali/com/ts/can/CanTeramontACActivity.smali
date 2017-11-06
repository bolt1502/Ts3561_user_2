.class public Lcom/ts/can/CanTeramontACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanTeramontACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BTN_AC:I = 0xe

.field private static final BTN_AUTO:I = 0xf

.field private static final BTN_DECREASE_WIND:I = 0xc

.field private static final BTN_DOWN_WIND:I = 0x12

.field private static final BTN_INCREASE_WIND:I = 0xd

.field private static final BTN_MAX:I = 0x10

.field private static final BTN_PALLAX_WIND:I = 0x11

.field private static final BTN_TEMP_DECREASE_1:I = 0x14

.field private static final BTN_TEMP_DECREASE_2:I = 0x16

.field private static final BTN_TEMP_DECREASE_3:I = 0x18

.field private static final BTN_TEMP_INCREASE_1:I = 0x13

.field private static final BTN_TEMP_INCREASE_2:I = 0x15

.field private static final BTN_TEMP_INCREASE_3:I = 0x17

.field private static final ITEM_CLEAR_AIR:I = 0x4

.field private static final ITEM_FRONT_AIR:I = 0x8

.field private static final ITEM_LT_HOT:I = 0x1

.field private static final ITEM_OFF:I = 0x5

.field private static final ITEM_REAR:I = 0x7

.field private static final ITEM_REAR_AIR:I = 0x9

.field private static final ITEM_RT_HOT:I = 0x2

.field private static final ITEM_SETTINGS:I = 0xb

.field private static final ITEM_SW_HOT:I = 0x3

.field private static final ITEM_SYNC:I = 0x6

.field private static final ITEM_WIND:I = 0xa

.field protected static mfgJump:Z


# instance fields
.field private acStatus:Lcom/ts/other/CustomImgView;

.field private arrayViews:[Landroid/widget/TextView;

.field private autoStatus:Lcom/ts/other/CustomImgView;

.field private downWind:Lcom/ts/other/CustomImgView;

.field private mAQSArray:[Ljava/lang/String;

.field private mAc:Lcom/ts/other/CustomImgView;

.field private mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

.field private mAuto:Lcom/ts/other/CustomImgView;

.field protected mAutoFinish:Z

.field private mAutoWind:[Ljava/lang/String;

.field private mBtnCleanAir:Lcom/ts/other/ParamButton;

.field private mBtnFrontAir:Lcom/ts/other/ParamButton;

.field private mBtnLtHot:Lcom/ts/other/ParamButton;

.field private mBtnOff:Lcom/ts/other/ParamButton;

.field private mBtnRear:Lcom/ts/other/ParamButton;

.field private mBtnRearAir:Lcom/ts/other/ParamButton;

.field private mBtnRtHot:Lcom/ts/other/ParamButton;

.field private mBtnSettings:Lcom/ts/other/ParamButton;

.field private mBtnSwHot:Lcom/ts/other/ParamButton;

.field private mBtnSync:Lcom/ts/other/ParamButton;

.field private mBtnWind:Lcom/ts/other/ParamButton;

.field private mDual:Lcom/ts/other/CustomImgView;

.field private mLtFire:Lcom/ts/other/CustomImgView;

.field private mLtHot:[Lcom/ts/other/CustomImgView;

.field private mLtTemp:Landroid/widget/TextView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMaxFront:Lcom/ts/other/CustomImgView;

.field private mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

.field private mRearLight:Lcom/ts/other/CustomImgView;

.field private mRearTemp:Landroid/widget/TextView;

.field private mRtFire:Lcom/ts/other/CustomImgView;

.field private mRtHot:[Lcom/ts/other/CustomImgView;

.field private mRtTemp:Landroid/widget/TextView;

.field private mWindLtDn:Lcom/ts/other/CustomImgView;

.field private mWindLtPxLt:Lcom/ts/other/CustomImgView;

.field private mWindLtPxRt:Lcom/ts/other/CustomImgView;

.field private mWindLtUp:Lcom/ts/other/CustomImgView;

.field private mWindProgress:Lcom/ts/canview/MyProgressBar;

.field private mWindRtDn:Lcom/ts/other/CustomImgView;

.field private mWindRtPxLt:Lcom/ts/other/CustomImgView;

.field private mWindRtPxRt:Lcom/ts/other/CustomImgView;

.field private mWindRtUp:Lcom/ts/other/CustomImgView;

.field private mWindVal:Landroid/widget/TextView;

.field private maxStatus:Lcom/ts/other/CustomImgView;

.field private pallaxWind:Lcom/ts/other/CustomImgView;

.field private windProgress:Lcom/ts/canview/MyProgressBar;

.field private windVal:Landroid/widget/TextView;

.field private window:Landroid/widget/PopupWindow;

.field private windowId:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 62
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    .line 63
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    .line 102
    iput-boolean v2, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoFinish:Z

    .line 104
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfACData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    .line 105
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    .line 107
    new-array v0, v1, [Ljava/lang/String;

    .line 108
    const-string v1, "\u81ea\u52a8\u6a21\u5f0f\u98ce\u91cf\uff1a\u8f7b"

    aput-object v1, v0, v2

    .line 109
    const-string v1, "\u81ea\u52a8\u6a21\u5f0f\u98ce\u91cf\uff1a\u4e2d"

    aput-object v1, v0, v3

    .line 110
    const-string v1, "\u81ea\u52a8\u6a21\u5f0f\u98ce\u91cf\uff1a\u5f3a"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoWind:[Ljava/lang/String;

    .line 113
    new-array v0, v4, [Ljava/lang/String;

    .line 114
    const-string v1, "\u975e\u81ea\u52a8\u7a7a\u6c14\u5faa\u73af"

    aput-object v1, v0, v2

    .line 115
    const-string v1, "\u81ea\u52a8\u7a7a\u6c14\u5faa\u73af"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mAQSArray:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->TeramontGetRearAir(Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;)V

    .line 376
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanTeramontACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanTeramontACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->Update:I

    .line 380
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->bPowerFlg:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 382
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget v0, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->windProgress:Lcom/ts/canview/MyProgressBar;

    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nWindValue:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 385
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->windVal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nWindValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->autoStatus:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nAutoLight:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 387
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->pallaxWind:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->bParallelWindFlg:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 388
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->downWind:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->bDownWindFlg:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 393
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/CanTeramontACActivity;)I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    return v0
.end method

.method static synthetic access$1(Lcom/ts/can/CanTeramontACActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private addACViews(Landroid/widget/RelativeLayout;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RelativeLayout;

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x0

    .line 706
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    invoke-direct {v2, p1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    .line 708
    .local v2, "manager":Lcom/ts/other/RelativeLayoutManager;
    const/4 v3, 0x0

    .line 710
    .local v3, "y":I
    iget v4, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 711
    new-instance v4, Lcom/ts/canview/MyProgressBar;

    .line 712
    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_progress_bar_up:I

    .line 713
    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_progress_bar_dn:I

    invoke-direct {v4, p0, v5, v6}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    .line 711
    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windProgress:Lcom/ts/canview/MyProgressBar;

    .line 714
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windProgress:Lcom/ts/canview/MyProgressBar;

    const/16 v5, 0x50

    invoke-virtual {v2, v4, v5, v8}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 715
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windProgress:Lcom/ts/canview/MyProgressBar;

    const/4 v5, 0x7

    invoke-virtual {v4, v7, v5}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 716
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windProgress:Lcom/ts/canview/MyProgressBar;

    invoke-virtual {v4, v7}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 718
    const/16 v4, 0x1fe

    const/16 v5, 0x1b

    const/16 v6, 0x3c

    invoke-virtual {v2, v4, v5, v6, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windVal:Landroid/widget/TextView;

    .line 719
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windVal:Landroid/widget/TextView;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 720
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windVal:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 721
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windVal:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->windVal:Landroid/widget/TextView;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 724
    invoke-virtual {v2, v7, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 725
    .local v0, "decreaseWind":Lcom/ts/other/ParamButton;
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 726
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 727
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    const/16 v4, 0x208

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    .line 730
    .local v1, "increaseWind":Lcom/ts/other/ParamButton;
    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 731
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 732
    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    const/16 v3, 0x50

    .line 751
    .end local v0    # "decreaseWind":Lcom/ts/other/ParamButton;
    .end local v1    # "increaseWind":Lcom/ts/other/ParamButton;
    :cond_0
    :goto_0
    const/16 v4, 0x90

    invoke-virtual {v2, v4, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->autoStatus:Lcom/ts/other/CustomImgView;

    .line 752
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->autoStatus:Lcom/ts/other/CustomImgView;

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_auto_up:I

    .line 753
    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_auto01_dn:I

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_auto01_dn:I

    .line 752
    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 754
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->autoStatus:Lcom/ts/other/CustomImgView;

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 755
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->autoStatus:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    const/16 v4, 0x160

    add-int/lit8 v5, v3, -0x5

    invoke-virtual {v2, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->pallaxWind:Lcom/ts/other/CustomImgView;

    .line 758
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->pallaxWind:Lcom/ts/other/CustomImgView;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 759
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->pallaxWind:Lcom/ts/other/CustomImgView;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 760
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->pallaxWind:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    const/16 v4, 0x1c8

    add-int/lit8 v5, v3, -0x5

    invoke-virtual {v2, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->downWind:Lcom/ts/other/CustomImgView;

    .line 763
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->downWind:Lcom/ts/other/CustomImgView;

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 764
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->downWind:Lcom/ts/other/CustomImgView;

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 765
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->downWind:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    return-void

    .line 736
    :cond_1
    iget v4, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 737
    const/16 v3, 0x19

    .line 738
    invoke-virtual {v2, v8, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->acStatus:Lcom/ts/other/CustomImgView;

    .line 739
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->acStatus:Lcom/ts/other/CustomImgView;

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_ac_up:I

    .line 740
    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_ac_dn:I

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_ac_dn:I

    .line 739
    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 741
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->acStatus:Lcom/ts/other/CustomImgView;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 742
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->acStatus:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    const/16 v4, 0x102

    invoke-virtual {v2, v4, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v4

    iput-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->maxStatus:Lcom/ts/other/CustomImgView;

    .line 745
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->maxStatus:Lcom/ts/other/CustomImgView;

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_max_up:I

    .line 746
    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_max_dn:I

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_max_dn:I

    .line 745
    invoke-virtual {v4, v5, v6, v7}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 747
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->maxStatus:Lcom/ts/other/CustomImgView;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 748
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->maxStatus:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private addArrayView(Landroid/widget/RelativeLayout;[Ljava/lang/String;)V
    .locals 8
    .param p1, "contentView"    # Landroid/widget/RelativeLayout;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0x190

    const/4 v6, 0x0

    .line 771
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    invoke-direct {v2, p1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    .line 773
    .local v2, "manager":Lcom/ts/other/RelativeLayoutManager;
    array-length v3, p2

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    .line 774
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    new-array v1, v3, [Landroid/widget/ImageView;

    .line 776
    .local v1, "lineViews":[Landroid/widget/ImageView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 802
    return-void

    .line 777
    :cond_0
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x46

    add-int/lit8 v4, v4, 0x0

    const/16 v5, 0x46

    invoke-virtual {v2, v6, v4, v7, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v0

    .line 778
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 779
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 780
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 781
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 783
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    new-instance v4, Lcom/ts/can/CanTeramontACActivity$1;

    invoke-direct {v4, p0}, Lcom/ts/can/CanTeramontACActivity$1;-><init>(Lcom/ts/can/CanTeramontACActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 797
    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x46

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v3, v7, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v1, v0

    .line 798
    aget-object v3, v1, v0

    const-string v4, "#ccc1c1c1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 776
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getContentView(II)Landroid/view/View;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 690
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 691
    .local v0, "contentView":Landroid/widget/RelativeLayout;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_popup_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 692
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget v1, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 695
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/CanTeramontACActivity;->addACViews(Landroid/widget/RelativeLayout;)V

    .line 702
    :cond_1
    :goto_0
    return-object v0

    .line 696
    :cond_2
    iget v1, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 697
    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoWind:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanTeramontACActivity;->addArrayView(Landroid/widget/RelativeLayout;[Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_3
    iget v1, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 699
    iget-object v1, p0, Lcom/ts/can/CanTeramontACActivity;->mAQSArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanTeramontACActivity;->addArrayView(Landroid/widget/RelativeLayout;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showWindow(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    .line 674
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    .line 675
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 676
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 677
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-direct {p0, p2, p3}, Lcom/ts/can/CanTeramontACActivity;->getContentView(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 679
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 680
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 681
    aget v3, v0, v6

    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 682
    .local v1, "x":I
    aget v3, v0, v7

    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x14

    .line 683
    .local v2, "y":I
    iget-object v3, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p1, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 685
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontACActivity;->updateACUI()V

    .line 686
    invoke-direct {p0, v6}, Lcom/ts/can/CanTeramontACActivity;->ResetData(Z)V

    .line 687
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 397
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 398
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontACActivity;->updateACUI()V

    .line 402
    :cond_0
    invoke-direct {p0, v6}, Lcom/ts/can/CanTeramontACActivity;->ResetData(Z)V

    .line 404
    sget-boolean v2, Lcom/ts/can/CanTeramontACActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 405
    invoke-static {}, Lcom/ts/can/CanTeramontACActivity;->GetTickCount()J

    move-result-wide v0

    .line 406
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontACActivity;->finish()V

    .line 408
    const-string v2, "CanBaseActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iput-boolean v6, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoFinish:Z

    .line 413
    .end local v0    # "curTick":J
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 528
    sget-object v3, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 530
    .local v3, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    invoke-static {}, Lcom/ts/can/CanTeramontACActivity;->GetTickCount()J

    move-result-wide v8

    sput-wide v8, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 533
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 659
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    and-int/lit8 v2, v4, 0x3

    .line 537
    .local v2, "ltHot":I
    add-int/lit8 v2, v2, 0x1

    .line 538
    if-le v2, v10, :cond_0

    .line 539
    const/4 v2, 0x0

    .line 541
    :cond_0
    const/16 v4, 0xad

    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 545
    .end local v2    # "ltHot":I
    :pswitch_1
    iget v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    and-int/lit8 v1, v4, 0x3

    .line 546
    .local v1, "RtHot":I
    add-int/lit8 v1, v1, 0x1

    .line 547
    if-le v1, v10, :cond_1

    .line 548
    const/4 v1, 0x0

    .line 550
    :cond_1
    const/16 v4, 0xae

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 554
    .end local v1    # "RtHot":I
    :pswitch_2
    const/16 v4, 0xac

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->SwHot:I

    and-int/lit8 v5, v5, 0x1

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 558
    :pswitch_3
    const/16 v4, 0xaf

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->ClearAir:I

    and-int/lit8 v5, v5, 0x1

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 562
    :pswitch_4
    const/16 v4, 0x24

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->bPowerFlg:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 566
    :pswitch_5
    const/16 v4, 0xb3

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 570
    :pswitch_6
    const/16 v4, 0xbc

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLock:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 574
    :pswitch_7
    const/16 v4, 0x258

    const/16 v5, 0x78

    invoke-direct {p0, p1, v4, v5}, Lcom/ts/can/CanTeramontACActivity;->showWindow(Landroid/view/View;II)V

    goto :goto_0

    .line 578
    :pswitch_8
    const/16 v4, 0x26d

    const/16 v5, 0xbe

    invoke-direct {p0, p1, v4, v5}, Lcom/ts/can/CanTeramontACActivity;->showWindow(Landroid/view/View;II)V

    goto :goto_0

    .line 582
    :pswitch_9
    const/16 v4, 0x190

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoWind:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x50

    invoke-direct {p0, p1, v4, v5}, Lcom/ts/can/CanTeramontACActivity;->showWindow(Landroid/view/View;II)V

    goto :goto_0

    .line 586
    :pswitch_a
    const/16 v4, 0x190

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mAQSArray:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x50

    invoke-direct {p0, p1, v4, v5}, Lcom/ts/can/CanTeramontACActivity;->showWindow(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 590
    :pswitch_b
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 591
    :cond_2
    const/16 v6, 0xb7

    iget v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v6, v4}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    :cond_3
    iget v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 593
    :cond_4
    const/16 v4, 0x28

    iget-object v6, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nWindValue:I

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_5

    :goto_2
    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nWindValue:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 597
    :pswitch_c
    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_8

    .line 598
    :cond_6
    const/16 v5, 0xb7

    iget v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v4, v4, 0x1

    if-le v4, v6, :cond_7

    move v4, v6

    :goto_3
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    :cond_7
    iget v4, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 600
    :cond_8
    const/16 v4, 0x28

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nWindValue:I

    add-int/lit8 v5, v5, 0x1

    if-le v5, v6, :cond_9

    :goto_4
    invoke-static {v4, v6}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nWindValue:I

    add-int/lit8 v6, v5, 0x1

    goto :goto_4

    .line 604
    :pswitch_d
    const/16 v4, 0xbb

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 608
    :pswitch_e
    iget v4, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    if-ne v4, v11, :cond_b

    .line 609
    const/16 v4, 0xbb

    iget v6, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    if-nez v6, :cond_a

    move v5, v7

    :cond_a
    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 611
    :cond_b
    const/16 v4, 0x25

    iget-object v6, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->nAutoLight:I

    if-nez v6, :cond_c

    :goto_5
    invoke-static {v4, v7}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    :cond_c
    move v7, v5

    goto :goto_5

    .line 615
    :pswitch_f
    const/16 v4, 0xbb

    invoke-static {v4, v10}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 619
    :pswitch_10
    iget v4, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    if-ne v4, v11, :cond_d

    .line 620
    const/16 v4, 0xb4

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 622
    :cond_d
    const/16 v4, 0x26

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->bParallelWindFlg:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 626
    :pswitch_11
    iget v4, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    if-ne v4, v11, :cond_e

    .line 627
    const/16 v4, 0xb5

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 629
    :cond_e
    const/16 v4, 0x27

    iget-object v5, p0, Lcom/ts/can/CanTeramontACActivity;->mRearAir:Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;->bDownWindFlg:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanTeramontACActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 633
    :pswitch_12
    const/16 v4, 0xb8

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 637
    :pswitch_13
    const/16 v4, 0xb8

    invoke-static {v4, v7}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 641
    :pswitch_14
    const/16 v4, 0xb9

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 645
    :pswitch_15
    const/16 v4, 0xb9

    invoke-static {v4, v7}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 649
    :pswitch_16
    const/16 v4, 0xba

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 653
    :pswitch_17
    const/16 v4, 0xba

    invoke-static {v4, v7}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 533
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
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_14
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super/range {p0 .. p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ts/can/CanTeramontACActivity;->setContentView(I)V

    .line 125
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 127
    invoke-static/range {p0 .. p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v1

    sput-boolean v1, Lcom/ts/can/CanTeramontACActivity;->mfgJump:Z

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e

    const/16 v3, 0x14

    const/16 v4, 0x5a

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v7

    .line 130
    .local v7, "LtTempDecrease":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_ac_blue:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_blue:I

    invoke-virtual {v7, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 131
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x64

    const/16 v3, 0x14

    const/16 v4, 0x5a

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v8

    .line 135
    .local v8, "LtTempIncrease":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_ac_red:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_red:I

    invoke-virtual {v8, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 136
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x33e

    const/16 v3, 0x14

    const/16 v4, 0x5a

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v11

    .line 140
    .local v11, "RtTempDecrease":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_ac_blue:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_blue:I

    invoke-virtual {v11, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 141
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x38a

    const/16 v3, 0x14

    const/16 v4, 0x5a

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v12

    .line 145
    .local v12, "RtTempIncrease":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_ac_red:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_red:I

    invoke-virtual {v12, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 146
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 147
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x32

    const/16 v3, 0xd

    const/16 v4, 0xaa

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtTemp:Landroid/widget/TextView;

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtTemp:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtTemp:Landroid/widget/TextView;

    const-string v2, "13\u2103"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtTemp:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x324

    const/16 v3, 0xd

    const/16 v4, 0xaa

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtTemp:Landroid/widget/TextView;

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtTemp:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtTemp:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtTemp:Landroid/widget/TextView;

    const-string v2, "13\u2103"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v1, Lcom/ts/canview/MyProgressBar;

    .line 162
    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_progress_bar_up:I

    .line 163
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_progress_bar_dn:I

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    .line 161
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ts/can/CanTeramontACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    const/16 v3, 0x10b

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2ea

    const/16 v3, 0x16

    const/16 v4, 0x3c

    const/16 v5, 0x28

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindVal:Landroid/widget/TextView;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindVal:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindVal:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindVal:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindVal:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xbe

    const/4 v3, 0x0

    const/16 v4, 0x62

    const/16 v5, 0x46

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v13

    .line 175
    .local v13, "decreaseWind":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    invoke-virtual {v13, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 176
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x294

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v15

    .line 180
    .local v15, "increaseWind":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v15, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 181
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xc

    const/16 v3, 0x4c

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_line_up:I

    invoke-virtual/range {v1 .. v6}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e1

    const/16 v3, 0x5e

    const/16 v4, 0x21f

    const/16 v5, 0xec

    sget v6, Lcom/ts/MainUI/R$drawable;->can_golf_bg_new:I

    invoke-virtual/range {v1 .. v6}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x19b

    const/16 v3, 0x68

    const/4 v4, 0x2

    const/16 v5, 0x10b

    sget v6, Lcom/ts/MainUI/R$drawable;->can_golf_sline:I

    invoke-virtual/range {v1 .. v6}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e

    const/16 v3, 0x15e

    const/16 v4, 0x5a

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v9

    .line 189
    .local v9, "RearTempDecrease":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_ac_blue:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_blue:I

    invoke-virtual {v9, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 190
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x6a

    const/16 v3, 0x15e

    const/16 v4, 0x5a

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v10

    .line 194
    .local v10, "RearTempIncrease":Lcom/ts/other/ParamButton;
    sget v1, Lcom/ts/MainUI/R$drawable;->can_ac_red:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_red:I

    invoke-virtual {v10, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 195
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 196
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const/16 v16, 0x19

    .line 199
    .local v16, "seatYdt":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/4 v2, 0x5

    const/16 v3, 0x15c

    const/16 v4, 0xaa

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearTemp:Landroid/widget/TextView;

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearTemp:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearTemp:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearTemp:Landroid/widget/TextView;

    const-string v2, "13\u2103"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_up:I

    .line 207
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_dn:I

    .line 208
    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_dn:I

    .line 206
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xd9

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_up:I

    .line 214
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_dn:I

    .line 215
    sget v4, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_dn:I

    .line 213
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xe4

    const/16 v3, 0x15c

    const/16 v4, 0x54

    const/16 v5, 0x2f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_wheel_hot_up:I

    .line 221
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_wheel_hot_dn:I

    .line 222
    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_wheel_hot_dn:I

    .line 220
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x66

    const/16 v3, 0x117

    const/16 v4, 0x29

    const/16 v5, 0x2c

    .line 227
    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_direction:I

    .line 226
    invoke-virtual/range {v1 .. v6}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtFire:Lcom/ts/other/CustomImgView;

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xf8

    const/16 v3, 0x117

    const/16 v4, 0x29

    const/16 v5, 0x2c

    .line 229
    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_direction:I

    .line 228
    invoke-virtual/range {v1 .. v6}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtFire:Lcom/ts/other/CustomImgView;

    .line 231
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v14, v1, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x20c

    const/16 v3, 0x8c

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold02:I

    .line 243
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot02:I

    .line 242
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1ff

    const/16 v3, 0xe9

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold07:I

    .line 247
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot07:I

    .line 246
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x284

    const/16 v3, 0xb3

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold05:I

    .line 251
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot05:I

    .line 250
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x29d

    const/16 v3, 0x114

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold08:I

    .line 255
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot08:I

    .line 254
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2e1

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold01:I

    .line 259
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot01:I

    .line 258
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2a1

    const/16 v3, 0xa5

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold04:I

    .line 263
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot04:I

    .line 262
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x318

    const/16 v3, 0x7d

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold03:I

    .line 267
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot03:I

    .line 266
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x312

    const/16 v3, 0xc9

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_cold06:I

    .line 271
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_hot06:I

    .line 270
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 274
    const/16 v17, 0x0

    .line 275
    .local v17, "xdt":I
    const/16 v18, -0xa

    .line 276
    .local v18, "ydt":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1b4

    const/16 v3, 0x152

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_heat_up:I

    .line 278
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_heat_dn:I

    .line 277
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x21c

    const/16 v3, 0x152

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mDual:Lcom/ts/other/CustomImgView;

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mDual:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_dual_up:I

    .line 283
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_dual_dn:I

    .line 282
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x284

    const/16 v3, 0x152

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mAc:Lcom/ts/other/CustomImgView;

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mAc:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_ac_up:I

    .line 287
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_ac_dn:I

    .line 286
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2ec

    const/16 v3, 0x152

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mAuto:Lcom/ts/other/CustomImgView;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mAuto:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_auto_up:I

    .line 291
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_auto01_dn:I

    .line 290
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x354

    const/16 v3, 0x152

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mMaxFront:Lcom/ts/other/CustomImgView;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mMaxFront:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_max_up:I

    .line 295
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_max_dn:I

    .line 294
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/4 v2, 0x0

    const/16 v3, 0x1ac

    const/16 v4, 0x400

    const/16 v5, 0x7f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_bg:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setBackgroundResource(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/4 v2, 0x4

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_off_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_off_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_off_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnOff:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x84

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSync:Lcom/ts/other/ParamButton;

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSync:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_sync_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_sync_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_sync_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSync:Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSync:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x103

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_rear_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_rear_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_rear_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x183

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnCleanAir:Lcom/ts/other/ParamButton;

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnCleanAir:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_cleanair_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_cleanair_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_cleanair_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnCleanAir:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnCleanAir:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x203

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnFrontAir:Lcom/ts/other/ParamButton;

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnFrontAir:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_frontair_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_frontair_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_frontair_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnFrontAir:Lcom/ts/other/ParamButton;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnFrontAir:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x283

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRearAir:Lcom/ts/other/ParamButton;

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRearAir:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_rearair_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_rearair_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_rearair_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRearAir:Lcom/ts/other/ParamButton;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnRearAir:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x304

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnWind:Lcom/ts/other/ParamButton;

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnWind:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_fan_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_fan_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_fan_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnWind:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnWind:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x383

    const/16 v3, 0x1b5

    const/16 v4, 0x79

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSettings:Lcom/ts/other/ParamButton;

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSettings:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_bel_set_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_bel_set_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_bel_set_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSettings:Lcom/ts/other/ParamButton;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mBtnSettings:Lcom/ts/other/ParamButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-void

    .line 232
    .end local v17    # "xdt":I
    .end local v18    # "ydt":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v14, 0x27

    add-int/lit8 v3, v3, 0x3e

    const/16 v4, 0x14c

    const/16 v5, 0x24

    const/16 v6, 0x10

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v14

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v14

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    .line 234
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    .line 233
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ts/can/CanTeramontACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v14, 0x27

    add-int/lit16 v3, v3, 0xe0

    const/16 v4, 0x14c

    const/16 v5, 0x24

    const/16 v6, 0x10

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v14

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ts/can/CanTeramontACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v14

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    .line 238
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    .line 237
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 231
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 345
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 346
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 348
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 351
    iget-boolean v0, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoFinish:Z

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontACActivity;->finish()V

    .line 353
    const-string v0, "CanBaseActivity"

    const-string v1, "-----onPause finish-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    sput-boolean v2, Lcom/ts/can/CanTeramontACActivity;->mfgJump:Z

    .line 356
    iput-boolean v2, p0, Lcom/ts/can/CanTeramontACActivity;->mAutoFinish:Z

    .line 359
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 366
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontACActivity;->updateACUI()V

    .line 367
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 368
    sput-boolean v1, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 370
    invoke-direct {p0, v1}, Lcom/ts/can/CanTeramontACActivity;->ResetData(Z)V

    .line 371
    return-void
.end method

.method protected updateACUI()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/high16 v10, -0x10000

    const/4 v9, 0x0

    .line 417
    sget-object v5, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 418
    .local v5, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v7, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v9, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 420
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 421
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mDual:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 422
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mAc:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 423
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mAuto:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 424
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mMaxFront:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgMaxFornt:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 427
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    and-int/lit8 v4, v7, 0x3

    .line 428
    .local v4, "ltHot":I
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    and-int/lit8 v6, v7, 0x3

    .line 429
    .local v6, "rtHot":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_3

    .line 433
    move v3, v4

    :goto_1
    if-lt v3, v13, :cond_4

    .line 437
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v6, :cond_5

    .line 441
    move v3, v6

    :goto_3
    if-lt v3, v13, :cond_6

    .line 445
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mLtFire:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v4}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 446
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mRtFire:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v6}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 448
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindVal:Landroid/widget/TextView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    invoke-virtual {v7, v9, v8}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 450
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v7, v8}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "bLtHot":Z
    const/4 v1, 0x0

    .line 454
    .local v1, "bRtHot":Z
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    const/16 v8, 0xd

    if-le v7, v8, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 458
    :cond_0
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    const/16 v8, 0xd

    if-le v7, v8, :cond_1

    .line 459
    const/4 v1, 0x1

    .line 462
    :cond_1
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 463
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 464
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 465
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 467
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 468
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 469
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 470
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 472
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 473
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 474
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 475
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 477
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 478
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 479
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 480
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 483
    :try_start_0
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mLtTemp:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mRtTemp:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_4
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    invoke-static {v7}, Lcom/lgb/canmodule/CanJni;->GolfGetACData(Lcom/lgb/canmodule/CanDataInfo$GolfACData;)V

    .line 493
    :try_start_1
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mRearTemp:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRearTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    :goto_5
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    iget-object v8, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->SwHot:I

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 498
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mBtnCleanAir:Lcom/ts/other/ParamButton;

    iget-object v8, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->ClearAir:I

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 499
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLock:I

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 502
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 503
    iget v7, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_7

    .line 504
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->acStatus:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 505
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->autoStatus:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 506
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->maxStatus:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgMaxFornt:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 507
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->pallaxWind:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 508
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->downWind:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 524
    :cond_2
    return-void

    .line 430
    .end local v0    # "bLtHot":Z
    .end local v1    # "bRtHot":Z
    :cond_3
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v12}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 434
    :cond_4
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 438
    :cond_5
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v12}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 442
    :cond_6
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 485
    .restart local v0    # "bLtHot":Z
    .restart local v1    # "bRtHot":Z
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CanBaseActivity"

    const-string v8, "set Temp text Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 509
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    iget v7, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_2

    .line 510
    const/4 v3, 0x0

    :goto_6
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 511
    iget v7, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    .line 512
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    if-ne v3, v7, :cond_9

    .line 513
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 515
    :cond_9
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 516
    :cond_a
    iget v7, p0, Lcom/ts/can/CanTeramontACActivity;->windowId:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_8

    .line 517
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->Profile:I

    if-ne v3, v7, :cond_b

    .line 518
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 520
    :cond_b
    iget-object v7, p0, Lcom/ts/can/CanTeramontACActivity;->arrayViews:[Landroid/widget/TextView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 494
    :catch_1
    move-exception v7

    goto/16 :goto_5
.end method
