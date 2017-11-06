.class public Lcom/ts/set/setview/SetMainItemTopName;
.super Ljava/lang/Object;
.source "SetMainItemTopName.java"


# instance fields
.field public iv:Landroid/widget/Button;

.field private mTextTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetMainItemTopName;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->set_main_item_top:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemTopName;->mView:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemTopName;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_top_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemTopName;->mTextTitle:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemTopName;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemTopName;->iv:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetMainItemTopName;->Init(Landroid/content/Context;)V

    .line 36
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemTopName;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemTopName;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetArrawShow(Z)V
    .locals 0
    .param p1, "bShow"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public SetUserCallback(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "nid"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemTopName;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemTopName;->mView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
