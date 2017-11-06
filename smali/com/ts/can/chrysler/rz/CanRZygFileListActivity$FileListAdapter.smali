.class Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CanRZygFileListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSize:I

.field final synthetic this$0:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;


# direct methods
.method public constructor <init>(Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->this$0:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;

    .line 387
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->mSize:I

    .line 389
    iput-object p2, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->mContext:Landroid/content/Context;

    .line 390
    return-void
.end method


# virtual methods
.method public SetSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->mSize:I

    .line 400
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method

.method public addItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 395
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->mSize:I

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 418
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 424
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "holder":Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 435
    new-instance v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;

    .end local v0    # "holder":Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    invoke-direct {v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;-><init>()V

    .line 436
    .restart local v0    # "holder":Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v7}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 437
    .local v1, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v1, v7}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 439
    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object p2

    .line 440
    iput-object v1, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    .line 441
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 442
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x55

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v3, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v3}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    .end local v1    # "item":Lcom/ts/canview/CanItemTextBtnList;
    :goto_0
    iput p1, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mPos:I

    .line 452
    iget-object v3, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u3001 Track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, "result":I
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->this$0:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;

    iget-object v3, v3, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mListItemData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    invoke-static {p1, v3}, Lcom/lgb/canmodule/CanJni;->ChrOthGetList(ILcom/lgb/canmodule/CanDataInfo$ChrOthText;)I

    move-result v2

    .line 456
    if-eqz v2, :cond_1

    .line 458
    iget-object v3, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    const-string v4, "%d\u3001 %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->this$0:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;

    iget-object v7, v7, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mListItemData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->szData:[B

    invoke-static {v7}, Lcom/ts/can/CanIF;->byte2UnicodeStr([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 464
    :goto_1
    return-object p2

    .line 447
    .end local v2    # "result":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    check-cast v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    goto :goto_0

    .line 462
    .restart local v2    # "result":I
    :cond_1
    iget-object v3, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mFileItem:Lcom/ts/canview/CanItemTextBtnList;

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u3001 Track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;

    .line 472
    .local v0, "holder":Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    iget v2, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mPos:I

    add-int/lit8 v1, v2, 0x1

    .line 473
    .local v1, "index":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onClick item =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;->mPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    const/16 v2, 0xf

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v1, 0xff

    invoke-static {v2, v3, v4}, Lcom/lgb/canmodule/CanJni;->RZChrOthCDCtrl(III)V

    .line 475
    return-void
.end method
