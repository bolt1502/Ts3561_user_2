.class Lcom/ts/can/ford/SyncSKey;
.super Ljava/lang/Object;
.source "CanFordSyncUIActivity.java"


# instance fields
.field private mBtn:Lcom/ts/other/ParamButton;

.field private mIco:Lcom/ts/other/CustomImgView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x0

    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1445
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_sync_softkey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    .line 1446
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sync_skey_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    .line 1447
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_sync_txt_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_sync_txt_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 1448
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p3}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1449
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sync_skey_ico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mIco:Lcom/ts/other/CustomImgView;

    .line 1450
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 1451
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 1452
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    invoke-virtual {v1}, Lcom/ts/other/ParamButton;->setSingleLine()V

    .line 1453
    return-void
.end method


# virtual methods
.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->setEnabled(Z)V

    .line 1491
    return-void
.end method

.method public SetIco(I)V
    .locals 1
    .param p1, "ico"    # I

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mIco:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 1481
    return-void
.end method

.method public SetSel(I)V
    .locals 2
    .param p1, "sel"    # I

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1458
    return-void

    .line 1457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetText(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mBtn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    return-void
.end method

.method public SetTextIco(Ljava/lang/String;I)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "ico"    # I

    .prologue
    .line 1462
    invoke-virtual {p0, p2}, Lcom/ts/can/ford/SyncSKey;->SetIco(I)V

    .line 1463
    if-eqz p2, :cond_0

    .line 1465
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/SyncSKey;->SetText(Ljava/lang/String;)V

    .line 1471
    :goto_0
    return-void

    .line 1469
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ts/can/ford/SyncSKey;->SetText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Show(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 1495
    if-eqz p1, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public Show(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1507
    if-eqz p1, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1515
    :goto_0
    return-void

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/SyncSKey;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
