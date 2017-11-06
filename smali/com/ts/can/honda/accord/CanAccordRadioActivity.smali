.class public Lcom/ts/can/honda/accord/CanAccordRadioActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanAccordRadioActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final ITEM_AM:I = 0x6

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

.field public static final TAG:Ljava/lang/String; = "CanAccordRadioActivity"

.field public static final mFreqNumArr:[I


# instance fields
.field private mBtnAm:Lcom/ts/other/ParamButton;

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
    .line 58
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 61
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 62
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 63
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 64
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 65
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 66
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 67
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 68
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num9:I

    aput v2, v0, v1

    .line 57
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mLastTick:J

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    .line 97
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    .line 98
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    .line 99
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    .line 100
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    .line 101
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    .line 28
    return-void
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 520
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetRadCurFreq(Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;)V

    .line 521
    iget v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurPage:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 524
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->UpdateMainFreq(Z)V

    goto :goto_0

    .line 528
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->UpdatePreset(Z)V

    goto :goto_0

    .line 532
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->UpdateList(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->QueryList()V

    goto :goto_0

    .line 521
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

    .line 273
    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p1, v1, v0}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 274
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 275
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p1, p2}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 280
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 282
    return-void
.end method

.method private SetFreqTxtFmt(Lcom/ts/other/ParamButton;)V
    .locals 2
    .param p1, "btn"    # Lcom/ts/other/ParamButton;

    .prologue
    const/4 v1, 0x0

    .line 286
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p1, v1, v0}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 287
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 288
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 290
    return-void
.end method

