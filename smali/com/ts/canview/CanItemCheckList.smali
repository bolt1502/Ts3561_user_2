.class public Lcom/ts/canview/CanItemCheckList;
.super Ljava/lang/Object;
.source "CanItemCheckList.java"


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mIco:Lcom/ts/other/CustomImgView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemCheckList;->Create(Landroid/content/Context;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .prologue
    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_check_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mView:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mBtn:Landroid/widget/Button;

    .line 33
    iget-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 34
    iget-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->ico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mIco:Lcom/ts/other/CustomImgView;

    .line 35
    iget-object v1, p0, Lcom/ts/canview/CanItemCheckList;->mIco:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_check_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_check_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 36
    return-void
.end method

.method public GetBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetCheck(I)V
    .locals 2
    .param p1, "check"    # I

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mIco:Lcom/ts/other/CustomImgView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mIco:Lcom/ts/other/CustomImgView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0
.end method

.method public SetCheck(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mIco:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 51
    return-void
.end method

.method public SetIdClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "Id"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 73
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemCheckList;->ShowGone(Z)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemCheckList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
