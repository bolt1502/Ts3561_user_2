.class Lcom/ts/can/ford/SyncLine;
.super Ljava/lang/Object;
.source "CanFordSyncUIActivity.java"


# instance fields
.field private mLtIco:Lcom/ts/other/CustomImgView;

.field private mRtIco:Lcom/ts/other/CustomImgView;

.field private mTitle:Lcom/ts/other/CustomTextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1357
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_sync_usline:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    .line 1358
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sync_line_txt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/CustomTextView;

    iput-object v1, p0, Lcom/ts/can/ford/SyncLine;->mTitle:Lcom/ts/other/CustomTextView;

    .line 1359
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_rect_up:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/SyncLine;->SetBg(I)V

    .line 1360
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1344
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_sync_cnline:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    .line 1345
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sync_line_txt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/CustomTextView;

    iput-object v1, p0, Lcom/ts/can/ford/SyncLine;->mTitle:Lcom/ts/other/CustomTextView;

    .line 1346
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sync_line_ltico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/can/ford/SyncLine;->mLtIco:Lcom/ts/other/CustomImgView;

    .line 1347
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sync_line_rtico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/can/ford/SyncLine;->mRtIco:Lcom/ts/other/CustomImgView;

    .line 1348
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1349
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    sget v1, Lcom/ts/MainUI/R$drawable;->can_sync_rect_up:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/SyncLine;->SetBg(I)V

    .line 1352
    return-void
.end method


# virtual methods
.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetBg(I)V
    .locals 1
    .param p1, "bg"    # I

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1427
    return-void
.end method

.method public SetCanSel(I)V
    .locals 2
    .param p1, "cansel"    # I

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1365
    return-void

    .line 1364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetIco(II)V
    .locals 1
    .param p1, "lt"    # I
    .param p2, "rt"    # I

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mLtIco:Lcom/ts/other/CustomImgView;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mLtIco:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 1409
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mRtIco:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, p2}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 1412
    :cond_0
    return-void
.end method

.method public SetSel(Z)V
    .locals 1
    .param p1, "sel"    # Z

    .prologue
    .line 1369
    if-eqz p1, :cond_0

    .line 1371
    sget v0, Lcom/ts/MainUI/R$drawable;->can_sync_rect_dn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/SyncLine;->SetBg(I)V

    .line 1377
    :goto_0
    return-void

    .line 1375
    :cond_0
    sget v0, Lcom/ts/MainUI/R$drawable;->can_sync_rect_up:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/SyncLine;->SetBg(I)V

    goto :goto_0
.end method

.method public SetText(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mTitle:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    return-void
.end method

.method public SetText(Ljava/lang/String;I)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mTitle:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1421
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mTitle:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 1422
    return-void
.end method

.method public Show(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 1381
    if-eqz p1, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public Show(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1393
    if-eqz p1, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    :goto_0
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/SyncLine;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
