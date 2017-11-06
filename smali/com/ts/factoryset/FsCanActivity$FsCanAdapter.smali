.class public Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;
.super Landroid/widget/BaseAdapter;
.source "FsCanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsCanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FsCanAdapter"
.end annotation


# instance fields
.field private TOTAL_ITEM:I

.field private adjClick:Landroid/view/View$OnClickListener;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSel:I

.field private mStrArray:[Ljava/lang/String;

.field private mTvVal:[Landroid/widget/TextView;

.field private mView:[Landroid/view/View;

.field final synthetic this$0:Lcom/ts/factoryset/FsCanActivity;


# direct methods
.method public constructor <init>(Lcom/ts/factoryset/FsCanActivity;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->this$0:Lcom/ts/factoryset/FsCanActivity;

    .line 265
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 257
    const/16 v0, 0x14

    iput v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->TOTAL_ITEM:I

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mSel:I

    .line 307
    new-instance v0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter$1;-><init>(Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->adjClick:Landroid/view/View$OnClickListener;

    .line 284
    const-string v0, "can_auto_array"

    invoke-static {p2, v0}, Lcom/ts/can/CanIF;->GetTsResStrArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mStrArray:[Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mStrArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NULL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mStrArray:[Ljava/lang/String;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mStrArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->TOTAL_ITEM:I

    .line 292
    iget v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->TOTAL_ITEM:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mView:[Landroid/view/View;

    .line 293
    iget v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->TOTAL_ITEM:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mTvVal:[Landroid/widget/TextView;

    .line 295
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 296
    invoke-virtual {p0}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->initView()V

    .line 297
    return-void
.end method

.method private updateItem(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 304
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->TOTAL_ITEM:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 434
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 405
    iget v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mSel:I

    if-ne v0, p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 417
    :goto_0
    const-string v0, "Can list getview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mView:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method initView()V
    .locals 6

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->TOTAL_ITEM:I

    if-lt v0, v3, :cond_0

    .line 386
    return-void

    .line 375
    :cond_0
    const-string v3, "FsCanAdapter.getView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "index = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/ts/MainUI/R$layout;->fs_can_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 379
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/ts/MainUI/R$id;->fscan_id:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 381
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mStrArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mTvVal:[Landroid/widget/TextView;

    aput-object v1, v3, v0

    .line 383
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mView:[Landroid/view/View;

    aput-object v2, v3, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSel(I)V
    .locals 6
    .param p1, "sel"    # I

    .prologue
    .line 319
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_3

    iget v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mSel:I

    if-eq p1, v3, :cond_3

    .line 321
    const/4 v3, -0x1

    iget v4, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mSel:I

    if-eq v3, v4, :cond_0

    .line 323
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mTvVal:[Landroid/widget/TextView;

    iget v4, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mSel:I

    aget-object v3, v3, v4

    .line 330
    :cond_0
    iput p1, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->mSel:I

    .line 333
    invoke-virtual {p0}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->notifyDataSetChanged()V

    .line 335
    div-int/lit8 v3, p1, 0x8

    mul-int/lit8 v2, v3, 0x8

    .line 340
    .local v2, "toPos":I
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->this$0:Lcom/ts/factoryset/FsCanActivity;

    # getter for: Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/ts/factoryset/FsCanActivity;->access$2(Lcom/ts/factoryset/FsCanActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 341
    .local v0, "first":I
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->this$0:Lcom/ts/factoryset/FsCanActivity;

    # getter for: Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/ts/factoryset/FsCanActivity;->access$2(Lcom/ts/factoryset/FsCanActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 342
    .local v1, "last":I
    if-lt p1, v0, :cond_1

    if-le p1, v1, :cond_2

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->this$0:Lcom/ts/factoryset/FsCanActivity;

    # getter for: Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/ts/factoryset/FsCanActivity;->access$2(Lcom/ts/factoryset/FsCanActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 358
    :cond_2
    const-string v3, "sel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->this$0:Lcom/ts/factoryset/FsCanActivity;

    # getter for: Lcom/ts/factoryset/FsCanActivity;->mBtnCan:Lcom/ts/other/ParamButton;
    invoke-static {v3}, Lcom/ts/factoryset/FsCanActivity;->access$3(Lcom/ts/factoryset/FsCanActivity;)Lcom/ts/other/ParamButton;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-static {p1}, Lcom/yyw/ts70xhw/FtSet;->SetCanTp(I)I

    .line 365
    .end local v0    # "first":I
    .end local v1    # "last":I
    .end local v2    # "toPos":I
    :cond_3
    return-void
.end method
