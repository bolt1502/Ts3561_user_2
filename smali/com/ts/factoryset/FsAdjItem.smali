.class Lcom/ts/factoryset/FsAdjItem;
.super Ljava/lang/Object;
.source "FsOtherActivity.java"


# instance fields
.field protected mStrText:[Ljava/lang/String;

.field protected mText:Landroid/widget/TextView;

.field protected mVal:Landroid/widget/TextView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "title"    # I
    .param p4, "text"    # I
    .param p5, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1469
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1470
    .local v3, "strTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1471
    .local v4, "strText":[Ljava/lang/String;
    const/4 v0, 0x1

    if-le p4, v0, :cond_0

    .line 1473
    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    .line 1475
    invoke-direct/range {v0 .. v5}, Lcom/ts/factoryset/FsAdjItem;->Create(Landroid/view/ViewGroup;ILjava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1476
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;ILjava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "strTitle"    # Ljava/lang/String;
    .param p4, "strText"    # [Ljava/lang/String;
    .param p5, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    invoke-direct/range {p0 .. p5}, Lcom/ts/factoryset/FsAdjItem;->Create(Landroid/view/ViewGroup;ILjava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1464
    return-void
.end method

.method private Create(Landroid/view/ViewGroup;ILjava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "strTitle"    # Ljava/lang/String;
    .param p4, "strText"    # [Ljava/lang/String;
    .param p5, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1480
    iput-object p4, p0, Lcom/ts/factoryset/FsAdjItem;->mStrText:[Ljava/lang/String;

    .line 1481
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$layout;->fs_item_data_adj:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    .line 1483
    iget-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1486
    iget-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    sget v4, Lcom/ts/MainUI/R$id;->fsadj_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1487
    .local v2, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    sget v4, Lcom/ts/MainUI/R$id;->fsadj_val:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mVal:Landroid/widget/TextView;

    .line 1491
    iget-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    sget v4, Lcom/ts/MainUI/R$id;->fsadj_comment:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mText:Landroid/widget/TextView;

    .line 1495
    iget-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    sget v4, Lcom/ts/MainUI/R$id;->fsadj_cut:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    .line 1496
    .local v1, "btnCut":Lcom/ts/other/ParamButton;
    invoke-virtual {v1, p2}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 1497
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 1498
    sget v3, Lcom/ts/MainUI/R$drawable;->factory_reduce_up:I

    .line 1499
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 1500
    sget v5, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 1498
    invoke-virtual {v1, v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 1501
    invoke-virtual {v1, p5}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1503
    iget-object v3, p0, Lcom/ts/factoryset/FsAdjItem;->mView:Landroid/view/View;

    sget v4, Lcom/ts/MainUI/R$id;->fsadj_add:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 1504
    .local v0, "btnAdd":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p2}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 1505
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 1506
    sget v3, Lcom/ts/MainUI/R$drawable;->factory_add_up:I

    .line 1507
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 1508
    sget v5, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 1506
    invoke-virtual {v0, v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 1509
    invoke-virtual {v0, p5}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    return-void
.end method


# virtual methods
.method public GetMaxVal()I
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/ts/factoryset/FsAdjItem;->mStrText:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public SetVal(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/ts/factoryset/FsAdjItem;->mVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    iget-object v0, p0, Lcom/ts/factoryset/FsAdjItem;->mStrText:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1524
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ts/factoryset/FsAdjItem;->mStrText:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/ts/factoryset/FsAdjItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/factoryset/FsAdjItem;->mStrText:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/ts/factoryset/FsAdjItem;->mText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
