.class public Lcom/ts/can/CanGolfVehicleStatusActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfVehicleStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BTN_REPORTS:I = 0x1

.field public static final BTN_START_STOP:I = 0x2

.field public static final BTN_TOP_LEFT:I = 0x3

.field public static final BTN_TOP_RIGHT:I = 0x4

.field public static final BTN_TPMS_SET:I = 0x5

.field public static final BTN_TYRES_CHECK:I = 0x6

.field protected static final TAG:Ljava/lang/String; = "CanGolfVehicleStatusActivity"


# instance fields
.field protected mBtnReports:Lcom/ts/other/ParamButton;

.field protected mBtnStartStop:Lcom/ts/other/ParamButton;

.field protected mBtnTopLeft:Lcom/ts/other/ParamButton;

.field protected mBtnTopRight:Lcom/ts/other/ParamButton;

.field protected mBtnTpmsSet:Lcom/ts/other/ParamButton;

.field private mBtnTyresStatus:Lcom/ts/other/ParamButton;

.field protected mCenterTitle:Landroid/widget/TextView;

.field private mCurrentPage:I

.field protected mImgGou:Lcom/ts/other/CustomImgView;

.field protected mImgStaCar:Lcom/ts/other/CustomImgView;

.field protected mImgTpmsCar:Lcom/ts/other/CustomImgView;

.field private mImgTyresCar:Lcom/ts/other/CustomImgView;

.field private mIvTyres:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPageCount:I

