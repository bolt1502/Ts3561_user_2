.class public Lcom/ts/factoryset/FsDisplayActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsDisplayActivity.java"


# static fields
.field public static final CENTER_ITEM:I = 0x5

.field public static final TAG:Ljava/lang/String; = "FsDisplayActivity"

.field public static final TOTAL_ITEM:I = 0xa


# instance fields
.field addClick:Landroid/view/View$OnClickListener;

.field cutClick:Landroid/view/View$OnClickListener;

.field itemClick:Landroid/view/View$OnClickListener;

.field private mBtnAdd:[Lcom/ts/other/ParamButton;

.field private mBtnAddId:[I

.field private mBtnCut:[Lcom/ts/other/ParamButton;

.field private mBtnCutId:[I

.field private mBtnDn:[I

.field private mBtnSW:[Lcom/ts/other/ParamButton;

.field private mBtnSWId:[I

.field private mBtnSub:[Lcom/ts/other/ParamButton;

.field private mBtnSubId:[I

.field private mBtnUp:[I

.field private mCurItem:I

.field private mTconVal:[I

.field private mTvVal:[Landroid/widget/TextView;

.field private mTvValId:[I

.field swClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 12
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    .line 21
    new-array v0, v3, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCut:[Lcom/ts/other/ParamButton;

    .line 22
    new-array v0, v3, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAdd:[Lcom/ts/other/ParamButton;

    .line 23
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTvVal:[Landroid/widget/TextView;

    .line 24
    new-array v0, v5, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSW:[Lcom/ts/other/ParamButton;

    .line 26
    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I

    .line 27
    iput v4, p0, Lcom/ts/factoryset/FsDisplayActivity;->mCurItem:I

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 32
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_sub0:I

    aput v1, v0, v4

    .line 33
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_sub1:I

    aput v1, v0, v6

    .line 34
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_sub2:I

    aput v1, v0, v5

    .line 35
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_sub3:I

    aput v1, v0, v7

    const/4 v1, 0x4

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_sub4:I

    aput v2, v0, v1

    .line 37
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_sub5:I

    aput v1, v0, v3

    const/4 v1, 0x6

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_sub6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 39
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_sub7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 40
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_sub8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 41
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_sub9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSubId:[I

    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 46
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box01_up:I

    aput v1, v0, v4

    .line 47
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box02_up:I

    aput v1, v0, v6

    .line 48
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box03_up:I

    aput v1, v0, v5

    .line 49
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box04_up:I

    aput v1, v0, v7

    const/4 v1, 0x4

    .line 50
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box05_up:I

    aput v2, v0, v1

    .line 51
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box06_up:I

    aput v1, v0, v3

    const/4 v1, 0x6

    .line 52
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box07_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box08_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box09_up:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box10_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnUp:[I

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 60
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box01_dn:I

    aput v1, v0, v4

    .line 61
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box02_dn:I

    aput v1, v0, v6

    .line 62
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box03_dn:I

    aput v1, v0, v5

    .line 63
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box04_dn:I

    aput v1, v0, v7

    const/4 v1, 0x4

    .line 64
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box05_dn:I

    aput v2, v0, v1

    .line 65
    sget v1, Lcom/ts/MainUI/R$drawable;->factory_other_box06_dn:I

    aput v1, v0, v3

    const/4 v1, 0x6

    .line 66
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box07_dn:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 67
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box08_dn:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 68
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box09_dn:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 69
    sget v2, Lcom/ts/MainUI/R$drawable;->factory_other_box10_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnDn:[I

    .line 74
    new-array v0, v3, [I

    .line 75
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_cut0:I

    aput v1, v0, v4

    .line 76
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_cut1:I

    aput v1, v0, v6

    .line 77
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_cut2:I

    aput v1, v0, v5

    .line 78
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_cut3:I

    aput v1, v0, v7

    const/4 v1, 0x4

    .line 79
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_cut4:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCutId:[I

    .line 84
    new-array v0, v3, [I

    .line 85
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_val0:I

    aput v1, v0, v4

    .line 86
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_val1:I

    aput v1, v0, v6

    .line 87
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_val2:I

    aput v1, v0, v5

    .line 88
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_val3:I

    aput v1, v0, v7

    const/4 v1, 0x4

    .line 89
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_val4:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTvValId:[I

    .line 93
    new-array v0, v3, [I

    .line 94
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_add0:I

    aput v1, v0, v4

    .line 95
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_add1:I

    aput v1, v0, v6

    .line 96
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_add2:I

    aput v1, v0, v5

    .line 97
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_add3:I

    aput v1, v0, v7

    const/4 v1, 0x4

    .line 98
    sget v2, Lcom/ts/MainUI/R$id;->fstcon_add4:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAddId:[I

    .line 103
    new-array v0, v5, [I

    .line 104
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_off:I

    aput v1, v0, v4

    .line 105
    sget v1, Lcom/ts/MainUI/R$id;->fstcon_on:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSWId:[I

    .line 161
    new-instance v0, Lcom/ts/factoryset/FsDisplayActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsDisplayActivity$1;-><init>(Lcom/ts/factoryset/FsDisplayActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->swClick:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/ts/factoryset/FsDisplayActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsDisplayActivity$2;-><init>(Lcom/ts/factoryset/FsDisplayActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->itemClick:Landroid/view/View$OnClickListener;

    .line 184
    new-instance v0, Lcom/ts/factoryset/FsDisplayActivity$3;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsDisplayActivity$3;-><init>(Lcom/ts/factoryset/FsDisplayActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->cutClick:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v0, Lcom/ts/factoryset/FsDisplayActivity$4;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsDisplayActivity$4;-><init>(Lcom/ts/factoryset/FsDisplayActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->addClick:Landroid/view/View$OnClickListener;

    .line 12
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsDisplayActivity;)[I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/factoryset/FsDisplayActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ts/factoryset/FsDisplayActivity;->mCurItem:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 223
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->updateTcon(I)V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget v1, Lcom/ts/MainUI/R$layout;->activity_fs_display:I

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->setContentView(I)V

    .line 114
    sget v1, Lcom/ts/MainUI/R$string;->str_fsmain_display:I

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->topBtnInit(I)V

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 125
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 130
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 151
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 158
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSubId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    aput-object v1, v2, v0

    .line 121
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 122
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnUp:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnUp:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnDn:[I

    aget v4, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->itemClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCut:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCutId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    aput-object v1, v2, v0

    .line 133
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCut:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 134
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCut:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->cutClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnCut:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->factory_reduce_up:I

    .line 136
    sget v3, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 137
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 135
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 139
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAdd:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAddId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    aput-object v1, v2, v0

    .line 140
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAdd:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 141
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAdd:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->factory_add_up:I

    .line 142
    sget v3, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 143
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 141
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 144
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnAdd:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->addClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTvVal:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTvValId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 153
    :cond_3
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSW:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSWId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    aput-object v1, v2, v0

    .line 154
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSW:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 155
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSW:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->swClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsDisplayActivity;->updateTcon(I)V

    .line 232
    invoke-virtual {p0}, Lcom/ts/factoryset/FsDisplayActivity;->updateSW()V

    .line 233
    return-void
.end method

.method updateItem(I)V
    .locals 6
    .param p1, "curItem"    # I

    .prologue
    .line 257
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I

    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->GetTconVal([I)I

    .line 258
    const/16 v2, 0x8

    if-ge p1, v2, :cond_0

    .line 260
    iput p1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mCurItem:I

    .line 261
    mul-int/lit8 v1, p1, 0x5

    .line 263
    .local v1, "nStart":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 268
    .end local v0    # "i":I
    .end local v1    # "nStart":I
    :cond_0
    return-void

    .line 265
    .restart local v0    # "i":I
    .restart local v1    # "nStart":I
    :cond_1
    iget-object v2, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTvVal:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ts/factoryset/FsDisplayActivity;->mTconVal:[I

    add-int v5, v1, v0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updateSW()V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTconAdj()I

    move-result v1

    and-int/lit8 v0, v1, 0x1

    .line 273
    .local v0, "nSel":I
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSW:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 274
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSW:[Lcom/ts/other/ParamButton;

    rsub-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 275
    return-void
.end method

.method updateTcon(I)V
    .locals 4
    .param p1, "curItem"    # I

    .prologue
    const/16 v3, 0xa

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 245
    if-ge p1, v3, :cond_0

    .line 248
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsDisplayActivity;->updateItem(I)V

    .line 253
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/ts/factoryset/FsDisplayActivity;->mBtnSub:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
