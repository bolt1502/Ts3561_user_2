.class public Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;
.super Landroid/widget/BaseAdapter;
.source "FsRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FsRadioAdapter"
.end annotation


# static fields
.field private static final TOTAL_ITEM:I = 0x9


# instance fields
.field private adjClick:Landroid/view/View$OnClickListener;

.field private adjTextClick:Landroid/view/View$OnClickListener;

.field private mBtnAMBand:[Lcom/ts/other/ParamButton;

.field private mBtnFmBand:[Lcom/ts/other/ParamButton;

.field private mBtnFmSort:[Lcom/ts/other/ParamButton;

.field private mBtnOTSw:[Lcom/ts/other/ParamButton;

.field private mBtnRds:[Lcom/ts/other/ParamButton;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSWId:[I

.field private mStrIc:[Ljava/lang/String;

.field private mStrZone:[Ljava/lang/String;

.field private mTitle:[I

.field private mTvAmSense:Landroid/widget/TextView;

.field private mTvFmSense:Landroid/widget/TextView;

.field private mTvTitle:[Landroid/widget/TextView;

.field private mTvType:Landroid/widget/TextView;

.field private mTvTypeText:Landroid/widget/TextView;

.field private mTvZone:Landroid/widget/TextView;

.field private mTvZoneText:Landroid/widget/TextView;

.field private mView:[Landroid/view/View;

.field private onAmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

.field private onFmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

.field private swClick:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/ts/factoryset/FsRadioActivity;


# direct methods
.method public constructor <init>(Lcom/ts/factoryset/FsRadioActivity;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 110
    iput-object p1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->this$0:Lcom/ts/factoryset/FsRadioActivity;

    .line 109
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mView:[Landroid/view/View;

    .line 65
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvTitle:[Landroid/widget/TextView;

    .line 71
    new-array v0, v3, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmBand:[Lcom/ts/other/ParamButton;

    .line 72
    new-array v0, v3, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnOTSw:[Lcom/ts/other/ParamButton;

    .line 73
    new-array v0, v3, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnAMBand:[Lcom/ts/other/ParamButton;

    .line 74
    new-array v0, v3, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnRds:[Lcom/ts/other/ParamButton;

    .line 77
    new-array v0, v4, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmSort:[Lcom/ts/other/ParamButton;

    .line 83
    new-array v0, v1, [I

    .line 84
    sget v1, Lcom/ts/MainUI/R$string;->str_fsrad_ictype:I

    aput v1, v0, v5

    .line 85
    sget v1, Lcom/ts/MainUI/R$string;->str_fsrad_zone:I

    aput v1, v0, v6

    .line 86
    sget v1, Lcom/ts/MainUI/R$string;->str_fsrad_fmband:I

    aput v1, v0, v4

    .line 87
    sget v1, Lcom/ts/MainUI/R$string;->str_fsrad_mwband:I

    aput v1, v0, v3

    const/4 v1, 0x4

    .line 88
    sget v2, Lcom/ts/MainUI/R$string;->str_fsrad_otband:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 89
    sget v2, Lcom/ts/MainUI/R$string;->str_fsrad_rdssw:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 90
    sget v2, Lcom/ts/MainUI/R$string;->str_fsrad_fmsense:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 91
    sget v2, Lcom/ts/MainUI/R$string;->str_fsrad_amsense:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 92
    sget v2, Lcom/ts/MainUI/R$string;->str_fsrad_fmsort:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTitle:[I

    .line 96
    new-array v0, v3, [I

    .line 97
    sget v1, Lcom/ts/MainUI/R$id;->fssw_sw0:I

    aput v1, v0, v5

    .line 98
    sget v1, Lcom/ts/MainUI/R$id;->fssw_sw1:I

    aput v1, v0, v6

    .line 99
    sget v1, Lcom/ts/MainUI/R$id;->fssw_sw2:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mSWId:[I

    .line 103
    new-array v0, v3, [Ljava/lang/String;

    .line 104
    const-string v1, "ST7786"

    aput-object v1, v0, v5

    .line 105
    const-string v1, "NX6686"

    aput-object v1, v0, v6

    .line 106
    const-string v1, "Si4702"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrIc:[Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$1;-><init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->adjClick:Landroid/view/View$OnClickListener;

    .line 270
    new-instance v0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$2;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$2;-><init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->onFmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    .line 288
    new-instance v0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$3;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$3;-><init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->onAmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    .line 306
    new-instance v0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$4;-><init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->adjTextClick:Landroid/view/View$OnClickListener;

    .line 327
    new-instance v0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$5;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$5;-><init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->swClick:Landroid/view/View$OnClickListener;

    .line 111
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 115
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->str_fsrad_zonearray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrZone:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;IZ)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->changeData(IZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->updateItem(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsInputDlg$onInputOK;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->onFmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsInputDlg$onInputOK;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->onAmOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)Lcom/ts/factoryset/FsRadioActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->this$0:Lcom/ts/factoryset/FsRadioActivity;

    return-object v0
.end method

.method private changeData(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "inc"    # Z

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "val":I
    packed-switch p1, :pswitch_data_0

    .line 246
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->updateItem(I)V

    .line 247
    return-void

    .line 222
    :pswitch_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRadioIc()I

    move-result v0

    .line 223
    const/4 v1, 0x2

    invoke-static {v0, v2, v1, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v0

    .line 224
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetRadioIc(I)I

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRadioArea()I

    move-result v0

    .line 229
    const/4 v1, 0x5

    invoke-static {v0, v2, v1, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v0

    .line 230
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetRadioArea(I)I

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFMsd()I

    move-result v0

    .line 235
    invoke-static {v0, v2, v1, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v0

    .line 236
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetFMsd(I)I

    goto :goto_0

    .line 240
    :pswitch_4
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetAMsd()I

    move-result v0

    .line 241
    invoke-static {v0, v2, v1, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v0

    .line 242
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetAMsd(I)I

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init2SW(I)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 459
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/ts/MainUI/R$layout;->fs_item_2sw:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 462
    .local v3, "view":Landroid/view/View;
    const/4 v4, 0x3

    new-array v0, v4, [Lcom/ts/other/ParamButton;

    .line 464
    .local v0, "btnSW":[Lcom/ts/other/ParamButton;
    sget v4, Lcom/ts/MainUI/R$id;->fssw_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 465
    .local v2, "tvTitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTitle:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 468
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_1

    .line 476
    packed-switch p1, :pswitch_data_0

    .line 508
    :cond_0
    :pswitch_0
    return-object v3

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mSWId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ts/other/ParamButton;

    aput-object v4, v0, v1

    .line 471
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 472
    aget-object v4, v0, v1

    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 473
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->swClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :pswitch_1
    aget-object v4, v0, v8

    sget v5, Lcom/ts/MainUI/R$string;->str_fsrad_no:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 481
    aget-object v4, v0, v9

    const-string v5, "OT"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    .line 484
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnOTSw:[Lcom/ts/other/ParamButton;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :pswitch_2
    aget-object v4, v0, v8

    sget v5, Lcom/ts/MainUI/R$string;->str_fsrad_sort0:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 500
    aget-object v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$string;->str_fsrad_sort1:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 501
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_0

    .line 503
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmSort:[Lcom/ts/other/ParamButton;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private init3SW(I)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 515
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/ts/MainUI/R$layout;->fs_item_3sw:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 518
    .local v3, "view":Landroid/view/View;
    new-array v0, v10, [Lcom/ts/other/ParamButton;

    .line 520
    .local v0, "btnSW":[Lcom/ts/other/ParamButton;
    sget v4, Lcom/ts/MainUI/R$id;->fssw_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 521
    .local v2, "tvTitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTitle:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v10, :cond_0

    .line 545
    if-ne v7, p1, :cond_3

    .line 547
    aget-object v4, v0, v8

    const-string v5, "FM1"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 548
    aget-object v4, v0, v9

    const-string v5, "FM1/2"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 549
    aget-object v4, v0, v7

    const-string v5, "FM1/2/3"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :goto_1
    return-object v3

    .line 526
    :cond_0
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mSWId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ts/other/ParamButton;

    aput-object v4, v0, v1

    .line 527
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 528
    aget-object v4, v0, v1

    invoke-virtual {v4, v1}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 529
    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->swClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    if-ne v7, p1, :cond_1

    .line 533
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmBand:[Lcom/ts/other/ParamButton;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    .line 524
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_1
    if-ne v11, p1, :cond_2

    .line 537
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnRds:[Lcom/ts/other/ParamButton;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    goto :goto_2

    .line 541
    :cond_2
    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnAMBand:[Lcom/ts/other/ParamButton;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    goto :goto_2

    .line 551
    :cond_3
    if-ne v11, p1, :cond_4

    .line 553
    aget-object v4, v0, v8

    sget v5, Lcom/ts/MainUI/R$string;->str_fs_off:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 554
    aget-object v4, v0, v9

    const-string v5, "AF ON"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 555
    aget-object v4, v0, v7

    const-string v5, "AF OFF"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 559
    :cond_4
    aget-object v4, v0, v8

    sget v5, Lcom/ts/MainUI/R$string;->str_fsrad_no:I

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 560
    aget-object v4, v0, v9

    const-string v5, "MW1"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 561
    aget-object v4, v0, v7

    const-string v5, "MW1/2"

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 366
    const-string v1, "getAdjView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 383
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->init3SW(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x36

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mView:[Landroid/view/View;

    aput-object v0, v1, p1

    .line 390
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->updateItem(I)V

    .line 391
    return-object v0

    .line 373
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->initAdj(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 379
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->init2SW(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateItem(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRadioIc()I

    move-result v2

    .line 131
    .local v2, "val":I
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvType:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrIc:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvTypeText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrIc:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    .end local v2    # "val":I
    :pswitch_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRadioArea()I

    move-result v2

    .line 140
    .restart local v2    # "val":I
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvZone:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrZone:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrZone:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvZoneText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mStrZone:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    .end local v2    # "val":I
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 155
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFMnum()I

    move-result v2

    .line 156
    .restart local v2    # "val":I
    if-ge v2, v4, :cond_0

    .line 158
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmBand:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 153
    .end local v2    # "val":I
    :cond_1
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmBand:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_2

    .line 168
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetMWnum()I

    move-result v2

    .line 169
    .restart local v2    # "val":I
    if-ge v2, v4, :cond_0

    .line 171
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnAMBand:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 165
    .end local v2    # "val":I
    :cond_2
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnAMBand:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 176
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v7, :cond_3

    .line 180
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnOTSw:[Lcom/ts/other/ParamButton;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOTnum()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnOTSw:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 184
    .end local v0    # "i":I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-lt v0, v4, :cond_4

    .line 188
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRDSen()I

    move-result v1

    .line 189
    .local v1, "rds":I
    if-ge v1, v4, :cond_0

    .line 191
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnRds:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 186
    .end local v1    # "rds":I
    :cond_4
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnRds:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 196
    .end local v0    # "i":I
    :pswitch_6
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvFmSense:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFMsd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 200
    :pswitch_7
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvAmSense:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetAMsd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 204
    :pswitch_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-lt v0, v7, :cond_5

    .line 208
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmSort:[Lcom/ts/other/ParamButton;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFmSort()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 206
    :cond_5
    iget-object v3, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mBtnFmSort:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 587
    const/16 v0, 0x9

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 597
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 571
    move-object v0, p2

    .line 572
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 575
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->initView(I)Landroid/view/View;

    move-result-object v0

    .line 581
    :goto_0
    return-object v0

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mView:[Landroid/view/View;

    aget-object v0, v1, p1

    goto :goto_0
.end method

.method initAdj(I)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 398
    iget-object v6, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/ts/MainUI/R$layout;->fs_item_data_adj:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 402
    .local v5, "view":Landroid/view/View;
    sget v6, Lcom/ts/MainUI/R$id;->fsadj_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 403
    .local v3, "tvTitle":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTitle:[I

    aget v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 406
    sget v6, Lcom/ts/MainUI/R$id;->fsadj_val:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 407
    .local v4, "val":Landroid/widget/TextView;
    sget v6, Lcom/ts/MainUI/R$id;->fsadj_comment:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 408
    .local v2, "text":Landroid/widget/TextView;
    const/4 v6, 0x5

    if-le p1, v6, :cond_0

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v6, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->adjTextClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 437
    :goto_0
    :pswitch_0
    sget v6, Lcom/ts/MainUI/R$id;->fsadj_cut:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    .line 438
    .local v1, "btnCut":Lcom/ts/other/ParamButton;
    invoke-virtual {v1, p1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 439
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 440
    sget v6, Lcom/ts/MainUI/R$drawable;->factory_reduce_up:I

    .line 441
    sget v7, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 442
    sget v8, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 440
    invoke-virtual {v1, v6, v7, v8}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 443
    iget-object v6, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->adjClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    sget v6, Lcom/ts/MainUI/R$id;->fsadj_add:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 446
    .local v0, "btnAdd":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 447
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 448
    sget v6, Lcom/ts/MainUI/R$drawable;->factory_add_up:I

    .line 449
    sget v7, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 450
    sget v8, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 448
    invoke-virtual {v0, v6, v7, v8}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 451
    iget-object v6, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->adjClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    return-object v5

    .line 417
    .end local v0    # "btnAdd":Lcom/ts/other/ParamButton;
    .end local v1    # "btnCut":Lcom/ts/other/ParamButton;
    :pswitch_1
    iput-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvType:Landroid/widget/TextView;

    .line 418
    iput-object v2, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvTypeText:Landroid/widget/TextView;

    goto :goto_0

    .line 422
    :pswitch_2
    iput-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvZone:Landroid/widget/TextView;

    .line 423
    iput-object v2, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvZoneText:Landroid/widget/TextView;

    goto :goto_0

    .line 427
    :pswitch_3
    iput-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvFmSense:Landroid/widget/TextView;

    goto :goto_0

    .line 431
    :pswitch_4
    iput-object v4, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->mTvAmSense:Landroid/widget/TextView;

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
