.class public Lcom/ts/canview/CanItemTextBtnList;
.super Ljava/lang/Object;
.source "CanItemTextBtnList.java"


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mIco:Landroid/widget/ImageView;

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
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemTextBtnList;->Create(Landroid/content/Context;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .prologue
    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_textbtn_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemTextBtnList;->mView:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/ts/canview/CanItemTextBtnList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/canview/CanItemTextBtnList;->mBtn:Landroid/widget/Button;

    .line 33
    iget-object v1, p0, Lcom/ts/canview/CanItemTextBtnList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemTextBtnList;->mIco:Landroid/widget/ImageView;

    .line 34
    if-eqz p2, :cond_0

    .line 36
    iget-object v1, p0, Lcom/ts/canview/CanItemTextBtnList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 39
    :cond_0
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 94
    return-void
.end method

.method public SetIdClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "Id"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public SetVal(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 67
    return-void
.end method

.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public ShowArrow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mIco:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mIco:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 76
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemTextBtnList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
