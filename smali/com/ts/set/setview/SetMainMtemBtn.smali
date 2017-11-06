.class public Lcom/ts/set/setview/SetMainMtemBtn;
.super Ljava/lang/Object;
.source "SetMainMtemBtn.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mTextTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetMainMtemBtn;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->set_main_item_btn:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mView:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mTextTitle:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mButton:Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetMainMtemBtn;->Init(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetBtnFormat(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 37
    return-void
.end method

.method public SetBtnUserCallback(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "nid"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mButton:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public SetTileText(Ljava/lang/String;)V
    .locals 1
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ts/set/setview/SetMainMtemBtn;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
