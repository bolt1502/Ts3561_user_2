.class public Lcom/ts/can/mzd/axela/CanMzd3CDActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzd3CDActivity.java"

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

.field public static final TAG:Ljava/lang/String; = "CanMzd3CDActivity"

.field protected static mOldSta:I


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

.field protected mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

.field protected mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mSong:Lcom/ts/other/CustomTextView;

.field protected mSta:Lcom/ts/other/CustomTextView;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

.field protected mStartCount:I

.field protected mStrSta:[Ljava/lang/String;

.field protected mTime:Lcom/ts/other/CustomTextView;

.field protected mTrack:Lcom/ts/other/CustomTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mOldSta:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    .line 60
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    .line 61
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 65
    const-string v1, "\u65e0\u789f"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 66
    const-string v2, "\u6b63\u5728\u51fa\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 67
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 68
    const-string v2, "\u6b63\u5728\u5165\u789f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 69
    const-string v2, "\u8bfb\u53d6\u4e2d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 70
    const-string v2, "\u64ad\u653e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 71
    const-string v2, "\u6682\u505c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStrSta:[Ljava/lang/String;

    .line 76
    iput v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStartCount:I

    .line 26
    return-void
.end method

.method public static DealStaChange()V
    .locals 6

    .prologue
    const/16 v5, 0xf0

    const/4 v4, 0x0

    .line 340
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->AxelaGetCdSta()I

    move-result v0

    .line 341
    .local v0, "curSta":I
    sget v1, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mOldSta:I

    if-eq v0, v1, :cond_0

    .line 343
    const-string v1, "CanMzd3CDActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DealStaChange old = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mOldSta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cur = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sput v0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mOldSta:I

    .line 345
    sparse-switch v0, :sswitch_data_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 348
    :sswitch_0
    invoke-static {v4, v4}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    goto :goto_0

    .line 352
    :sswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->IsExdMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCamMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const-class v1, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;

    invoke-static {v1}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 366
    :sswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->IsExdMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-static {v5, v4}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget-object v2, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->AxelaGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;)V

    .line 152
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->Update:I

    .line 157
    invoke-virtual {p0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->UpdateInfo()V

    .line 159
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->CurSta:I

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStrSta:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 161
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    const-string v1, "\u5176\u4ed6\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->fgRdm:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 169
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->fgRpt:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->Update:I

    .line 178
    invoke-virtual {p0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->UpdateInfo()V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->Update:I

    .line 187
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mSong:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->Title:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mId3Data:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->Artist:[B

    invoke-static {v1}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->CheckOtherSta2Play()V

    .line 194
    return-void

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStrSta:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->CurSta:I

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
    .line 310
    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 311
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 314
    return-object v0
.end method

.method protected AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 258
    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 259
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 261
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 262
    return-object v0
.end method

.method protected AddTxtLt(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 249
    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 250
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 252
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 253
    return-object v0
.end method

.method protected CdCtrl(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(II)V

    .line 335
    return-void
.end method

.method protected CheckOtherSta2Play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-static {}, Lcom/ts/can/CanIF;->IsExdMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/16 v0, 0x10

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->AxelaGetCdSta()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 201
    iget v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStartCount:I

    .line 202
    iget v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStartCount:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 204
    iget v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStartCount:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 206
    const/16 v0, 0xf0

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->AxelaCDCtrl(II)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iput v2, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStartCount:I

    goto :goto_0
.end method

.method protected UpdateInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 218
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->CurSta:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;->CurSta:I

    if-ne v0, v1, :cond_2

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, "TRACK %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->CurTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->TotalHour:I

    if-lt v0, v4, :cond_1

    .line 227
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, "%02d:%02d:%02d / %02d:%02d:%02d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 228
    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->CurHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->CurMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->CurSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 229
    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->TotalHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->TotalMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->TotalSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 227
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, "%02d:%02d / %02d:%02d"

    new-array v2, v8, [Ljava/lang/Object;

    .line 234
    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->CurMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->CurSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 235
    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->TotalMin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;->TotalSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->ResetData(Z)V

    .line 323
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 271
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    :pswitch_0
    return-void

    .line 277
    :pswitch_1
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Prev()V

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Play()V

    goto :goto_0

    .line 285
    :pswitch_3
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Pause()V

    goto :goto_0

    .line 289
    :pswitch_4
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Next()V

    goto :goto_0

    .line 296
    :pswitch_5
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Rpt()V

    goto :goto_0

    .line 300
    :pswitch_6
    invoke-static {}, Lcom/ts/can/CanIF;->Mzd3Rdm()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x54

    const/16 v8, 0x2c

    const/16 v7, 0x2a

    const/16 v3, 0x194

    const/16 v6, 0x12c

    .line 82
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->setContentView(I)V

    .line 86
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 87
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 90
    const/4 v1, 0x2

    const/16 v2, 0x101

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_prv_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnPrev:Lcom/ts/other/ParamButton;

    .line 91
    const/4 v1, 0x3

    const/16 v2, 0x187

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_play_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnPlay:Lcom/ts/other/ParamButton;

    .line 92
    const/4 v1, 0x4

    const/16 v2, 0x20e

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_pause_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnPause:Lcom/ts/other/ParamButton;

    .line 93
    const/4 v1, 0x5

    const/16 v2, 0x294

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_next_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnNext:Lcom/ts/other/ParamButton;

    .line 96
    const/4 v1, 0x7

    const/16 v2, 0x2e

    const/16 v3, 0x19

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_cycle_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnRpt:Lcom/ts/other/ParamButton;

    .line 97
    const/16 v1, 0x8

    const/16 v2, 0xb4

    const/16 v3, 0x19

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_random_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mBtnRdm:Lcom/ts/other/ParamButton;

    .line 99
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x7f

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_sjx:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 100
    const/16 v0, 0x77

    invoke-virtual {p0, v9, v0, v6, v7}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mSta:Lcom/ts/other/CustomTextView;

    .line 103
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xb8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_music:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 104
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0xf2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jeep_ycsb_artist:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 108
    const/16 v0, 0xb0

    invoke-virtual {p0, v9, v0, v6, v7}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mSong:Lcom/ts/other/CustomTextView;

    .line 109
    const/16 v0, 0xea

    invoke-virtual {p0, v9, v0, v6, v7}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mArtist:Lcom/ts/other/CustomTextView;

    .line 113
    const/16 v0, 0x1c2

    const/16 v1, 0x17

    const/16 v2, 0xc8

    const/16 v3, 0x37

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddTxtLt(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    .line 114
    iget-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTrack:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 116
    const/16 v0, 0x16a

    const/16 v1, 0x155

    const/16 v2, 0x23

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->AddTxtCenter(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->mTime:Lcom/ts/other/CustomTextView;

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 137
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 139
    const/16 v0, 0x42

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 140
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->Sleep(J)V

    .line 141
    const/16 v0, 0x43

    invoke-static {v0, v2, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 143
    const-string v0, "CanMzd3CDActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/mzd/axela/CanMzd3CDActivity;->ResetData(Z)V

    .line 128
    const-string v0, "CanMzd3CDActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 130
    return-void
.end method
