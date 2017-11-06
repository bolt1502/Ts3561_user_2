.class public Lcom/txznet/T3/T/Te;
.super Landroid/app/Dialog;
.source "Proguard"


# instance fields
.field T:Landroid/content/Context;

.field private T2:Landroid/widget/Button;

.field private T3:Landroid/widget/EditText;

.field private TN:Landroid/widget/Button;

.field private Te:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget v0, Lcom/txznet/txz/comm/R$style;->TXZ_Dialog_Style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/txznet/T3/T/Te;->T:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/txznet/T3/T/Te;->T2()V

    .line 24
    return-void
.end method

.method static synthetic T(Lcom/txznet/T3/T/Te;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/T3/T/Te;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    return-object v0
.end method

.method private T2()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/txznet/T3/T/Te;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/txznet/txz/comm/R$layout;->layout_edit:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 30
    .local v2, "mView":Landroid/view/View;
    sget v5, Lcom/txznet/txz/comm/R$id;->txt_dialogTitle:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->Te:Landroid/widget/TextView;

    .line 31
    sget v5, Lcom/txznet/txz/comm/R$id;->et_command:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    .line 32
    sget v5, Lcom/txznet/txz/comm/R$id;->commit_editCommand:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->T2:Landroid/widget/Button;

    .line 33
    sget v5, Lcom/txznet/txz/comm/R$id;->cancel_editCommand:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/txznet/T3/T/Te;->TN:Landroid/widget/Button;

    .line 35
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 36
    .local v3, "w":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 37
    .local v0, "h":I
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 39
    .local v4, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 40
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/txznet/T3/T/Te;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/Window;->setLayout(II)V

    .line 41
    iget-object v5, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    new-instance v6, Lcom/txznet/T3/T/Te$1;

    invoke-direct {v6, p0}, Lcom/txznet/T3/T/Te$1;-><init>(Lcom/txznet/T3/T/Te;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    invoke-super {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method


# virtual methods
.method public T()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/txznet/T3/T/Te;->T3:Landroid/widget/EditText;

    return-object v0
.end method

.method public T(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/txznet/T3/T/Te;->T2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public T3()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/txznet/T3/T/Te;->Te:Landroid/widget/TextView;

    return-object v0
.end method

.method public T3(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/txznet/T3/T/Te;->TN:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 91
    return-void
.end method
