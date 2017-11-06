.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzdCx4CDActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_NEXT:I = 0x4

.field public static final ITEM_PAUSE:I = 0x3

.field public static final ITEM_PLAY:I = 0x2

.field public static final ITEM_PREV:I = 0x1

.field public static final ITEM_RDM:I = 0x6

.field public static final ITEM_RPT:I = 0x5

.field protected static mOldSta:I


# instance fields
.field protected mAlbum:Lcom/ts/other/CustomTextView;

.field protected mArtist:Lcom/ts/other/CustomTextView;

.field protected mBtnNext:Lcom/ts/other/ParamButton;

.field protected mBtnPause:Lcom/ts/other/ParamButton;

.field protected mBtnPlay:Lcom/ts/other/ParamButton;

.field protected mBtnPrev:Lcom/ts/other/ParamButton;

.field protected mBtnRdm:Lcom/ts/other/ParamButton;

.field protected mBtnRpt:Lcom/ts/other/ParamButton;

.field protected mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

.field protected mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

.field protected mSong:Lcom/ts/other/CustomTextView;

.field protected mSta:Lcom/ts/other/CustomTextView;

.field protected mStartCount:I

.field protected mStrSta:[Ljava/lang/String;

.field protected mTime:Lcom/ts/other/CustomTextView;

.field protected mTrack:Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mOldSta:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    .line 56
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    .line 57
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u505c\u6b62"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u6682\u505c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u51fa\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u8bfb\u53d6\u4e2d"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mStrSta:[Ljava/lang/String;

    .line 62
    iput v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mStartCount:I

    .line 27
    return-void
.end method

.method public static DealStatusChanged()V
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetCdSta()I

    move-result v0

    .line 333
    .local v0, "curStatus":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curStatus = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mOldSta:I

    if-eq v0, v1, :cond_0

    .line 336
    sput v0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mOldSta:I

    .line 338
    packed-switch v0, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 341
    :pswitch_0
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->IsExdMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 350
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;

    invoke-static {v1}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private InitUI()V
    .locals 10

    .prologue
    const/16 v3, 0x194

    const/16 v9, 0x12c

    const/16 v8, 0x54

    const/16 v7, 0x2c

    const/16 v6, 0x2a

    .line 73
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 74
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    const/4 v1, 0x1

    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_up:I

    .line 77
    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_dn:I

    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 78
    const/4 v1, 0x2

    const/16 v2, 0x187

    .line 79
    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_up:I

    .line 80
    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_dn:I

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 81
    const/4 v1, 0x3

    const/16 v2, 0x20e

    .line 82
    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_up:I

    .line 83
    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_dn:I

    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnPause:Lcom/ts/other/ParamButton;

    .line 84
    const/4 v1, 0x4

    const/16 v2, 0x294

    .line 85
    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_up:I

    .line 86
    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_dn:I

    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 88
    const/4 v1, 0x5

    const/16 v2, 0x2e

    const/16 v3, 0x19

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_up:I

    .line 89
    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_dn:I

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    .line 90
    const/4 v1, 0x6

    const/16 v2, 0xb4

    const/16 v3, 0x19

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_up:I

    .line 91
    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_dn:I

    move-object v0, p0

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    .line 93
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x7f

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_sjx:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 94
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xb8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_music:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 95
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x12b

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_artist:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 96
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xf2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_disc:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 98
    const/16 v0, 0x77

    invoke-virtual {p0, v8, v0, v9, v6}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddLeftText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    .line 99
    const/16 v0, 0xb0

    invoke-virtual {p0, v8, v0, v9, v6}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddLeftText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSong:Lcom/ts/other/CustomTextView;

    .line 100
    const/16 v0, 0xea

    invoke-virtual {p0, v8, v0, v9, v6}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddLeftText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mAlbum:Lcom/ts/other/CustomTextView;

    .line 101
    const/16 v0, 0x123

    invoke-virtual {p0, v8, v0, v9, v6}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddLeftText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    .line 103
    const/16 v0, 0x1ae

    const/16 v1, 0x17

    const/16 v2, 0xfa

    const/16 v3, 0x37

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddLeftText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    .line 104
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 106
    const/16 v0, 0x16a

    const/16 v1, 0x155

    const/16 v2, 0x190

    const/16 v3, 0x23

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddCenterText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    .line 107
    return-void
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 8
    .param p1, "time"    # I

    .prologue
    .line 220
    div-int/lit16 v0, p1, 0xe10

    .line 221
    .local v0, "hour":I
    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v1, v4, 0x3c

    .line 222
    .local v1, "min":I
    rem-int/lit8 v2, p1, 0x3c

    .line 224
    .local v2, "second":I
    const-string v4, "%02d : %02d : %02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "timeString":Ljava/lang/String;
    return-object v3
.end method

.method private resetText()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSong:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mAlbum:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
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
    .line 323
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 324
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 327
    return-object v0
.end method

.method protected AddCenterText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->AddLeftText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 318
    .local v0, "item":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 319
    return-object v0
.end method

.method protected AddLeftText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 311
    .local v0, "item":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 312
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 313
    return-object v0
.end method

.method protected Query()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    .line 271
    const/4 v0, 0x4

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4Query(II)V

    .line 272
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->Sleep(J)V

    .line 273
    const/4 v0, 0x5

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4Query(II)V

    .line 274
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->Sleep(J)V

    .line 275
    const/4 v0, 0x6

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4Query(II)V

    .line 276
    return-void
.end method

.method protected ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 125
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetDevInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;)V

    .line 126
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetCdPlayInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;)V

    .line 127
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetCdId3(Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;)V

    .line 129
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->Update:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->Update:I

    .line 133
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->fgCd:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->CdState:I

    if-eqz v3, :cond_7

    .line 135
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v4, "CD\u9519\u8bef"

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->resetText()V

    .line 147
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->Update:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->Update:I

    .line 151
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->CdState:I

    if-nez v3, :cond_4

    .line 153
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->WorkMode:I

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mStrSta:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_9

    .line 154
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v4, "\u5176\u4ed6\u72b6\u6001"

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_1
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->WorkMode:I

    if-eq v3, v6, :cond_3

    .line 160
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->WorkMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->TrackTime:I

    invoke-direct {p0, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "trackTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->TotalTime:I

    invoke-direct {p0, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "totalTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v4, "TRACK %d"

    new-array v5, v6, [Ljava/lang/Object;

    .line 166
    iget-object v6, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->CurTrack:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 165
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v1    # "totalTime":Ljava/lang/String;
    .end local v2    # "trackTime":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->fgRpt:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 173
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->fgRdm:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 181
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->Update:I

    invoke-static {v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    :cond_5
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->Update:I

    .line 184
    const-string v0, ""

    .line 186
    .local v0, "encode":Ljava/lang/String;
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->EncoderMode:I

    packed-switch v3, :pswitch_data_0

    .line 201
    :goto_3
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mDevInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;->CdState:I

    if-nez v3, :cond_6

    .line 202
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSong:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->szTitle:[B

    invoke-virtual {p0, v4, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->byte2String([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mAlbum:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->szDisc:[B

    invoke-virtual {p0, v4, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->byte2String([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mCdId:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;->szArtist:[B

    invoke-virtual {p0, v4, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->byte2String([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0    # "encode":Ljava/lang/String;
    :cond_6
    return-void

    .line 138
    :cond_7
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v4, "\u6b63\u5e38"

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :cond_8
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v4, "\u65e0CD"

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->resetText()V

    goto/16 :goto_0

    .line 156
    :cond_9
    iget-object v3, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    iget-object v4, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mStrSta:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->mPlayInfo:Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;->WorkMode:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 169
    :cond_a
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->resetText()V

    goto/16 :goto_2

    .line 188
    .restart local v0    # "encode":Ljava/lang/String;
    :pswitch_0
    const-string v0, "GBK"

    .line 189
    goto :goto_3

    .line 191
    :pswitch_1
    const-string v0, "UTF-16"

    .line 192
    goto :goto_3

    .line 194
    :pswitch_2
    const-string v0, "UTF-16"

    .line 195
    goto :goto_3

    .line 197
    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_3

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->ResetData(Z)V

    .line 307
    return-void
.end method

.method public byte2String([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "b"    # [B
    .param p2, "encode"    # Ljava/lang/String;

    .prologue
    .line 230
    array-length v0, p1

    .line 231
    .local v0, "Datalen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-lt v4, v5, :cond_0

    .line 240
    :goto_1
    if-nez v0, :cond_2

    .line 242
    const-string v2, ""

    .line 265
    :goto_2
    return-object v2

    .line 233
    :cond_0
    aget-byte v5, p1, v4

    if-nez v5, :cond_1

    .line 235
    move v0, v4

    .line 236
    goto :goto_1

    .line 231
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_2
    const-string v2, ""

    .line 249
    .local v2, "des":Ljava/lang/String;
    :try_start_0
    array-length v5, p1

    if-ne v0, v5, :cond_3

    .line 251
    new-instance v2, Ljava/lang/String;

    .end local v2    # "des":Ljava/lang/String;
    invoke-direct {v2, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 252
    .restart local v2    # "des":Ljava/lang/String;
    goto :goto_2

    .line 255
    :cond_3
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 256
    .local v1, "data":[B
    new-instance v2, Ljava/lang/String;

    .end local v2    # "des":Ljava/lang/String;
    invoke-direct {v2, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "des":Ljava/lang/String;
    goto :goto_2

    .line 259
    .end local v1    # "data":[B
    .end local v2    # "des":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 261
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    const-string v2, ""

    .restart local v2    # "des":Ljava/lang/String;
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 282
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 284
    :pswitch_0
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 293
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 296
    :pswitch_4
    const/16 v1, 0xcc

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 299
    :pswitch_5
    const/16 v1, 0xbb

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MzdCx4CdCmd(I)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->InitUI()V

    .line 70
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 121
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 112
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->ResetData(Z)V

    .line 114
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CDActivity;->Query()V

    .line 116
    return-void
.end method
