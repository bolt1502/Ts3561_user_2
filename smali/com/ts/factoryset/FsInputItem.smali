.class Lcom/ts/factoryset/FsInputItem;
.super Ljava/lang/Object;
.source "FsOtherActivity.java"


# instance fields
.field protected mBtnVal:Lcom/ts/other/ParamButton;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "title"    # I
    .param p4, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, "strTitle":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/ts/factoryset/FsInputItem;->Create(Landroid/view/ViewGroup;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1551
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "strTitle"    # Ljava/lang/String;
    .param p4, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ts/factoryset/FsInputItem;->Create(Landroid/view/ViewGroup;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1545
    return-void
.end method

.method private Create(Landroid/view/ViewGroup;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "id"    # I
    .param p3, "strTitle"    # Ljava/lang/String;
    .param p4, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    const/high16 v5, -0x1000000

    .line 1555
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$layout;->fs_btname_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mView:Landroid/view/View;

    .line 1557
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1561
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->fsbt_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1562
    .local v0, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->fsbt_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mBtnVal:Lcom/ts/other/ParamButton;

    .line 1565
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mBtnVal:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->factory_radio_up:I

    .line 1566
    sget v3, Lcom/ts/MainUI/R$drawable;->factory_radio_dn:I

    .line 1567
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_radio_dn:I

    .line 1565
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 1568
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mBtnVal:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p4}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mBtnVal:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p2}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 1570
    iget-object v1, p0, Lcom/ts/factoryset/FsInputItem;->mBtnVal:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v5, v5}, Lcom/ts/other/ParamButton;->setColorUpDn(II)V

    .line 1571
    return-void
.end method


# virtual methods
.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/ts/factoryset/FsInputItem;->mBtnVal:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    return-void
.end method
