.class public Lcom/txznet/comm/ui/Te/T/T3;
.super Lcom/txznet/comm/ui/Te/T;
.source "Proguard"


# instance fields
.field private T:Landroid/widget/ListView;

.field private T2:Landroid/content/Context;

.field private T3:Lcom/txznet/comm/ui/T/T;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T2:Landroid/content/Context;

    .line 21
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    .line 22
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 25
    new-instance v0, Lcom/txznet/comm/ui/T/T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T/T;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    .line 26
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    return-void
.end method


# virtual methods
.method public T()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    return-object v0
.end method

.method public T(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/T/T;->T(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public T2()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/T/T;->T()V

    .line 54
    new-instance v0, Lcom/txznet/comm/ui/T/T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/T/T;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    .line 55
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method public T3()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T3;->T3:Lcom/txznet/comm/ui/T/T;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/T/T;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 46
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T3;->T:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 48
    return-void
.end method
