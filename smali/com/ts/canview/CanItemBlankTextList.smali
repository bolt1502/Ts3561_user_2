.class public Lcom/ts/canview/CanItemBlankTextList;
.super Ljava/lang/Object;
.source "CanItemBlankTextList.java"


# instance fields
.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemBlankTextList;->Create(Landroid/content/Context;I)V

    .line 18
    if-eqz p2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemBlankTextList;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_blanktext_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemBlankTextList;->mView:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/ts/canview/CanItemBlankTextList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/canview/CanItemBlankTextList;->mVal:Landroid/widget/TextView;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanItemBlankTextList;->SetBold(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/ts/canview/CanItemBlankTextList;->Init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ts/canview/CanItemBlankTextList;->Init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetBold(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 38
    return-void
.end method

.method public SetVal(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    return-void
.end method

.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemBlankTextList;->ShowGone(Z)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemBlankTextList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
