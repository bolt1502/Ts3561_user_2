.class public Lcom/ts/set/setview/SetMainItemNoIcon;
.super Ljava/lang/Object;
.source "SetMainItemNoIcon.java"


# instance fields
.field private mTextTitle:Landroid/widget/TextView;

.field private mTextshowinfo:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetMainItemNoIcon;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 60
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/ts/MainUI/R$layout;->set_main_item_noicon:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->set_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mTextTitle:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->show_info:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mTextshowinfo:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mTextshowinfo:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    sget v3, Lcom/ts/MainUI/R$id;->set_arrow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .local v0, "iv":Landroid/widget/ImageView;
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_arrow:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetMainItemNoIcon;->Init(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetArrawShow(Z)V
    .locals 0
    .param p1, "bShow"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public SetUserCallback(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "nid"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public ShowEndInfo(I)V
    .locals 1
    .param p1, "nid"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mTextshowinfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    return-void
.end method

.method public ShowEndInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemNoIcon;->mTextshowinfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method
