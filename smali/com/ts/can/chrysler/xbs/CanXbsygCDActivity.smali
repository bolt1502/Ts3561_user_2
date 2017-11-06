.class public Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanXbsygCDActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_FF:I = 0x6

.field public static final ITEM_FR:I = 0x1

.field public static final ITEM_LIST:I = 0x9

.field public static final ITEM_NEXT:I = 0x5

.field public static final ITEM_PAUSE:I = 0x4

.field public static final ITEM_PLAY:I = 0x3

.field public static final ITEM_PREV:I = 0x2

.field public static final ITEM_RDM:I = 0x8

.field public static final ITEM_RPT:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanXbsygCDActivity"


# instance fields
.field protected mAlbum:Lcom/ts/other/CustomTextView;

.field protected mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

.field protected mArtist:Lcom/ts/other/CustomTextView;

.field protected mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

.field protected mBtnFF:Lcom/ts/other/ParamButton;

.field protected mBtnFR:Lcom/ts/other/ParamButton;

.field protected mBtnList:Lcom/ts/other/ParamButton;

.field protected mBtnNext:Lcom/ts/other/ParamButton;

.field protected mBtnPause:Lcom/ts/other/ParamButton;

.field protected mBtnPlay:Lcom/ts/other/ParamButton;

.field protected mBtnPrev:Lcom/ts/other/ParamButton;

.field protected mBtnRdm:Lcom/ts/other/ParamButton;

.field protected mBtnRpt:Lcom/ts/other/ParamButton;

.field protected mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

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
    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    .line 61
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    .line 63
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    .line 64
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    .line 65
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    const-string v2, "\u65e0\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 70
    const-string v2, "\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 71
    const-string v2, "\u52a0\u8f7d\u4e2d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 72
    const-string v2, "\u8bfb\u53d6\u4e2d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 73
    const-string v2, "\u6b63\u5728\u51fa\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 74
    const-string v2, "\u6682\u505c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 75
    const-string v2, "\u505c\u6b62"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 76
    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 77
    const-string v2, "\u6362\u66f2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 78
    const-string v2, "\u9519\u8bef"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStrSta:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;)V

    .line 157
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCdSta(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnList:Lcom/ts/other/ParamButton;

    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->IsLoadOK()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 164
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Update:I

    .line 165
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->UpdateInfo()V

    .line 167
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStrSta:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 169
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v1, "\u5176\u4ed6\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Rnd:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 177
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Rpt:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->Update:I

    .line 186
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->UpdateInfo()V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthGetID3(Lcom/lgb/canmodule/CanDataInfo$ChrOthText;Lcom/lgb/canmodule/CanDataInfo$ChrOthText;Lcom/lgb/canmodule/CanDataInfo$ChrOthText;)V

    .line 192
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->Update:I

    .line 197
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mSong:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mNameData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->szData:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2UnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->Update:I

    .line 206
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbum:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbumData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->szData:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2UnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 212
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->Update:I

    .line 215
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtistData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->szData:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2UnicodeStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_9
    return-void

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mSta:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStrSta:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
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
    .line 331
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 332
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 335
    return-object v0
.end method

.method protected AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 274
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 276
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 277
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 264
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 265
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 267
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 268
    return-object v0
.end method

.method protected CdCtrl(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    .line 356
    return-void
.end method

.method protected IsLoadOK()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 224
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v0, v1, :cond_0

    .line 225
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v1, v2, :cond_0

    .line 226
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v1, v2, :cond_0

    .line 227
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-ne v1, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected UpdateInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->IsLoadOK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurTrack:I

    if-lt v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, "%d/%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, "%02d:%02d:%02d / %02d:%02d:%02d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    .line 252
    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 250
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_1
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->CurTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->ResetData(Z)V

    .line 344
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 351
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 289
    :pswitch_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 293
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 297
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 301
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 305
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 309
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 313
    :pswitch_6
    const/16 v1, 0xf2

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 317
    :pswitch_7
    const/16 v1, 0xf1

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->CdCtrl(I)V

    goto :goto_0

    .line 321
    :pswitch_8
    const-class v1, Lcom/ts/can/chrysler/xbs/CanXbsygFileListActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 286
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
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x19

    const/16 v9, 0x54

    const/16 v8, 0x2c

    const/16 v7, 0x24

    const/16 v3, 0x1a8

    .line 86
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->setContentView(I)V

    .line 90
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 91
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 93
    const/16 v6, 0x14

    .line 94
    .local v6, "bot_y_dt":I
    const/4 v1, 0x1

    const/16 v2, 0x7b

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_down_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_down_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnFR:Lcom/ts/other/ParamButton;

    .line 95
    const/4 v1, 0x2

    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 96
    const/4 v1, 0x3

    const/16 v2, 0x187

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 97
    const/4 v1, 0x4

    const/16 v2, 0x20e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnPause:Lcom/ts/other/ParamButton;

    .line 98
    const/4 v1, 0x5

    const/16 v2, 0x294

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 99
    const/4 v1, 0x6

    const/16 v2, 0x31a

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_speed_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_speed_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnFF:Lcom/ts/other/ParamButton;

    .line 101
    const/4 v1, 0x7

    const/16 v2, 0x2e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    .line 102
    const/16 v1, 0x8

    const/16 v2, 0xb4

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    .line 104
    const/16 v1, 0x9

    const/16 v2, 0x352

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_list_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_list_dn:I

    move-object v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mBtnList:Lcom/ts/other/ParamButton;

    .line 106
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x7f

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_sjx:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 107
    const/16 v0, 0x7c

    const/16 v1, 0x12c

    invoke-virtual {p0, v9, v0, v1, v7}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mSta:Lcom/ts/other/CustomTextView;

    .line 110
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xb8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_music:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 111
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xf2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_disc:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 112
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x12b

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_artist:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 115
    const/16 v0, 0xb5

    const/16 v1, 0x258

    invoke-virtual {p0, v9, v0, v1, v7}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mSong:Lcom/ts/other/CustomTextView;

    .line 116
    const/16 v0, 0xef

    const/16 v1, 0x258

    invoke-virtual {p0, v9, v0, v1, v7}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mAlbum:Lcom/ts/other/CustomTextView;

    .line 117
    const/16 v0, 0x128

    const/16 v1, 0x258

    invoke-virtual {p0, v9, v0, v1, v7}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    .line 120
    const/16 v0, 0x19c

    const/16 v1, 0x21

    const/16 v2, 0xc8

    const/16 v3, 0x23

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    .line 121
    const/16 v0, 0x16a

    const/16 v1, 0x15f

    const/16 v2, 0x12c

    const/16 v3, 0x23

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->mTime:Lcom/ts/other/CustomTextView;

    .line 124
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 145
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 148
    const-string v0, "CanXbsygCDActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 131
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 132
    invoke-direct {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->ResetData(Z)V

    .line 133
    const/16 v0, 0xd

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 134
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygCDActivity;->Sleep(J)V

    .line 135
    const/16 v0, 0xe

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 136
    const-string v0, "CanXbsygCDActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 138
    return-void
.end method
