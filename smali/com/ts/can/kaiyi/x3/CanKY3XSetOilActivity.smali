.class public Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanKY3XSetOilActivity.java"


# instance fields
.field private mBtnAqd:Lcom/ts/other/ParamButton;

.field private mContainer:Lcom/ts/canview/RelativeLayoutContainer;

.field private mOilIcons:[Landroid/widget/ImageView;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

.field private mTvOilValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mOilIcons:[Landroid/widget/ImageView;

    .line 25
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    .line 16
    return-void
.end method

.method private setOilRest(I)V
    .locals 4
    .param p1, "syyh"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mOilIcons:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 90
    return-void

    .line 87
    :cond_0
    div-int/lit8 v1, p1, 0x20

    .line 88
    .local v1, "index":I
    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mOilIcons:[Landroid/widget/ImageView;

    aget-object v3, v2, v0

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->showGoneView(Landroid/view/View;Z)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected InitUI()V
    .locals 11

    .prologue
    .line 39
    new-instance v0, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v0, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    .line 41
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1c2

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v1

    .line 42
    .local v1, "aqdLabel":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1e0

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mBtnAqd:Lcom/ts/other/ParamButton;

    .line 44
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1d6

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v10

    .line 45
    .local v10, "oilLabel":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1e0

    const/16 v3, 0xf5

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ky3x_oil:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1a9

    const/16 v3, 0x14d

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ky3x_e:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x266

    const/16 v3, 0x14d

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ky3x_f:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1d9

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v8

    .line 50
    .local v8, "avgLabel":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1c2

    const/16 v3, 0x1c2

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mTvOilValue:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const-string v2, "\u5b89\u5168\u5e26\u8b66\u793a"

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/16 v5, 0x16

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 53
    const-string v4, "\u6cb9\u91cf\u663e\u793a"

    const/16 v5, 0x11

    const/4 v6, -0x1

    const/16 v7, 0x16

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 54
    const-string v4, "\u5e73\u5747\u6cb9\u8017"

    const/16 v5, 0x11

    const/4 v6, -0x1

    const/16 v7, 0x16

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mTvOilValue:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0x11

    const/4 v6, -0x1

    const/16 v7, 0x18

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mBtnAqd:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ky3x_aqd_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ky3x_aqd_up:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 59
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mOilIcons:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt v9, v0, :cond_0

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mOilIcons:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    mul-int/lit8 v3, v9, 0xf

    add-int/lit16 v3, v3, 0x1e0

    const/16 v4, 0x158

    sget v5, Lcom/ts/MainUI/R$drawable;->can_ky3x_rect:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v0, v9

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x0

    .line 67
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KaiYi3xGetInfo(Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Update:I

    .line 75
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mBtnAqd:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Aqd:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->setViewSelected(Landroid/view/View;I)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mTvOilValue:Landroid/widget/TextView;

    const-string v1, "%.1fL/100KM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Pjyh:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Syyh:I

    invoke-direct {p0, v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetOilActivity;->setOilRest(I)V

    .line 83
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 30
    return-void
.end method
