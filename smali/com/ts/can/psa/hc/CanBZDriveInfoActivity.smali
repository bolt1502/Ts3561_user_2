.class public Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBZDriveInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_DEL_LOG:I = 0x3

.field public static final ITEM_PAGE_0:I = 0x0

.field public static final ITEM_PAGE_1:I = 0x1

.field public static final ITEM_PAGE_2:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanBZDriveInfoActivity"

.field private static mThis:Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;


# instance fields
.field private mBtnDelLog:Lcom/ts/other/ParamButton;

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
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    .line 40
    new-array v0, v1, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    .line 42
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    .line 43
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    .line 44
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    .line 46
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    .line 47
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    .line 48
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    .line 50
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    .line 51
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    .line 52
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    .line 59
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    .line 60
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    .line 61
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    .line 62
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    .line 63
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    .line 25
    return-void

    .line 57
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
    .line 463
    sget-object v0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mThis:Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;

    if-nez v0, :cond_0

    .line 465
    const-class v0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 466
    const-string v0, "CanBZDriveInfoActivity"

    const-string v1, "Show CanBZDriveInfoActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    sget-object v0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mThis:Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;

    invoke-virtual {v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->PageInc()V

    .line 471
    const-string v0, "CanBZDriveInfoActivity"

    const-string v1, "PageInc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v3, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v4, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iget-object v5, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTimerData:Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lgb/canmodule/CanJni;->BZGetPage(Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;)V

    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, "dw":I
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mDWData:Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;

    iput v7, v1, Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;->FuelDW:I

    .line 298
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    .line 303
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v6

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetConsumpVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage0Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    .line 316
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v6

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetConsumpVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage1Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetSpeedVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    invoke-static {v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iput v6, v1, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Update:I

    .line 329
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v8

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v6

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetConsumpVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mPage2Data:Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;->Data:[I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->GetSpeedVal(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_5
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
    .line 126
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 127
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 130
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
    .line 136
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 138
    .local v0, "text":Lcom/ts/other/CustomTextView;
    invoke-virtual {v0, p5}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 139
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 140
    return-object v0
.end method

.method protected GetConsumpDW(I)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 175
    const-string v0, ""

    .line 176
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    const-string v0, "KM/L"

    .line 180
    goto :goto_0

    .line 183
    :pswitch_1
    const-string v0, "L/100"

    .line 184
    goto :goto_0

    .line 187
    :pswitch_2
    const-string v0, "MPG"

    .line 188
    goto :goto_0

    .line 176
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
    .line 145
    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    .line 147
    const-string v1, "--.-"

    .line 170
    :goto_0
    return-object v1

    .line 150
    :cond_0
    int-to-float v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v1, v2

    .line 151
    .local v0, "fval":F
    if-eqz p1, :cond_1

    .line 153
    packed-switch p2, :pswitch_data_0

    .line 170
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

    .line 156
    :pswitch_1
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    .line 157
    goto :goto_1

    .line 163
    :pswitch_2
    const v1, 0x438d2ccd    # 282.35f

    div-float v0, v1, v0

    .line 164
    goto :goto_1

    .line 153
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
    .line 228
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 230
    const-string v0, "MI"

    .line 233
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
    .line 214
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 216
    const-string v0, "----"

    .line 223
    :goto_0
    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 221
    int-to-float v0, p1

    const v1, 0x3f1f121b

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 223
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
    .line 238
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 240
    const-string v0, "MPH"

    .line 243
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
    .line 199
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 201
    const-string v0, "---"

    .line 209
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 206
    int-to-float v0, p1

    const v1, 0x3f1f121b

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 209
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
    .line 457
    iget v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ShowPage(I)V

    .line 458
    return-void
.end method

.method public ShowPage(I)V
    .locals 7
    .param p1, "page"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 416
    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 421
    :cond_0
    iput p1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    .line 422
    const-string v1, "CanBZDriveInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ShowPage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnDelLog:Lcom/ts/other/ParamButton;

    iget v4, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-lez v4, :cond_c

    :goto_2
    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 452
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->BZSetPage(I)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 427
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 428
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 429
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-nez v1, :cond_5

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 431
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 432
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 433
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 435
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, v6, :cond_9

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 436
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, v6, :cond_a

    move v1, v2

    :goto_b
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 437
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v1, v6, :cond_b

    move v1, v2

    :goto_c
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 425
    goto :goto_3

    :cond_3
    move v1, v3

    .line 427
    goto :goto_4

    :cond_4
    move v1, v3

    .line 428
    goto :goto_5

    :cond_5
    move v1, v3

    .line 429
    goto :goto_6

    :cond_6
    move v1, v3

    .line 431
    goto :goto_7

    :cond_7
    move v1, v3

    .line 432
    goto :goto_8

    :cond_8
    move v1, v3

    .line 433
    goto :goto_9

    :cond_9
    move v1, v3

    .line 435
    goto :goto_a

    :cond_a
    move v1, v3

    .line 436
    goto :goto_b

    :cond_b
    move v1, v3

    .line 437
    goto :goto_c

    :cond_c
    move v2, v3

    .line 440
    goto/16 :goto_2
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ResetData(Z)V

    .line 405
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 412
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 368
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 371
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ShowPage(I)V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ShowPage(I)V

    goto :goto_0

    .line 379
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ShowPage(I)V

    goto :goto_0

    .line 383
    :pswitch_3
    iget v1, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mCurPage:I

    if-ne v2, v1, :cond_0

    .line 385
    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->BZClearPage(I)V

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->BZClearPage(I)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x3c

    const/16 v11, 0xaa

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->setContentView(I)V

    .line 72
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v10, :cond_0

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mfgType408:Z

    .line 74
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 76
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x23

    const/16 v3, 0x11

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_bg:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 78
    iget-object v6, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x42

    const/16 v3, 0x29

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_car_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_psa_car_dn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    aput-object v0, v6, v1

    .line 79
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    const/16 v4, 0x42

    const/16 v5, 0xcf

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_01_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_01_dn:I

    move-object v2, p0

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v9

    .line 80
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnLt:[Lcom/ts/other/ParamButton;

    const/16 v4, 0x42

    const/16 v5, 0x172

    sget v6, Lcom/ts/MainUI/R$drawable;->can_psa_02_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_psa_02_dn:I

    move-object v2, p0

    move v3, v10

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddBtn(IIIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v10

    .line 82
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x20f

    const/16 v3, 0x198

    const/16 v4, 0xcd

    const/16 v5, 0x4d

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnDelLog:Lcom/ts/other/ParamButton;

    .line 83
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mBtnDelLog:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_clear:I

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v2, v3, p0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->SetCommBtn(Lcom/ts/other/ParamButton;IILandroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x162

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_station:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x236

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_oil:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 87
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco0:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2ff

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_flags:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 89
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x163

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_radar:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x236

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_oil:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 91
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2ff

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_the:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 93
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x162

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_radar:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x236

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_oil:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 95
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mIvIco2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2ff

    sget v4, Lcom/ts/MainUI/R$drawable;->can_psa_icon_the:I

    invoke-virtual {v2, v3, v11, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v0, v10

    .line 97
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v0, 0x3

    if-lt v8, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v9

    const-string v2, "L/100"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v10

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v9

    const-string v2, "L/100"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v10

    const-string v2, "KM/H"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v1

    const-string v2, "KM"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v9

    const-string v2, "L/100"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, v10

    const-string v2, "KM/H"

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ShowPage(I)V

    .line 122
    return-void

    .end local v8    # "i":I
    :cond_0
    move v0, v1

    .line 72
    goto/16 :goto_0

    .line 99
    .restart local v8    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal0:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x10c

    const/16 v5, 0xac

    const/16 v7, 0x37

    move-object v2, p0

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 100
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW0:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x148

    const/16 v5, 0xac

    const/16 v7, 0x28

    move-object v2, p0

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 102
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal1:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x10c

    const/16 v5, 0xac

    const/16 v7, 0x37

    move-object v2, p0

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 103
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW1:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x148

    const/16 v5, 0xac

    const/16 v7, 0x28

    move-object v2, p0

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 105
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvVal2:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x10c

    const/16 v5, 0xac

    const/16 v7, 0x37

    move-object v2, p0

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 106
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mTvDW2:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mX:[I

    aget v3, v2, v8

    const/16 v4, 0x148

    const/16 v5, 0xac

    const/16 v7, 0x28

    move-object v2, p0

    move v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->AddText(IIIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v0, v8

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 263
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 264
    sput-object v1, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mThis:Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;

    .line 265
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 252
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->ResetData(Z)V

    .line 255
    sput-object p0, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;->mThis:Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;

    .line 256
    return-void
.end method
