.class public Lcom/ts/canview/CanItemIcoList;
.super Ljava/lang/Object;
.source "CanItemIcoList.java"


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mBtn:Landroid/widget/Button;

.field private mIco:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "text"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/canview/CanItemIcoList;->Create(Landroid/content/Context;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "text"    # I
    .param p4, "type"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/canview/CanItemIcoList;->Create(Landroid/content/Context;III)V

    .line 33
    return-void
.end method

.method private Init(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I

    .prologue
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_ico_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mBtn:Landroid/widget/Button;

    .line 66
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->ico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mIco:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mIco:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mArrow:Landroid/widget/ImageView;

    .line 70
    return-void
.end method

.method private Init(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "type"    # I

    .prologue
    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_ico_list_1280x480:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mBtn:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->ico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mIco:Landroid/widget/ImageView;

    .line 78
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mIco:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoList;->mArrow:Landroid/widget/ImageView;

    .line 81
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "text"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;->Init(Landroid/content/Context;I)V

    .line 38
    if-eqz p3, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public Create(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "text"    # I
    .param p4, "type"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p4}, Lcom/ts/canview/CanItemIcoList;->Init(Landroid/content/Context;II)V

    .line 51
    if-eqz p3, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public GetBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetIdClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "Id"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public ShowArrow(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 118
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemIcoList;->ShowArrow(Z)V

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowArrow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 101
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
