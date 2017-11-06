.class public Lcom/txznet/comm/ui/view/BoundedLinearLayout;
.super Landroid/widget/FrameLayout;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field private T:I

.field private T3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 41
    .local v2, "measuredWidth":I
    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    if-ge v3, v2, :cond_0

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 43
    .local v0, "measureMode":I
    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 46
    .end local v0    # "measureMode":I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 47
    .local v1, "measuredHeight":I
    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    if-ge v3, v1, :cond_1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 49
    .restart local v0    # "measureMode":I
    iget v3, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 51
    .end local v0    # "measureMode":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 52
    return-void
.end method

.method public setBoundedHeight(I)V
    .locals 0
    .param p1, "mBoundedHeight"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T3:I

    .line 34
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->invalidate()V

    .line 35
    return-void
.end method

.method public setBoundedWidth(I)V
    .locals 0
    .param p1, "mBoundedWidth"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->T:I

    .line 28
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/BoundedLinearLayout;->invalidate()V

    .line 30
    return-void
.end method
