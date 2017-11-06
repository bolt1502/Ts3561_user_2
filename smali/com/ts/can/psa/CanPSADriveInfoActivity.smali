.class public Lcom/ts/can/psa/CanPSADriveInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanPSADriveInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanNumInuptDlg$onInputOK;


# static fields
.field public static final ITEM_DEL_LOG:I = 0x3

.field public static final ITEM_GO_HOME:I = 0x4

.field public static final ITEM_PAGE_0:I = 0x0

.field public static final ITEM_PAGE_1:I = 0x1

.field public static final ITEM_PAGE_2:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanPSADriveInfoActivity"

.field private static mThis:Lcom/ts/can/psa/CanPSADriveInfoActivity;


# instance fields
.field private mBtnDelLog:Lcom/ts/other/ParamButton;

.field private mBtnGohome:Lcom/ts/other/ParamButton;

.field private mBtnLt:[Lcom/ts/other/ParamButton;

.field private mCurPage:I

.field private mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

.field private mIvIco0:[Lcom/ts/other/CustomImgView;

.field private mIvIco1:[Lcom/ts/other/CustomImgView;

.field private mIvIco2:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

.field private mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

.field private mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

.field private mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

.field private mTvDW0:[Lcom/ts/other/CustomTextView;

.field private mTvDW1:[Lcom/ts/other/CustomTextView;

.field private mTvDW2:[Lcom/ts/other/CustomTextView;

.field private mTvVal0:[Lcom/ts/other/CustomTextView;

.field private mTvVal1:[Lcom/ts/other/CustomTextView;

.field private mTvVal2:[Lcom/ts/other/CustomTextView;

.field private mX:[I

.field private mfgType408:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    .line 42
    new-array v0, v1, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    .line 45
    new-array v0, v2, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    .line 46
    new-array v0, v2, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    .line 47
    new-array v0, v2, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    .line 49
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    .line 50
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    .line 51
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    .line 53
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    .line 54
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    .line 55
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    .line 62
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    .line 63
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    .line 64
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    .line 65
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    .line 66
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    .line 27
    return-void

    .line 60
    nop

    :array_0
    .array-data 4
        0x162
        0x236
        0x2ff
    .end array-data
.end method

.method public static DealPage()V
    .locals 2

    .prologue
    .line 466
    sget-object v0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mThis:Lcom/ts/can/psa/CanPSADriveInfoActivity;

    if-nez v0, :cond_0

    .line 468
    const-class v0, Lcom/ts/can/psa/CanPSADriveInfoActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 469
    const-string v0, "CanPSADriveInfoActivity"

    const-string v1, "Show CanPSADriveInfoActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    sget-object v0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mThis:Lcom/ts/can/psa/CanPSADriveInfoActivity;

    invoke-virtual {v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->PageInc()V

    .line 474
    const-string v0, "CanPSADriveInfoActivity"

    const-string v1, "PageInc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const/16 v10, 0x3b

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v3, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget-object v5, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lgb/canmodule/CanJni;->PSAGetPage(Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;)V

    .line 281
    const/4 v0, 0x1

    .line 282
    .local v0, "dw":I
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    .line 285
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    const/4 p1, 0x0

    .line 288
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->Update:I

    .line 290
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetConsumpDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetConsumpDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetSpeedDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetConsumpDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetSpeedDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    .line 309
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v6

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetConsumpVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    .line 321
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v6

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetConsumpVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetSpeedVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_5
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 330
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 332
    :cond_6
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    .line 334
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v6

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetConsumpVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->GetSpeedVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_7
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 344
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 346
    :cond_8
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Update:I

    .line 347
    const/16 v1, 0xff

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Hour:I

    if-eq v1, v2, :cond_9

    .line 348
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Min:I

    if-gt v1, v10, :cond_9

    .line 349
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Sec:I

    if-le v1, v10, :cond_b

    .line 351
    :cond_9
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v9

    const-string v2, "--"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_a
    :goto_0
    return-void

    .line 355
    :cond_b
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v9

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;->Sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

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
    .line 135
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 136
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 139
    return-object v0
.end method

.method protected AddText(IIIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "size"    # I

    .prologue
    .line 145
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 147
    .local v0, "text":Lcom/ts/other/CustomTextView;
    invoke-virtual {v0, p5}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 148
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 149
    return-object v0
.end method

.method protected GetConsumpDW(I)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 184
    const-string v0, ""

    .line 185
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "KM/L"

    .line 189
    goto :goto_0

    .line 192
    :pswitch_1
    const-string v0, "L/100"

    .line 193
    goto :goto_0

    .line 196
    :pswitch_2
    const-string v0, "MPG"

    .line 197
    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected GetConsumpVal(II)Ljava/lang/String;
    .locals 5
    .param p1, "val"    # I
    .param p2, "dw"    # I

    .prologue
    .line 154
    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    .line 156
    const-string v1, "--.-"

    .line 179
    :goto_0
    return-object v1

    .line 159
    :cond_0
    int-to-float v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v1, v2

    .line 160
    .local v0, "fval":F
    if-eqz p1, :cond_1

    .line 162
    packed-switch p2, :pswitch_data_0

    .line 179
    :cond_1
    :goto_1
    :pswitch_0
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :pswitch_1
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    .line 166
    goto :goto_1

    .line 172
    :pswitch_2
    const v1, 0x438d2ccd    # 282.35f

    div-float v0, v1, v0

    .line 173
    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected GetRangeDW(I)Ljava/lang/String;
    .locals 1
    .param p1, "dw"    # I

    .prologue
    .line 237
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 239
    const-string v0, "MI"

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "KM"

    goto :goto_0
.end method

.method protected GetRangeVal(II)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I
    .param p2, "dw"    # I

    .prologue
    .line 223
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 225
    const-string v0, "----"

    .line 232
    :goto_0
    return-object v0

    .line 228
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 230
    int-to-float v0, p1

    const v1, 0x3f1f121b

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected GetSpeedDW(I)Ljava/lang/String;
    .locals 1
    .param p1, "dw"    # I

    .prologue
    .line 247
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 249
    const-string v0, "MPH"

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "KM/H"

    goto :goto_0
.end method

.method protected GetSpeedVal(II)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I
    .param p2, "dw"    # I

    .prologue
    .line 208
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 210
    const-string v0, "---"

    .line 218
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 215
    int-to-float v0, p1

    const v1, 0x3f1f121b

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public PageInc()V
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ShowPage(I)V

    .line 461
    return-void
.end method

.method public ShowPage(I)V
    .locals 8
    .param p1, "page"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, p1, :cond_0

    .line 456
    :goto_0
    return-void

    .line 429
    :cond_0
    iput p1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    .line 430
    const-string v1, "CanPSADriveInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ShowPage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v6, :cond_1

    .line 448
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v6

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_c

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 449
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v6

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 450
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v6

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_e

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 451
    iget-object v4, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnGohome:Lcom/ts/other/ParamButton;

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 453
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnDelLog:Lcom/ts/other/ParamButton;

    iget v4, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-lez v4, :cond_10

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 455
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->PSASetPage(I)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 435
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 436
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 437
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_5

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 439
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_b
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 440
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_c
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 441
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_d
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 443
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, v7, :cond_9

    move v1, v2

    :goto_e
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 444
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, v7, :cond_a

    move v1, v2

    :goto_f
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 445
    iget-object v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v1, v7, :cond_b

    move v1, v2

    :goto_10
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 433
    goto :goto_7

    :cond_3
    move v1, v3

    .line 435
    goto :goto_8

    :cond_4
    move v1, v3

    .line 436
    goto :goto_9

    :cond_5
    move v1, v3

    .line 437
    goto :goto_a

    :cond_6
    move v1, v3

    .line 439
    goto :goto_b

    :cond_7
    move v1, v3

    .line 440
    goto :goto_c

    :cond_8
    move v1, v3

    .line 441
    goto :goto_d

    :cond_9
    move v1, v3

    .line 443
    goto :goto_e

    :cond_a
    move v1, v3

    .line 444
    goto :goto_f

    :cond_b
    move v1, v3

    .line 445
    goto :goto_10

    :cond_c
    move v1, v3

    .line 448
    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 449
    goto/16 :goto_3

    :cond_e
    move v1, v3

    .line 450
    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 451
    goto/16 :goto_5

    :cond_10
    move v2, v3

    .line 453
    goto/16 :goto_6
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ResetData(Z)V

    .line 413
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 420
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 372
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    return-void

    .line 375
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ShowPage(I)V

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ShowPage(I)V

    goto :goto_0

    .line 383
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ShowPage(I)V

    goto :goto_0

    .line 387
    :pswitch_3
    iget v1, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mCurPage:I

    if-ne v2, v1, :cond_0

    .line 389
    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->PSAClearPage(I)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->PSAClearPage(I)V

    goto :goto_0

    .line 398
    :pswitch_4
    new-instance v1, Lcom/ts/canview/CanNumInuptDlg;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0xac

    const/16 v12, 0x3c

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->setContentView(I)V

    .line 75
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v11, :cond_0

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mfgType408:Z

    .line 77
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 79
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x23

    const/16 v3, 0x11

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_bg:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 81
    iget-object v6, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x42

    const/16 v3, 0x29

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_car_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_car_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v1

    .line 82
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    const/16 v4, 0x42

    const/16 v5, 0xcf

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_01_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_01_dn:I

    move-object v2, p0

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v9

    .line 83
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    const/16 v4, 0x42

    const/16 v5, 0x172

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_02_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_02_dn:I

    move-object v2, p0

    move v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v11

    .line 85
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x20f

    const/16 v3, 0x198

    const/16 v4, 0xcd

    const/16 v5, 0x4d

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnDelLog:Lcom/ts/other/ParamButton;

    .line 86
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnDelLog:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_clear:I

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v2, v3, p0}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->SetCommBtn(Lcom/ts/other/ParamButton;IILandroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x162

    const/16 v4, 0x46

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_station:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x236

    const/16 v4, 0x46

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_oil:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 90
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2ff

    const/16 v4, 0x46

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_flags:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v11

    .line 91
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x162

    const/16 v5, 0x154

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_icon_all:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v0, v2

    .line 93
    const/4 v3, 0x4

    const/16 v4, 0x370

    const/16 v5, 0x46

    sget v6, Lcom/ts/MainUI/R$drawable;->can_golf_bel_set_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_golf_bel_set_dn:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mBtnGohome:Lcom/ts/other/ParamButton;

    .line 95
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x163

    const/16 v4, 0xaa

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_radar:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x236

    const/16 v4, 0xaa

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_oil:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 97
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2ff

    const/16 v4, 0xaa

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_the:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v11

    .line 99
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x162

    const/16 v4, 0xaa

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_radar:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x236

    const/16 v4, 0xaa

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_oil:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 101
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2ff

    const/16 v4, 0xaa

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_icon_the:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v11

    .line 103
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v0, 0x3

    if-lt v8, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    const/4 v10, 0x3

    const/16 v3, 0x162

    const/16 v4, 0x1b6

    const/16 v7, 0x37

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 116
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    const/4 v10, 0x3

    const/16 v3, 0x162

    const/16 v4, 0x1f2

    const/16 v7, 0x28

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 119
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v9

    const-string v2, "L/100"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v11

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v9

    const-string v2, "L/100"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v11

    const-string v2, "KM/H"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v9

    const-string v2, "L/100"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v11

    const-string v2, "KM/H"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ShowPage(I)V

    .line 131
    return-void

    .end local v8    # "i":I
    :cond_0
    move v0, v1

    .line 75
    goto/16 :goto_0

    .line 105
    .restart local v8    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0xa8

    const/16 v7, 0x37

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 106
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0xe4

    const/16 v7, 0x28

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 108
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x10c

    const/16 v7, 0x37

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 109
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x148

    const/16 v7, 0x28

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 111
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x10c

    const/16 v7, 0x37

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 112
    iget-object v0, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x148

    const/16 v7, 0x28

    move-object v2, p0

    move v5, v13

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 103
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public onOK(Ljava/lang/String;II)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "id"    # I

    .prologue
    .line 482
    const/16 v0, 0xbb8

    if-le p2, v0, :cond_0

    .line 484
    const/16 p2, 0xbb8

    .line 486
    :cond_0
    invoke-static {p2}, Lcom/lgb/canmodule/CanJni;->PSASetDis(I)V

    .line 487
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 272
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 273
    sput-object v1, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mThis:Lcom/ts/can/psa/CanPSADriveInfoActivity;

    .line 274
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 261
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 262
    const/16 v0, 0x38

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 263
    invoke-direct {p0, v1}, Lcom/ts/can/psa/CanPSADriveInfoActivity;->ResetData(Z)V

    .line 264
    sput-object p0, Lcom/ts/can/psa/CanPSADriveInfoActivity;->mThis:Lcom/ts/can/psa/CanPSADriveInfoActivity;

    .line 265
    return-void
.end method