.field private mRealTyres:[Landroid/widget/TextView;

.field private mReferenceTyres:[Landroid/widget/TextView;

.field private mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

.field private mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

.field protected mTpmsTip:[Landroid/widget/TextView;

.field private mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

.field protected mTvNoReports:Landroid/widget/TextView;

.field protected mTvOneReport:Landroid/widget/TextView;

.field private mTyresArray:[Ljava/lang/String;

.field private mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

.field private mTyresUnit:Landroid/widget/TextView;

.field private mTyresWarm:Landroid/widget/TextView;

.field private mTyresWarnArray:[Ljava/lang/String;

.field private mUnits:[I

.field protected mbTPMSPage:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    .line 68
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    .line 69
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    .line 70
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    .line 72
    iput v2, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_bar:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$string;->can_pressure_psi:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$string;->can_pressure_kpa:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mUnits:[I

    .line 28
    return-void
.end method

.method private PageSwitch(Z)V
    .locals 2
    .param p1, "isNext"    # Z

    .prologue
    .line 492
    if-eqz p1, :cond_1

    .line 493
    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    .line 494
    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    iget v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mPageCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    :goto_0
    iput v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    .line 500
    :goto_1
    invoke-direct {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->ShowPage()V

    .line 501
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :cond_1
    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    .line 497
    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mPageCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    goto :goto_2
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 273
    iget v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    if-ne v3, v8, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    if-ne v3, v5, :cond_d

    .line 279
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->TeramontGetTpmsData(Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;)V

    .line 280
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->GolfGetTyres(Lcom/lgb/canmodule/CanDataInfo$GolfTyres;)V

    .line 281
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->TeramontGetTpmsWarn(Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;)V

    .line 283
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Update:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    :cond_2
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Update:I

    .line 287
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v1, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Zjstyjc:I

    .line 288
    .local v1, "tyres":I
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 289
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .end local v1    # "tyres":I
    :cond_3
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 295
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->Update:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    :cond_4
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->Update:I

    .line 299
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    iget v2, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->Dw:I

    .line 300
    .local v2, "unit":I
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mUnits:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 301
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresUnit:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mUnits:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->RealVal:[I

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->RefVal:[I

    invoke-direct {p0, v2, v3, v4}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setTyresValues(I[I[I)V

    .line 307
    .end local v2    # "unit":I
    :cond_5
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 309
    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->Update:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 311
    :cond_6
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->Update:I

    .line 312
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->FlSta:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 314
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 320
    :goto_1
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->FrSta:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 322
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 329
    :goto_2
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->RlSta:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 331
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 338
    :goto_3
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->RrSta:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 340
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 347
    :goto_4
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->WarnType:I

    if-nez v3, :cond_c

    .line 349
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarnArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->WarnType:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    :cond_7
    :goto_5
    if-nez p1, :cond_0

    .line 362
    const/16 v3, 0x40

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 363
    const/16 v3, 0x66

    invoke-static {v3, v7}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 364
    const/16 v3, 0x68

    invoke-static {v3, v7}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    goto/16 :goto_0

    .line 318
    :cond_8
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_1

    .line 326
    :cond_9
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_2

    .line 335
    :cond_a
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_3

    .line 344
    :cond_b
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_4

    .line 354
    :cond_c
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarnArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsWarn:Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;->WarnType:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 371
    :cond_d
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->GolfGetReports(Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;)V

    .line 372
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 374
    if-eqz p1, :cond_e

    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Update:I

    invoke-static {v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    :cond_e
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v7}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 377
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgGou:Lcom/ts/other/CustomImgView;

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 378
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v7}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 379
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v7}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 381
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iput v7, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Update:I

    .line 382
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgStaCar:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Num:I

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 383
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Num:I

    if-nez v3, :cond_f

    .line 385
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgGou:Lcom/ts/other/CustomImgView;

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 386
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v8}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 388
    :cond_f
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Num:I

    if-ne v8, v3, :cond_11

    .line 390
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v8}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 391
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Reports:[I

    aget v0, v3, v7

    .line 392
    .local v0, "index":I
    sget-object v3, Lcom/ts/can/CanGolfReportsActivity;->mStrReports:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 394
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    sget-object v4, Lcom/ts/can/CanGolfReportsActivity;->mStrReports:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 398
    :cond_10
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 401
    .end local v0    # "index":I
    :cond_11
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Num:I

    if-le v3, v8, :cond_0

    .line 403
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 404
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    const-string v4, "%d %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReportData:Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;->Num:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/ts/MainUI/R$string;->can_gf_reports:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 411
    :cond_12
    if-nez p1, :cond_0

    .line 413
    const/16 v3, 0x61

    invoke-static {v3, v7}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    goto/16 :goto_0
.end method

.method private ShowPage()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 437
    iget v6, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    if-nez v6, :cond_2

    move v0, v4

    .line 438
    .local v0, "bStatusShow":Z
    :goto_0
    iget v6, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    if-ne v6, v4, :cond_3

    move v1, v4

    .line 439
    .local v1, "bTPMSShow":Z
    :goto_1
    iget v6, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v2, v4

    .line 441
    .local v2, "bTyresShow":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 442
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v6, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 449
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    .line 451
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v5}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 452
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgGou:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 453
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 454
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v5}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 462
    :goto_4
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v4, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 463
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgStaCar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, v0}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 465
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTpmsSet:Lcom/ts/other/ParamButton;

    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 466
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgTpmsCar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 468
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 469
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgTyresCar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v4, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 470
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v4, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 471
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 472
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    array-length v4, v4

    if-lt v3, v4, :cond_8

    .line 476
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x4

    if-lt v3, v4, :cond_9

    .line 480
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 484
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    array-length v4, v4

    if-lt v3, v4, :cond_a

    .line 488
    return-void

    .end local v0    # "bStatusShow":Z
    .end local v1    # "bTPMSShow":Z
    .end local v2    # "bTyresShow":Z
    .end local v3    # "i":I
    :cond_2
    move v0, v5

    .line 437
    goto :goto_0

    .restart local v0    # "bStatusShow":Z
    :cond_3
    move v1, v5

    .line 438
    goto :goto_1

    .restart local v1    # "bTPMSShow":Z
    :cond_4
    move v2, v5

    .line 439
    goto :goto_2

    .line 443
    .restart local v2    # "bTyresShow":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 444
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v6, Lcom/ts/MainUI/R$string;->can_tyres_tpms:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 445
    :cond_6
    if-eqz v2, :cond_0

    .line 446
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v6, Lcom/ts/MainUI/R$string;->can_teramont_zjstyjc:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 458
    :cond_7
    invoke-direct {p0, v5}, Lcom/ts/can/CanGolfVehicleStatusActivity;->ResetData(Z)V

    goto :goto_4

    .line 473
    .restart local v3    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 474
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 478
    :cond_9
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 486
    :cond_a
    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v1}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 484
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method private initTyresViews()V
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/high16 v9, 0x420c0000    # 35.0f

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 192
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1c

    const/16 v3, 0x190

    const/16 v4, 0x182

    const/16 v5, 0x50

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    .line 193
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_teramont_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_teramont_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 194
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v6, v6, v6}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 196
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v7}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v6, v2}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 198
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTyresStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-array v1, v8, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 211
    new-array v1, v8, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    .line 213
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2bc

    const/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresUnit:Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresUnit:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_golf_teramont_tyres_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresArray:[Ljava/lang/String;

    .line 229
    new-array v1, v8, [Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    .line 230
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v8, :cond_2

    .line 236
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x21c

    const/16 v3, 0x96

    const/16 v4, 0x15c

    const/16 v5, 0x10b

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgTyresCar:Lcom/ts/other/CustomImgView;

    .line 237
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgTyresCar:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_tyres_car:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 239
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2d

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarm:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_golf_teramont_tyres_warn_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresWarnArray:[Ljava/lang/String;

    .line 244
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    div-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0x12c

    add-int/lit16 v3, v3, 0x21c

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0xa0

    add-int/lit16 v4, v4, 0xa0

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 205
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    div-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0x12c

    add-int/lit16 v3, v3, 0x21c

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0xa0

    add-int/lit16 v4, v4, 0xd2

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 215
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "#a1a1a1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x67

    add-int/lit16 v3, v3, 0x28c

    div-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x87

    add-int/lit16 v4, v4, 0xc1

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 233
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_car_tyre_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_car_tyre_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private setTyresValues(I[I[I)V
    .locals 9
    .param p1, "unit"    # I
    .param p2, "realValues"    # [I
    .param p3, "referenceValues"    # [I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 432
    return-void

    .line 421
    :cond_0
    if-nez p1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p2, v0

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "(%.1f)"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p3, v0

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_1
    if-ne p1, v5, :cond_2

    .line 425
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p2, v0

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "(%.1f)"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p3, v0

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mRealTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p2, v0

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mReferenceTyres:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "(%.1f)"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p3, v0

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->ResetData(Z)V

    .line 560
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 508
    .local v6, "Id":I
    packed-switch v6, :pswitch_data_0

    .line 543
    :goto_0
    return-void

    .line 511
    :pswitch_0
    const-class v1, Lcom/ts/can/CanGolfReportsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfVehicleStatusActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 515
    :pswitch_1
    const-class v1, Lcom/ts/can/CanGolfStartStopActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfVehicleStatusActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 519
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ts/can/CanGolfVehicleStatusActivity;->PageSwitch(Z)V

    goto :goto_0

    .line 523
    :pswitch_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ts/can/CanGolfVehicleStatusActivity;->PageSwitch(Z)V

    goto :goto_0

    .line 527
    :pswitch_4
    new-instance v7, Lcom/ts/canview/CanItemMsgBox;

    sget v1, Lcom/ts/MainUI/R$string;->can_tpms_box:I

    invoke-direct {v7, v6, p0, v1, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 528
    .local v7, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 531
    .end local v7    # "msgbox":Lcom/ts/canview/CanItemMsgBox;
    :pswitch_5
    new-instance v0, Lcom/ts/canview/CanPopupDialog;

    iget-object v2, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTyresData:Lcom/lgb/canmodule/CanDataInfo$GolfTyres;

    iget v3, v1, Lcom/lgb/canmodule/CanDataInfo$GolfTyres;->Zjstyjc:I

    new-instance v5, Lcom/ts/can/CanGolfVehicleStatusActivity$1;

    invoke-direct {v5, p0}, Lcom/ts/can/CanGolfVehicleStatusActivity$1;-><init>(Lcom/ts/can/CanGolfVehicleStatusActivity;)V

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanPopupDialog;-><init>(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/ts/canview/CanPopupDialog$OnItemClick;)V

    .line 538
    .local v0, "dialog":Lcom/ts/canview/CanPopupDialog;
    goto :goto_0

    .line 508
    nop

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
    .locals 13
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x1e

    const/4 v11, 0x3

    const/16 v8, 0x4a

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v3, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v3}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setContentView(I)V

    .line 92
    new-instance v3, Lcom/ts/other/RelativeLayoutManager;

    sget v4, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v3, p0, v4}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 94
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x212

    const/16 v5, 0xf6

    const/16 v6, 0x1d6

    const/16 v7, 0xe8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgStaCar:Lcom/ts/other/CustomImgView;

    .line 95
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgStaCar:Lcom/ts/other/CustomImgView;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_car_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_car_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 97
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x32

    const/16 v5, 0xa2

    const/16 v6, 0x2d

    const/16 v7, 0x27

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgGou:Lcom/ts/other/CustomImgView;

    .line 98
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgGou:Lcom/ts/other/CustomImgView;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_check:I

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 100
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x64

    const/16 v5, 0xa1

    const/16 v6, 0x190

    const/16 v7, 0x28

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    .line 101
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    sget v4, Lcom/ts/MainUI/R$string;->can_no_entries:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x32

    const/16 v5, 0xa1

    const/16 v6, 0x3c0

    const/16 v7, 0x28

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    sget v4, Lcom/ts/MainUI/R$string;->can_no_entries:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x1c

    const/16 v5, 0x175

    const/16 v6, 0x160

    const/16 v7, 0x5a

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    .line 113
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_info_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_info_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 114
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$string;->can_start_stop:I

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 115
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v10}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 116
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    const/16 v4, 0x50

    invoke-virtual {v3, v4, v9, v9, v9}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 117
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$string;->can_start_stop:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    .local v1, "lenstr":I
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 124
    const/16 v1, 0xa

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnStartStop:Lcom/ts/other/ParamButton;

    const/16 v4, 0x12c

    div-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 128
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x106

    const/16 v5, 0x1f4

    invoke-virtual {v3, v4, v12, v5, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    .line 129
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v4, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x90

    const/16 v5, 0x1b7

    const/16 v6, 0x53

    invoke-virtual {v3, v12, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    .line 135
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_warning_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_warning_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 136
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 137
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v10}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 138
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    const/16 v4, 0x50

    invoke-virtual {v3, v4, v9, v9, v9}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 139
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4, v12, v8, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    .line 143
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_vup_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_vup_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 144
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x39a

    invoke-virtual {v3, v4, v12, v8, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    .line 148
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_vdn_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_vdn_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 149
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x1d

    const/16 v5, 0x18b

    const/16 v6, 0xd5

    const/16 v7, 0x5a

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTpmsSet:Lcom/ts/other/ParamButton;

    .line 153
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTpmsSet:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_warning_set_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_golf_warning_set_dn:I

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 154
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTpmsSet:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnTpmsSet:Lcom/ts/other/ParamButton;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 157
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x24a

    const/16 v5, 0xe2

    const/16 v6, 0x15c

    const/16 v7, 0x10b

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgTpmsCar:Lcom/ts/other/CustomImgView;

    .line 158
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgTpmsCar:Lcom/ts/other/CustomImgView;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_golf_car02:I

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 160
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    sget v4, Lcom/ts/MainUI/R$string;->can_tpms_tip1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget v4, Lcom/ts/MainUI/R$string;->can_tpms_tip2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget v4, Lcom/ts/MainUI/R$string;->can_tpms_tip3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    sget v4, Lcom/ts/MainUI/R$string;->can_tpms_tip4:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvNoReports:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v9}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 177
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mImgGou:Lcom/ts/other/CustomImgView;

    invoke-virtual {v3, v9}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 178
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mBtnReports:Lcom/ts/other/ParamButton;

    invoke-virtual {v3, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 179
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTvOneReport:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v9}, Lcom/ts/can/CanGolfVehicleStatusActivity;->setViewShow(Landroid/view/View;Z)V

    .line 181
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v11, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->initTyresViews()V

    .line 183
    iput v11, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mPageCount:I

    .line 187
    :goto_1
    return-void

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v5, 0x1d

    mul-int/lit8 v6, v0, 0x32

    add-int/lit16 v6, v6, 0x96

    const/16 v7, 0x190

    const/16 v8, 0x32

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v0

    .line 165
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mTpmsTip:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 185
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mPageCount:I

    goto :goto_1
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 549
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 551
    const/16 v0, 0x22

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 553
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 265
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 266
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mfgShowTpms:Z

    .line 267
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lcom/ts/can/CanFunc;->mfgShowTpms:Z

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x2

    iput v0, p0, Lcom/ts/can/CanGolfVehicleStatusActivity;->mCurrentPage:I

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/CanGolfVehicleStatusActivity;->ShowPage()V

    .line 255
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 256
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 258
    return-void
.end method
