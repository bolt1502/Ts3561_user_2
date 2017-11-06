.class public Lcom/ts/other/CustomTextView;
.super Landroid/widget/TextView;
.source "CustomTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ts/other/CustomTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public GetId()I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/ts/other/CustomTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "ret":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    :goto_0
    return v1

    .restart local v0    # "ret":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public SetId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->setTag(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public SetPixelSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/ts/other/CustomTextView;->setTextSize(IF)V

    .line 41
    return-void
.end method

.method public SetPxSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    int-to-double v1, p1

    const-wide v3, 0x3ff4cccccccccccdL    # 1.3

    div-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ts/other/CustomTextView;->setTextSize(IF)V

    .line 36
    return-void
.end method

.method public SetSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    div-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ts/other/CustomTextView;->setTextSize(IF)V

    .line 31
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->ShowGone(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowHide(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowHide(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomTextView;->setVisibility(I)V

    goto :goto_0
.end method
