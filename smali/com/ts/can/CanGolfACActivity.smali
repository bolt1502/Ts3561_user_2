.class public Lcom/ts/can/CanGolfACActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ITEM_AUTO_AQS:I = 0x3

.field private static final ITEM_CLEAR_AIR:I = 0x7

.field private static final ITEM_LT_HOT:I = 0x4

.field private static final ITEM_PROFILE:I = 0x2

.field private static final ITEM_RT_HOT:I = 0x5

.field private static final ITEM_SW_HOT:I = 0x6

.field private static final ITEM_WIND:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGolfACActivity"

.field private static final mProfile:[I

.field protected static mfgJump:Z


# instance fields
.field private mAc:Lcom/ts/other/CustomImgView;

.field private mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

.field private mAuto:Lcom/ts/other/CustomImgView;

.field protected mAutoFinish:Z

.field private mBmpProgress:Landroid/graphics/Bitmap;

.field private mBtnAutoAQS:Lcom/ts/other/ParamButton;

.field private mBtnClearAir:Lcom/ts/other/ParamButton;

.field private mBtnLtHot:Lcom/ts/other/ParamButton;

.field private mBtnProfile:Lcom/ts/other/ParamButton;

.field private mBtnRtHot:Lcom/ts/other/ParamButton;

.field private mBtnSwHot:Lcom/ts/other/ParamButton;

.field private mDual:Lcom/ts/other/CustomImgView;

.field private mHLineDn:Lcom/ts/other/CustomImgView;

.field private mHLineUp:Lcom/ts/other/CustomImgView;

.field private mLtFire:Lcom/ts/other/CustomImgView;

.field private mLtHot:[Lcom/ts/other/CustomImgView;

.field private mLtTemp:Landroid/widget/TextView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMaxFront:Lcom/ts/other/CustomImgView;

.field private mRearLight:Lcom/ts/other/CustomImgView;

.field private mRearTemp:Landroid/widget/TextView;

.field private mRtFire:Lcom/ts/other/CustomImgView;

.field private mRtHot:[Lcom/ts/other/CustomImgView;

.field private mRtTemp:Landroid/widget/TextView;

.field private mStrProfileText:Ljava/lang/String;

.field private mStrProfileVal:[Ljava/lang/String;

.field private mVLineCenter:Lcom/ts/other/CustomImgView;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 83
    sget v2, Lcom/ts/MainUI/R$string;->can_air_light:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 84
    sget v2, Lcom/ts/MainUI/R$string;->can_air_medium:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 85
    sget v2, Lcom/ts/MainUI/R$string;->can_air_strong:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 86
    sget v2, Lcom/ts/MainUI/R$string;->can_air_light:I

    aput v2, v0, v1

    .line 81
    sput-object v0, Lcom/ts/can/CanGolfACActivity;->mProfile:[I

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 26
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 68
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    .line 69
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/CanGolfACActivity;->mAutoFinish:Z

    .line 96
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfACData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    .line 26
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 312
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 313
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/ts/can/CanGolfACActivity;->updateACUI()V

    .line 319
    :cond_0
    sget-boolean v2, Lcom/ts/can/CanGolfACActivity;->mfgJump:Z

    if-eqz v2, :cond_1

    .line 321
    invoke-static {}, Lcom/ts/can/CanGolfACActivity;->GetTickCount()J

    move-result-wide v0

    .line 322
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/ts/can/CanGolfACActivity;->finish()V

    .line 325
    const-string v2, "CanGolfACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/CanGolfACActivity;->mAutoFinish:Z

    .line 330
    .end local v0    # "curTick":J
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    .line 446
    sget-object v3, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 448
    .local v3, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 449
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 491
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v5, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->Profile:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/ts/other/ValCal;->dataStepLoop(IIIZ)I

    move-result v4

    .line 453
    .local v4, "val":I
    const/16 v5, 0xb1

    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 457
    .end local v4    # "val":I
    :pswitch_1
    const/16 v5, 0xb0

    iget-object v6, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->fgAutoRecircule:I

    and-int/lit8 v6, v6, 0x1

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 461
    :pswitch_2
    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    and-int/lit8 v2, v5, 0x3

    .line 462
    .local v2, "ltHot":I
    add-int/lit8 v2, v2, 0x1

    .line 463
    if-le v2, v6, :cond_0

    .line 465
    const/4 v2, 0x0

    .line 467
    :cond_0
    const/16 v5, 0xad

    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 471
    .end local v2    # "ltHot":I
    :pswitch_3
    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    and-int/lit8 v1, v5, 0x3

    .line 472
    .local v1, "RtHot":I
    add-int/lit8 v1, v1, 0x1

    .line 473
    if-le v1, v6, :cond_1

    .line 475
    const/4 v1, 0x0

    .line 477
    :cond_1
    const/16 v5, 0xae

    invoke-static {v5, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 481
    .end local v1    # "RtHot":I
    :pswitch_4
    const/16 v5, 0xac

    iget-object v6, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->SwHot:I

    and-int/lit8 v6, v6, 0x1

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 485
    :pswitch_5
    const/16 v5, 0xaf

    iget-object v6, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->ClearAir:I

    and-int/lit8 v6, v6, 0x1

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfACActivity;->setContentView(I)V

    .line 105
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 107
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/ts/can/CanGolfACActivity;->mfgJump:Z

    .line 109
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x32

    const/16 v2, 0xd

    const/16 v3, 0xaa

    const/16 v4, 0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtTemp:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtTemp:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtTemp:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtTemp:Landroid/widget/TextView;

    const-string v1, "13\u2103"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtTemp:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x324

    const/16 v2, 0xd

    const/16 v3, 0xaa

    const/16 v4, 0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtTemp:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtTemp:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtTemp:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtTemp:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtTemp:Landroid/widget/TextView;

    const-string v1, "13\u2103"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v0, Lcom/ts/canview/MyProgressBar;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_progress_bar_up:I

    .line 124
    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_progress_bar_dn:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    .line 123
    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    .line 125
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/CanGolfACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    const/16 v2, 0x10b

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2e0

    const/16 v2, 0x16

    const/16 v3, 0x3c

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindVal:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindVal:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindVal:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindVal:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindVal:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xea

    const/16 v2, 0x1e

    const/16 v3, 0x19

    const/16 v4, 0x1a

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_fan02_up:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 136
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2ae

    const/16 v2, 0x16

    const/16 v3, 0x27

    const/16 v4, 0x28

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_fan01_up:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 137
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xc

    const/16 v2, 0x4c

    const/16 v3, 0x3e7

    const/4 v4, 0x1

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_line_up:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 138
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xc

    const/16 v2, 0x195

    const/16 v3, 0x3e7

    const/4 v4, 0x1

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_line_up:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 140
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1e1

    const/16 v2, 0x5e

    const/16 v3, 0x21f

    const/16 v4, 0xec

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_bg_new:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 141
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x19b

    const/16 v2, 0x68

    const/4 v3, 0x2

    const/16 v4, 0x10b

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_sline:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 144
    const/16 v7, 0x19

    .line 145
    .local v7, "seatYdt":I
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/4 v1, 0x5

    const/16 v2, 0x15c

    const/16 v3, 0xaa

    const/16 v4, 0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearTemp:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearTemp:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearTemp:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearTemp:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearTemp:Landroid/widget/TextView;

    const-string v1, "13\u2103"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1e

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    .line 154
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_up:I

    .line 155
    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_dn:I

    .line 156
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_dn:I

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 157
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnLtHot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xd9

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    .line 161
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_up:I

    .line 162
    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_dn:I

    .line 163
    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_dn:I

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 164
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnRtHot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xbc

    const/16 v2, 0x15c

    const/16 v3, 0x54

    const/16 v4, 0x2f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    .line 168
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_wheel_hot_up:I

    .line 169
    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_wheel_hot_dn:I

    .line 170
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_wheel_hot_dn:I

    .line 168
    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 171
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x127

    const/16 v2, 0x15c

    const/16 v3, 0x54

    const/16 v4, 0x2f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnClearAir:Lcom/ts/other/ParamButton;

    .line 175
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnClearAir:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_green_up:I

    .line 176
    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_green_dn:I

    .line 177
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_green_dn:I

    .line 175
    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 178
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnClearAir:Lcom/ts/other/ParamButton;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnClearAir:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x66

    const/16 v2, 0x117

    const/16 v3, 0x29

    const/16 v4, 0x2c

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_direction:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtFire:Lcom/ts/other/CustomImgView;

    .line 188
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xf8

    const/16 v2, 0x117

    const/16 v3, 0x29

    const/16 v4, 0x2c

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_direction:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtFire:Lcom/ts/other/CustomImgView;

    .line 190
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v0, 0x3

    if-lt v6, v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x20c

    const/16 v2, 0x8c

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    .line 202
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold02:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot02:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1ff

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    .line 205
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold07:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot07:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 207
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x284

    const/16 v2, 0xb3

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    .line 208
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold05:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot05:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 210
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x29d

    const/16 v2, 0x114

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    .line 211
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold08:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot08:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 213
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2e1

    const/16 v2, 0x5d

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    .line 214
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold01:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot01:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 216
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2a1

    const/16 v2, 0xa5

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    .line 217
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold04:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot04:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 219
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x318

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    .line 220
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold03:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot03:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 223
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x312

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    .line 224
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_cold06:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_hot06:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 226
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1a

    const/16 v2, 0x1ae

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    .line 227
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_case_up:I

    .line 228
    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_case_dn:I

    .line 229
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_case_dn:I

    .line 227
    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 231
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    const/4 v1, 0x0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 234
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1d3

    const/16 v2, 0x1ae

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    .line 237
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_case_right_up:I

    .line 238
    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_case_right_dn:I

    .line 239
    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_case_right_dn:I

    .line 237
    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 240
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->can_auto_recirculate:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    const/4 v1, 0x0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 242
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, "xdt":I
    const/16 v9, -0xa

    .line 248
    .local v9, "ydt":I
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1b4

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    .line 249
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_heat_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_heat_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 250
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 253
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x21c

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mDual:Lcom/ts/other/CustomImgView;

    .line 254
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mDual:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_dual_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_dual_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 257
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x284

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mAc:Lcom/ts/other/CustomImgView;

    .line 258
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mAc:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_ac_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_ac_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 260
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2ec

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mAuto:Lcom/ts/other/CustomImgView;

    .line 261
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mAuto:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_auto_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_auto01_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 263
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x354

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mMaxFront:Lcom/ts/other/CustomImgView;

    .line 264
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mMaxFront:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_max_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_max_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ts/can/CanGolfACActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->can_air_con_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mStrProfileText:Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/ts/can/CanGolfACActivity;->mProfile:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mStrProfileVal:[Ljava/lang/String;

    .line 268
    const/4 v6, 0x0

    :goto_2
    sget-object v0, Lcom/ts/can/CanGolfACActivity;->mProfile:[I

    array-length v0, v0

    if-lt v6, v0, :cond_2

    .line 272
    return-void

    .line 183
    .end local v6    # "i":I
    .end local v8    # "xdt":I
    .end local v9    # "ydt":I
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1e

    const/16 v2, 0x96

    const/16 v3, 0x9b

    const/16 v4, 0x8a

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_leftseat_up:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 184
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xd9

    const/16 v2, 0x96

    const/16 v3, 0x9b

    const/16 v4, 0x8a

    sget v5, Lcom/ts/MainUI/R$drawable;->conditioning_rightseat_up:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    goto/16 :goto_0

    .line 192
    .restart local v6    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v2, v6, 0x27

    add-int/lit8 v2, v2, 0x3e

    const/16 v3, 0x14c

    const/16 v4, 0x24

    const/16 v5, 0x10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 193
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 195
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanGolfACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v2, v6, 0x27

    add-int/lit16 v2, v2, 0xe0

    const/16 v3, 0x14c

    const/16 v4, 0x24

    const/16 v5, 0x10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 196
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 270
    .restart local v8    # "xdt":I
    .restart local v9    # "ydt":I
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanGolfACActivity;->mStrProfileVal:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ts/can/CanGolfACActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/ts/can/CanGolfACActivity;->mProfile:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 268
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 279
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 280
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 282
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    if-nez v0, :cond_1

    .line 286
    iget-boolean v0, p0, Lcom/ts/can/CanGolfACActivity;->mAutoFinish:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/ts/can/CanGolfACActivity;->finish()V

    .line 289
    const-string v0, "CanGolfACActivity"

    const-string v1, "-----onPause finish-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    sput-boolean v2, Lcom/ts/can/CanGolfACActivity;->mfgJump:Z

    .line 292
    iput-boolean v2, p0, Lcom/ts/can/CanGolfACActivity;->mAutoFinish:Z

    .line 295
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 303
    invoke-virtual {p0}, Lcom/ts/can/CanGolfACActivity;->updateACUI()V

    .line 304
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 305
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowAC:Z

    .line 306
    return-void
.end method

.method protected updateACUI()V
    .locals 13

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 336
    sget-object v5, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 337
    .local v5, "mACInfo":Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
    sget-object v7, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v9, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 339
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mRearLight:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 340
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mDual:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 341
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mAc:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 342
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mAuto:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 343
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mMaxFront:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgMaxFornt:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 347
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    and-int/lit8 v4, v7, 0x3

    .line 348
    .local v4, "ltHot":I
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    and-int/lit8 v6, v7, 0x3

    .line 349
    .local v6, "rtHot":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_3

    .line 354
    move v3, v4

    :goto_1
    if-lt v3, v11, :cond_4

    .line 359
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v6, :cond_5

    .line 364
    move v3, v6

    :goto_3
    if-lt v3, v11, :cond_6

    .line 369
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mLtFire:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v4}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 370
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mRtFire:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v6}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 372
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindVal:Landroid/widget/TextView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    invoke-virtual {v7, v9, v8}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 374
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindProgress:Lcom/ts/canview/MyProgressBar;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v7, v8}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "bLtHot":Z
    const/4 v1, 0x0

    .line 378
    .local v1, "bRtHot":Z
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    if-le v7, v12, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 383
    :cond_0
    iget v7, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRightTemp:I

    if-le v7, v12, :cond_1

    .line 385
    const/4 v1, 0x1

    .line 388
    :cond_1
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 389
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtUp:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 390
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 391
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtUp:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 393
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 394
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxLt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 395
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 396
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxLt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 398
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 399
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtPxRt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 400
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 401
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtPxRt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 403
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 404
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindLtDn:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 405
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    iget v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 406
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mWindRtDn:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 411
    :try_start_0
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mLtTemp:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mRtTemp:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_4
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    invoke-static {v7}, Lcom/lgb/canmodule/CanJni;->GolfGetACData(Lcom/lgb/canmodule/CanDataInfo$GolfACData;)V

    .line 421
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mBtnAutoAQS:Lcom/ts/other/ParamButton;

    iget-object v8, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->fgAutoRecircule:I

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 423
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mBtnProfile:Lcom/ts/other/ParamButton;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/ts/can/CanGolfACActivity;->mStrProfileText:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ts/can/CanGolfACActivity;->mStrProfileVal:[Ljava/lang/String;

    iget-object v10, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->Profile:I

    and-int/lit8 v10, v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 429
    :try_start_1
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mRearTemp:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRearTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :goto_5
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mBtnSwHot:Lcom/ts/other/ParamButton;

    iget-object v8, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->SwHot:I

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 438
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mBtnClearAir:Lcom/ts/other/ParamButton;

    iget-object v8, p0, Lcom/ts/can/CanGolfACActivity;->mAcData:Lcom/lgb/canmodule/CanDataInfo$GolfACData;

    iget v8, v8, Lcom/lgb/canmodule/CanDataInfo$GolfACData;->ClearAir:I

    invoke-virtual {v7, v8}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 441
    :cond_2
    return-void

    .line 351
    .end local v0    # "bLtHot":Z
    .end local v1    # "bRtHot":Z
    :cond_3
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v10}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 356
    :cond_4
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mLtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 361
    :cond_5
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v10}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 366
    :cond_6
    iget-object v7, p0, Lcom/ts/can/CanGolfACActivity;->mRtHot:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 414
    .restart local v0    # "bLtHot":Z
    .restart local v1    # "bRtHot":Z
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CanGolfACActivity"

    const-string v8, "set Temp text Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 431
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 434
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "CanGolfACActivity"

    const-string v8, "set RTemp text Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