.method private ShowPage(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 632
    if-nez p1, :cond_0

    move v1, v0

    .line 633
    .local v1, "bmain":Z
    :goto_0
    if-ne p1, v0, :cond_1

    move v2, v0

    .line 634
    .local v2, "bpset":Z
    :goto_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 635
    .local v0, "blist":Z
    :goto_2
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgFreqBk:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 636
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 637
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 638
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 639
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgST:Lcom/ts/other/CustomImgView;

    invoke-virtual {v5, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 640
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 641
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 642
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 643
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 644
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 645
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 646
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 647
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 648
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v1}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 651
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v5, v5

    if-lt v3, v5, :cond_3

    .line 657
    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    array-length v5, v5

    if-lt v3, v5, :cond_4

    .line 661
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 662
    iput p1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurPage:I

    .line 663
    invoke-direct {p0, v4}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ResetData(Z)V

    .line 664
    return-void

    .end local v0    # "blist":Z
    .end local v1    # "bmain":Z
    .end local v2    # "bpset":Z
    .end local v3    # "i":I
    :cond_0
    move v1, v4

    .line 632
    goto :goto_0

    .restart local v1    # "bmain":Z
    :cond_1
    move v2, v4

    .line 633
    goto :goto_1

    .restart local v2    # "bpset":Z
    :cond_2
    move v0, v4

    .line 634
    goto :goto_2

    .line 653
    .restart local v0    # "blist":Z
    .restart local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 651
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 659
    :cond_4
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 657
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private UpdateList(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const/16 v2, 0xd1

    const/16 v10, 0x1e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 434
    if-nez p1, :cond_0

    .line 436
    invoke-static {v2, v9}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v1, :cond_a

    .line 441
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-nez v1, :cond_6

    .line 444
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadListFm(Lcom/lgb/canmodule/CanDataInfo$AccordRadList;)V

    .line 445
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->UpdateOnce:I

    if-eqz v1, :cond_5

    .line 447
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Update:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-eq v1, v2, :cond_2

    .line 450
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    if-lt v0, v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    :goto_1
    if-lt v0, v10, :cond_4

    .line 515
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    iput v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    .line 516
    return-void

    .line 452
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 453
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

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

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_4
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    .end local v0    # "i":I
    :cond_5
    if-nez p1, :cond_2

    .line 466
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 478
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadListAm(Lcom/lgb/canmodule/CanDataInfo$AccordRadList;)V

    .line 479
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->UpdateOnce:I

    if-eqz v1, :cond_9

    .line 481
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Update:I

    if-nez v1, :cond_7

    iget v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-eq v1, v2, :cond_2

    .line 483
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    if-lt v0, v1, :cond_8

    .line 489
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Num:I

    :goto_5
    if-ge v0, v10, :cond_2

    .line 491
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 485
    :cond_8
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 486
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mListAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadList;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$AccordRadList;->Freq:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 497
    .end local v0    # "i":I
    :cond_9
    if-nez p1, :cond_2

    .line 499
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 509
    .end local v0    # "i":I
    :cond_a
    if-nez p1, :cond_2

    .line 511
    invoke-static {v2, v9}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    goto/16 :goto_2
.end method

.method private UpdateMainFreq(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v0, :cond_2

    .line 314
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    const-string v0, "CanAccordRadioActivity"

    const-string v1, "UpdateMainFreq"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    .line 318
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 319
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 320
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgST:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->STSta:I

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 321
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    iput v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    .line 334
    return-void

    .line 326
    :cond_2
    if-nez p1, :cond_1

    .line 328
    const/16 v0, 0xd1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    goto :goto_0
.end method

.method private UpdatePreset(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x2

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    if-nez p1, :cond_0

    .line 340
    const/16 v1, 0xd1

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v1, :cond_a

    .line 345
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-nez v1, :cond_5

    .line 349
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadPresetFm(Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;)V

    .line 350
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->UpdateOnce:I

    if-eqz v1, :cond_4

    .line 352
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    if-eqz v1, :cond_2

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    .line 355
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v10, :cond_3

    .line 362
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-gt v1, v10, :cond_2

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-lez v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 429
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    iput v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    .line 430
    return-void

    .line 358
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 359
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const-string v2, "%.1f"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetFmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

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

    .line 360
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_4
    if-nez p1, :cond_2

    .line 372
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 384
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AccordGetRadPresetAm(Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;)V

    .line 385
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->UpdateOnce:I

    if-eqz v1, :cond_9

    .line 387
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurBand:I

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    if-eqz v1, :cond_2

    .line 389
    :cond_6
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Update:I

    .line 390
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iput v8, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Update:I

    .line 391
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v4, :cond_8

    .line 398
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-gt v1, v4, :cond_7

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    if-lez v1, :cond_7

    .line 400
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->MemNo:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 403
    :cond_7
    const/4 v0, 0x6

    :goto_4
    if-ge v0, v10, :cond_2

    .line 405
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 393
    :cond_8
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v9}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 394
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mPsetAmData:Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;

    iget-object v3, v3, Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;->Freq:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 411
    .end local v0    # "i":I
    :cond_9
    if-nez p1, :cond_2

    .line 413
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 423
    .end local v0    # "i":I
    :cond_a
    if-nez p1, :cond_2

    .line 425
    const/16 v1, 0xd1

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    return-object v0
.end method


# virtual methods
.method public AccordRadioCtrl(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 544
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->AccordRadioCtrl(II)V

    .line 545
    return-void
.end method

.method public QueryList()V
    .locals 6

    .prologue
    .line 549
    invoke-static {}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->GetTickCount()J

    move-result-wide v0

    .line 550
    .local v0, "curTick":J
    iget-wide v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mLastTick:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 552
    iput-wide v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mLastTick:J

    .line 553
    const/16 v2, 0xd1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    .line 555
    :cond_0
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ResetData(Z)V

    .line 672
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 678
    iget v0, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurPage:I

    packed-switch v0, :pswitch_data_0

    .line 696
    :goto_0
    return-void

    .line 681
    :pswitch_0
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onBackPressed()V

    goto :goto_0

    .line 685
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 689
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x38

    const/16 v5, 0x35

    const/16 v4, 0x30

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 562
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 605
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 607
    const/16 v1, 0x37

    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 565
    :pswitch_0
    invoke-virtual {p0, v5, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 569
    :pswitch_1
    invoke-virtual {p0, v5, v3}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 573
    :pswitch_2
    invoke-virtual {p0, v4, v3}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 577
    :pswitch_3
    invoke-virtual {p0, v4, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 581
    :pswitch_4
    invoke-virtual {p0, v6, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 585
    :pswitch_5
    invoke-virtual {p0, v6, v3}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 589
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 593
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 597
    :pswitch_8
    const/16 v1, 0x31

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 601
    :pswitch_9
    const/16 v1, 0x34

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    goto :goto_0

    .line 609
    :cond_1
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3e

    if-gt v0, v1, :cond_0

    .line 611
    const/16 v1, 0x36

    add-int/lit8 v2, v0, -0x20

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    .line 612
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ShowPage(I)V

    goto :goto_0

    .line 562
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
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc2

    const/16 v8, 0x87

    const/16 v7, 0x161

    const/4 v6, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->setContentView(I)V

    .line 112
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 114
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x8a

    const/16 v3, 0xf3

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yg_radio_bg:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgFreqBk:Lcom/ts/other/CustomImgView;

    .line 115
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1ea

    const/16 v3, 0x38

    sget v4, Lcom/ts/MainUI/R$drawable;->can_yg_radio_st:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgST:Lcom/ts/other/CustomImgView;

    .line 117
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x12d

    invoke-virtual {v1, v2, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    .line 118
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandName:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_fm:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_am:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 120
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2b0

    invoke-virtual {v1, v2, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    .line 121
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_mhz:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_khz:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 123
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x182

    const/16 v3, 0x7d

    const/16 v4, 0x107

    const/16 v5, 0x61

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    .line 124
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    const/16 v2, -0x182

    invoke-virtual {v1, v2, v6}, Lcom/ts/other/CustomImgView;->setDrawDt(II)V

    .line 125
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    new-instance v2, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;-><init>(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 179
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xa8

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    .line 180
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_prev_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_prev_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 181
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x300

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    .line 186
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_down_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_down_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 187
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnStepInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    .line 192
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vup_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vup_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x35d

    invoke-virtual {v1, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    .line 198
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vdn_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_vdn_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    .line 204
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 205
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    invoke-direct {p0, v1, v6}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 208
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    const-string v2, "FM"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xe3

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    .line 212
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 213
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    invoke-direct {p0, v1, v6}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 216
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    const-string v2, "AM"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x196

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    .line 220
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect02_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 221
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnPreset:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_pset:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 226
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x27e

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    .line 227
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 228
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnList:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_list:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 233
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x332

    invoke-virtual {v1, v2, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    .line 234
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect01_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 235
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnScan:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_scan:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 239
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 252
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    .line 253
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x15c

    const/16 v3, 0x1c6

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    .line 264
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect04_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 265
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$string;->can_rad_update:I

    invoke-direct {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetCtrlTxtFmt(Lcom/ts/other/ParamButton;I)V

    .line 269
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x6

    mul-int/lit16 v3, v3, 0xa5

    add-int/lit8 v3, v3, 0x18

    div-int/lit8 v4, v0, 0x6

    mul-int/lit8 v4, v4, 0x59

    add-int/lit8 v4, v4, 0x65

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 243
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 244
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 248
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqPset:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetFreqTxtFmt(Lcom/ts/other/ParamButton;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x6

    mul-int/lit16 v3, v3, 0xa5

    add-int/lit8 v3, v3, 0x18

    div-int/lit8 v4, v0, 0x6

    mul-int/lit8 v4, v4, 0x59

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 256
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_rect03_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 257
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 260
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mBtnFreqList:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->SetFreqTxtFmt(Lcom/ts/other/ParamButton;)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 623
    .local v0, "id":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 625
    const/16 v1, 0x32

    add-int/lit8 v2, v0, -0x10

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->AccordRadioCtrl(II)V

    .line 627
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 307
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 308
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 297
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 298
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->ShowPage(I)V

    .line 300
    return-void
.end method
