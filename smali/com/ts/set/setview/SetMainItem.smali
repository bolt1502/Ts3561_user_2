.class public Lcom/ts/set/setview/SetMainItem;
.super Ljava/lang/Object;
.source "SetMainItem.java"


# instance fields
.field ImageTitle:Landroid/widget/ImageView;

.field ImageTitle2:Landroid/widget/ImageView;

.field private mTextInfo:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetMainItem;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->del_main_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    .line 56
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItem;->mTextTitle:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItem;->ImageTitle:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItem;->ImageTitle2:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItem;->ImageTitle2:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->del_arrow:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetMainItem;->Init(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItem;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public GetImageTile()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItem;->ImageTitle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public Gettextinfo()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItem;->mTextInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method public SetUserCallback(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "nid"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItem;->mView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
