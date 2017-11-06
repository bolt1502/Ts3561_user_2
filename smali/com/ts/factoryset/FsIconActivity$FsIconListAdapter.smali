.class Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FsIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsIconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FsIconListAdapter"
.end annotation


# instance fields
.field private TOTAL_ITEM:I

.field private mIco:[Lcom/ts/other/ParamTextView;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSel:I

.field private mView:[Landroid/view/View;

.field final synthetic this$0:Lcom/ts/factoryset/FsIconActivity;


# direct methods
.method public constructor <init>(Lcom/ts/factoryset/FsIconActivity;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "total"    # I

    .prologue
    .line 379
    iput-object p1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    .line 378
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 372
    const/16 v0, 0x28

    iput v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I

    .line 380
    iput p3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    .line 381
    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mView:[Landroid/view/View;

    .line 382
    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    new-array v0, v0, [Lcom/ts/other/ParamTextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mIco:[Lcom/ts/other/ParamTextView;

    .line 383
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 384
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->initView()V

    .line 385
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;)I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    return v0
.end method

.method public getIndexVal(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 389
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    if-ge p1, v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mIco:[Lcom/ts/other/ParamTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ts/other/ParamTextView;->getIntParam()I

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 550
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMaxIcoVal()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    .line 511
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mIco:[Lcom/ts/other/ParamTextView;

    aget-object v0, v1, p1

    .line 512
    .local v0, "curText":Lcom/ts/other/ParamTextView;
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iget v1, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    if-ne v2, v1, :cond_0

    .line 515
    invoke-virtual {v0, v2}, Lcom/ts/other/ParamTextView;->setSelected(Z)V

    .line 524
    :goto_0
    invoke-virtual {v0}, Lcom/ts/other/ParamTextView;->getIntParam()I

    move-result v1

    if-nez v1, :cond_1

    .line 526
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamTextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_1
    const-string v1, "Can list getview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    return-object v1

    .line 520
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamTextView;->setSelected(Z)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    add-int/lit8 v2, p1, 0x1

    # invokes: Lcom/ts/factoryset/FsIconActivity;->getIconName(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ts/factoryset/FsIconActivity;->access$1(Lcom/ts/factoryset/FsIconActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method initView()V
    .locals 6

    .prologue
    .line 491
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    if-lt v0, v3, :cond_0

    .line 505
    return-void

    .line 494
    :cond_0
    const-string v3, "FsIconGridAdapter.getView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "index = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/ts/MainUI/R$layout;->fs_icon_left_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 499
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/ts/MainUI/R$id;->fsicon_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamTextView;

    .line 501
    .local v1, "tv":Lcom/ts/other/ParamTextView;
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mIco:[Lcom/ts/other/ParamTextView;

    aput-object v1, v3, v0

    .line 502
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mView:[Landroid/view/View;

    aput-object v2, v3, v0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onLeftClick(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 423
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->getIndexVal(I)I

    move-result v0

    .line 424
    .local v0, "curPosVal":I
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iget v1, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    packed-switch v1, :pswitch_data_0

    .line 473
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;
    invoke-static {v1}, Lcom/ts/factoryset/FsIconActivity;->access$2(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->notifyDataSetChanged()V

    .line 474
    return-void

    .line 427
    :pswitch_0
    if-lez v0, :cond_0

    .line 429
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v2, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 430
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setSel(I)V

    goto :goto_0

    .line 435
    :pswitch_1
    if-lez v0, :cond_0

    .line 437
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I

    if-ne v1, p1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;
    invoke-static {v1}, Lcom/ts/factoryset/FsIconActivity;->access$2(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->addIcon(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v3, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 443
    invoke-virtual {p0, p1, v3}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setIndexVal(II)V

    .line 444
    invoke-virtual {p0, v4}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setSel(I)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setSel(I)V

    goto :goto_0

    .line 455
    :pswitch_2
    if-nez v0, :cond_2

    .line 457
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v3, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 458
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->notifyDataSetChanged()V

    .line 465
    :goto_1
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v3, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 466
    invoke-virtual {p0, v4}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setSel(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v2, v1, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    goto :goto_1

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setAll()V
    .locals 3

    .prologue
    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    if-lt v0, v1, :cond_0

    .line 418
    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mIco:[Lcom/ts/other/ParamTextView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamTextView;->setIntParam(I)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIndexVal(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # I

    .prologue
    .line 405
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->TOTAL_ITEM:I

    if-ge p1, v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mIco:[Lcom/ts/other/ParamTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/ts/other/ParamTextView;->setIntParam(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public setSel(I)V
    .locals 0
    .param p1, "sel"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I

    .line 482
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->notifyDataSetChanged()V

    .line 484
    return-void
.end method
