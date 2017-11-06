.class public Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCrstourRadioActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final ITEM_AM:I = 0x6

.field public static final ITEM_BAND:I = 0x10

.field public static final ITEM_FM:I = 0x5

.field public static final ITEM_LIST:I = 0x8

.field public static final ITEM_LIST_MAX:I = 0x3e

.field public static final ITEM_LIST_MIN:I = 0x20

.field public static final ITEM_PSET:I = 0x7

.field public static final ITEM_PSET_MAX:I = 0x1c

.field public static final ITEM_PSET_MIN:I = 0x10

.field public static final ITEM_SCAN:I = 0x9

.field public static final ITEM_SEEK_DEC:I = 0x3

.field public static final ITEM_SEEK_INC:I = 0x4

.field public static final ITEM_STEP_DEC:I = 0x1

.field public static final ITEM_STEP_INC:I = 0x2

.field public static final ITEM_UPDATE:I = 0xa

.field public static final PAGE_LIST:I = 0x2

.field public static final PAGE_MAIN:I = 0x0

.field public static final PAGE_PSET:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanCrstourRadioActivity"

.field public static final mFreqNumArr:[I


# instance fields
.field private mBtnAm:Lcom/ts/other/ParamButton;

.field private mBtnBand:Lcom/ts/other/ParamButton;

.field private mBtnFm:Lcom/ts/other/ParamButton;

.field private mBtnFreqList:[Lcom/ts/other/ParamButton;

.field private mBtnFreqPset:[Lcom/ts/other/ParamButton;

.field private mBtnList:Lcom/ts/other/ParamButton;

.field private mBtnPreset:Lcom/ts/other/ParamButton;

.field private mBtnScan:Lcom/ts/other/ParamButton;

.field private mBtnSeekDec:Lcom/ts/other/ParamButton;

.field private mBtnSeekInc:Lcom/ts/other/ParamButton;

.field private mBtnStepDec:Lcom/ts/other/ParamButton;

.field private mBtnStepInc:Lcom/ts/other/ParamButton;

.field private mBtnUpdate:Lcom/ts/other/ParamButton;

.field private mCurBand:I

.field private mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

.field private mCurPage:I

.field private mImgBandDW:Lcom/ts/other/CustomImgView;

.field private mImgBandName:Lcom/ts/other/CustomImgView;

.field private mImgFreqBk:Lcom/ts/other/CustomImgView;

.field private mImgMainFreq:Lcom/ts/other/CustomImgView;

.field private mImgST:Lcom/ts/other/CustomImgView;

.field public mLastTick:J

.field private mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

.field private mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

.field private mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 61
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 62
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 63
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 64
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 65
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 66
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 67
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 68
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 69
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num9:I

    aput v2, v0, v1

    .line 58
    sput-object v0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mFreqNumArr:[I

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mLastTick:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    .line 99
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    .line 100
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    .line 101
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    .line 102
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    .line 103
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    .line 28
    return-void
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetRadCurFreq(Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;)V

    .line 533
    iget v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurPage:I

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_0
    return-void

    .line 536
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->UpdateMainFreq(Z)V

    goto :goto_0

    .line 540
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->UpdatePreset(Z)V

    goto :goto_0

    .line 544
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->UpdateList(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->QueryList()V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V
    .locals 2
    .param p1, "btn"    # Lcom/ts/other/ParamButton;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 284
    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p1, v1, v0}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 285
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 286
    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p1, p2}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 291
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 293
    return-void
.end method

.method private SetFreqTxtFmt(Lcom/ts/other/ParamButton;)V
    .locals 2
    .param p1, "btn"    # Lcom/ts/other/ParamButton;

    .prologue
    const/4 v1, 0x0

    .line 297
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p1, v1, v0}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 298
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 299
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 301
    return-void
.end method

.method private ShowPage(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 648
    if-nez p1, :cond_0

    move v1, v0

    .line 649
    .local v1, "bmain":Z
    :goto_0
    if-ne p1, v0, :cond_1

    move v2, v0

    .line 650
    .local v2, "bpset":Z
    :goto_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 651
    .local v0, "blist":Z
    :goto_2
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgFreqBk:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 652
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 653
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 654
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 655
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgST:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 656
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 657
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 658
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 659
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 662
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 663
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 664
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 665
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 668
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v5, v5

    if-lt v3, v5, :cond_3

    .line 674
    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    array-length v5, v5

    if-lt v3, v5, :cond_4

    .line 678
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 679
    iput p1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurPage:I

    .line 680
    invoke-direct {p0, v4}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ResetData(Z)V

    .line 681
    return-void

    .end local v0    # "blist":Z
    .end local v1    # "bmain":Z
    .end local v2    # "bpset":Z
    .end local v3    # "i":I
    :cond_0
    move v1, v4

    .line 648
    goto :goto_0

    .restart local v1    # "bmain":Z
    :cond_1
    move v2, v4

    .line 649
    goto :goto_1

    .restart local v2    # "bpset":Z
    :cond_2
    move v0, v4

    .line 650
    goto :goto_2

    .line 670
    .restart local v0    # "blist":Z
    .restart local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 676
    :cond_4
    iget-object v5, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 674
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private UpdateList(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 451
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-nez v1, :cond_5

    .line 456
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadListFm(Lcom/lgb/canmodule/CanDataInfo$AccordRadList;)V

    .line 457
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->UpdateOnce:I

    if-eqz v1, :cond_4

    .line 459
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Update:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-eq v1, v2, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    if-lt v0, v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    :goto_1
    if-lt v0, v10, :cond_3

    .line 527
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    iput v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    .line 528
    return-void

    .line 464
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 465
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Freq:[I

    aget v4, v4, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 476
    .end local v0    # "i":I
    :cond_4
    if-nez p1, :cond_1

    .line 478
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 490
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadListAm(Lcom/lgb/canmodule/CanDataInfo$AccordRadList;)V

    .line 491
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->UpdateOnce:I

    if-eqz v1, :cond_8

    .line 493
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Update:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-eq v1, v2, :cond_1

    .line 495
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    if-lt v0, v1, :cond_7

    .line 501
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    :goto_4
    if-ge v0, v10, :cond_1

    .line 503
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 497
    :cond_7
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 498
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Freq:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 509
    .end local v0    # "i":I
    :cond_8
    if-nez p1, :cond_1

    .line 511
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private UpdateMainFreq(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v0, :cond_2

    .line 326
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    const-string v0, "CanCrstourRadioActivity"

    const-string v1, "UpdateMainFreq"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    .line 330
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 331
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 332
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgST:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->STSta:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 333
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 344
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    iput v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    .line 346
    return-void

    .line 338
    :cond_2
    if-nez p1, :cond_1

    .line 340
    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->CrstourQuery(II)V

    goto :goto_0
.end method

.method private UpdatePreset(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x4

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 350
    if-nez p1, :cond_0

    .line 352
    invoke-static {v2, v8}, Lcom/lgb/canmodule/CanJni;->CrstourQuery(II)V

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v1, :cond_a

    .line 357
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-nez v1, :cond_5

    .line 361
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadPresetFm(Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;)V

    .line 362
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->UpdateOnce:I

    if-eqz v1, :cond_4

    .line 364
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    if-eqz v1, :cond_2

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    .line 367
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v10, :cond_3

    .line 374
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-gt v1, v10, :cond_2

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-lez v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 441
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    iput v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    .line 442
    return-void

    .line 370
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 371
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Freq:[I

    aget v4, v4, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_4
    if-nez p1, :cond_2

    .line 384
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 396
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadPresetAm(Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;)V

    .line 397
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->UpdateOnce:I

    if-eqz v1, :cond_9

    .line 399
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    if-eqz v1, :cond_2

    .line 401
    :cond_6
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    .line 402
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    .line 403
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v4, :cond_8

    .line 410
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-gt v1, v4, :cond_7

    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-lez v1, :cond_7

    .line 412
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 415
    :cond_7
    const/4 v0, 0x6

    :goto_4
    if-ge v0, v10, :cond_2

    .line 417
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 405
    :cond_8
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 406
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Freq:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 423
    .end local v0    # "i":I
    :cond_9
    if-nez p1, :cond_2

    .line 425
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 435
    .end local v0    # "i":I
    :cond_a
    if-nez p1, :cond_2

    .line 437
    invoke-static {v2, v8}, Lcom/lgb/canmodule/CanJni;->CrstourQuery(II)V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    return-object v0
.end method


# virtual methods
.method public QueryList()V
    .locals 6

    .prologue
    .line 561
    invoke-static {}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->GetTickCount()J

    move-result-wide v0

    .line 562
    .local v0, "curTick":J
    iget-wide v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mLastTick:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 564
    iput-wide v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mLastTick:J

    .line 567
    :cond_0
    return-void
.end method

.method public RadioCtrl(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 556
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->CrstourRadioCtrl(II)V

    .line 557
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ResetData(Z)V

    .line 689
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    iget v0, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mCurPage:I

    packed-switch v0, :pswitch_data_0

    .line 713
    :goto_0
    return-void

    .line 698
    :pswitch_0
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onBackPressed()V

    goto :goto_0

    .line 702
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 706
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 574
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 621
    :pswitch_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 623
    const/4 v1, 0x6

    add-int/lit8 v2, v0, -0x10

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 577
    :pswitch_1
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 581
    :pswitch_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 585
    :pswitch_3
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 589
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 593
    :pswitch_5
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 597
    :pswitch_6
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 601
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 605
    :pswitch_8
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 609
    :pswitch_9
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 613
    :pswitch_a
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 617
    :pswitch_b
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    goto :goto_0

    .line 625
    :cond_1
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3e

    if-gt v0, v1, :cond_0

    .line 627
    const/16 v1, 0xb

    add-int/lit8 v2, v0, -0x20

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    .line 628
    invoke-direct {p0, v3}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc2

    const/16 v8, 0x161

    const/16 v7, 0x87

    const/4 v6, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->setContentView(I)V

    .line 114
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 116
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x8a

    const/16 v3, 0xf3

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yg_radio_bg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgFreqBk:Lcom/ts/other/CustomImgView;

    .line 117
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1ea

    const/16 v3, 0x38

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yg_radio_st:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgST:Lcom/ts/other/CustomImgView;

    .line 119
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x12d

    invoke-virtual {v1, v2, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    .line 120
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_fm:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_am:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 122
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2b0

    invoke-virtual {v1, v2, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    .line 123
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_mhz:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_khz:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 125
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x182

    const/16 v3, 0x7d

    const/16 v4, 0x107

    const/16 v5, 0x61

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    .line 126
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    const/16 v2, -0x182

    invoke-virtual {v1, v2, v6}, Lcom/ts/other/CustomImgView;->setDrawDt(II)V

    .line 127
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    new-instance v2, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity$1;-><init>(Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 181
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xa8

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    .line 182
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_prev_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_prev_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 183
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x300

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    .line 188
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_down_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_down_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 189
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    .line 194
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vup_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vup_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 195
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x35d

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    .line 200
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vdn_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vdn_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 201
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    .line 205
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 206
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    invoke-direct {p0, v1, v6}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 209
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnBand:Lcom/ts/other/ParamButton;

    const-string v2, "BAND"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x11f

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    .line 231
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 232
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_pset:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 237
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x211

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    .line 238
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 239
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_list:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 244
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x303

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    .line 245
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 246
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 247
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_scan:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 250
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 263
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    .line 264
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x15c

    const/16 v3, 0x1c6

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    .line 275
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect04_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 276
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_update:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 280
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x6

    mul-int/lit16 v3, v3, 0xa5

    add-int/lit8 v3, v3, 0x18

    div-int/lit8 v4, v0, 0x6

    mul-int/lit8 v4, v4, 0x59

    add-int/lit8 v4, v4, 0x65

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 254
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 255
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 259
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 260
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetFreqTxtFmt(Lcom/ts/other/ParamButton;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x6

    mul-int/lit16 v3, v3, 0xa5

    add-int/lit8 v3, v3, 0x18

    div-int/lit8 v4, v0, 0x6

    mul-int/lit8 v4, v4, 0x59

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 267
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 268
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 271
    iget-object v1, p0, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->SetFreqTxtFmt(Lcom/ts/other/ParamButton;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 639
    .local v0, "id":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 641
    const/4 v1, 0x7

    add-int/lit8 v2, v0, -0x10

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->RadioCtrl(II)V

    .line 643
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 319
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 308
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 309
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/honda/crosstour/CanCrstourRadioActivity;->ShowPage(I)V

    .line 311
    const-string v0, "CanCrstourRadioActivity"

    const-string v1, "********************onResume**********************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method
