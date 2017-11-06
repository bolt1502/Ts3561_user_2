.class public Lcom/ts/canview/CanItemIcoVal;
.super Ljava/lang/Object;
.source "CanItemIcoVal.java"


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mIco:Landroid/widget/ImageView;

.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "text"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/canview/CanItemIcoVal;->Create(Landroid/content/Context;II)V

    .line 30
    return-void
.end method

.method private Init(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_ico_val:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    .line 49
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mBtn:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->ico:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mIco:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mIco:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->val:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/canview/CanItemIcoVal;->mVal:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ico"    # I
    .param p3, "text"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ts/canview/CanItemIcoVal;->Init(Landroid/content/Context;I)V

    .line 35
    if-eqz p3, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public GetBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetIdClickListener(Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "Id"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public SetVal(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 92
    if-lez p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 75
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(Z)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemIcoVal;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
