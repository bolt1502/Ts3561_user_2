.class public Lcom/ts/can/chrysler/CanChrOthCDActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanChrOthCDActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_FF:I = 0x6

.field public static final ITEM_FR:I = 0x1

.field public static final ITEM_NEXT:I = 0x5

.field public static final ITEM_PAUSE:I = 0x4

.field public static final ITEM_PLAY:I = 0x3

.field public static final ITEM_PREV:I = 0x2

.field public static final ITEM_RDM:I = 0x8

.field public static final ITEM_RPT:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanChrOthCDActivity"


# instance fields
.field protected mAlbum:Lcom/ts/other/CustomTextView;

.field protected mArtist:Lcom/ts/other/CustomTextView;

.field protected mBtnFF:Lcom/ts/other/ParamButton;

.field protected mBtnFR:Lcom/ts/other/ParamButton;

.field protected mBtnNext:Lcom/ts/other/ParamButton;

.field protected mBtnPause:Lcom/ts/other/ParamButton;

.field protected mBtnPlay:Lcom/ts/other/ParamButton;

.field protected mBtnPrev:Lcom/ts/other/ParamButton;

.field protected mBtnRdm:Lcom/ts/other/ParamButton;

.field protected mBtnRpt:Lcom/ts/other/ParamButton;

.field protected mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mSong:Lcom/ts/other/CustomTextView;

.field protected mSta:Lcom/ts/other/CustomTextView;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

.field protected mStrSta:[Ljava/lang/String;

.field protected mTime:Lcom/ts/other/CustomTextView;

.field protected mTrack:Lcom/ts/other/CustomTextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    .line 57
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    const-string v2, "\u65e0\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 62
    const-string v2, "\u6b63\u5728\u5165\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 63
    const-string v2, "\u8bfb\u53d6\u4e2d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 64
    const-string v2, "\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 65
    const-string v2, "\u6682\u505c"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 66
    const-string v2, "\u6b63\u5728\u51fa\u789f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStrSta:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCdSta(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Update:I

    .line 147
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->UpdateInfo()V

    .line 149
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStrSta:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 151
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v1, "\u5176\u4ed6\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Rnd:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 159
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Rpt:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->Update:I

    .line 168
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->UpdateInfo()V

    .line 172
    :cond_3
    return-void

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mSta:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStrSta:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
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
    .line 266
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 267
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 270
    return-object v0
.end method

.method protected AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 213
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 215
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 216
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 204
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 206
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 207
    return-object v0
.end method

.method protected CdCtrl(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    .line 291
    return-void
.end method

.method protected UpdateInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v7, v0, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-ne v8, v0, :cond_2

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurTrack:I

    if-lt v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, "%d/%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, "%02d:%02d:%02d / %02d:%02d:%02d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 190
    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 191
    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 189
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->ResetData(Z)V

    .line 279
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 286
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 228
    :pswitch_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 232
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 236
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 240
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 244
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 248
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 252
    :pswitch_6
    const/16 v1, 0xf2

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 256
    :pswitch_7
    const/16 v1, 0xf1

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 225
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
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x12c

    const/16 v7, 0x23

    const/16 v6, 0x19

    const/16 v3, 0x194

    .line 73
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->setContentView(I)V

    .line 77
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 78
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 80
    const/4 v1, 0x1

    const/16 v2, 0x7b

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_down_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_down_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnFR:Lcom/ts/other/ParamButton;

    .line 81
    const/4 v1, 0x2

    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 82
    const/4 v1, 0x3

    const/16 v2, 0x187

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 83
    const/4 v1, 0x4

    const/16 v2, 0x20e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnPause:Lcom/ts/other/ParamButton;

    .line 84
    const/4 v1, 0x5

    const/16 v2, 0x294

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 85
    const/4 v1, 0x6

    const/16 v2, 0x31a

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_speed_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_speed_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnFF:Lcom/ts/other/ParamButton;

    .line 87
    const/4 v1, 0x7

    const/16 v2, 0x2e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_dn:I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    .line 88
    const/16 v1, 0x8

    const/16 v2, 0xb4

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_dn:I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    .line 90
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2c

    const/16 v2, 0x7f

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_sjx:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 91
    const/16 v0, 0x54

    const/16 v1, 0x7c

    const/16 v2, 0x24

    invoke-virtual {p0, v0, v1, v8, v2}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mSta:Lcom/ts/other/CustomTextView;

    .line 104
    const/16 v0, 0x320

    const/16 v1, 0x21

    const/16 v2, 0xc8

    invoke-virtual {p0, v0, v1, v2, v7}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    .line 105
    const/16 v0, 0x16a

    const/16 v1, 0x155

    invoke-virtual {p0, v0, v1, v8, v7}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCDActivity;->mTime:Lcom/ts/other/CustomTextView;

    .line 108
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 126
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 128
    const/16 v0, 0x42

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 129
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->Sleep(J)V

    .line 130
    const/16 v0, 0x43

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 132
    const-string v0, "CanChrOthCDActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 115
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCDActivity;->ResetData(Z)V

    .line 117
    const-string v0, "CanChrOthCDActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 119
    return-void
.end method
