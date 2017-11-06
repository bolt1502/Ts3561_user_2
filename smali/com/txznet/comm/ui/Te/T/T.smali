.class public Lcom/txznet/comm/ui/Te/T/T;
.super Lcom/txznet/comm/ui/Te/T;
.source "Proguard"


# instance fields
.field private T:Landroid/widget/LinearLayout$LayoutParams;

.field private T2:Lcom/txznet/comm/ui/Te/T/T3;

.field private T3:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 18
    invoke-direct {p0}, Lcom/txznet/comm/ui/Te/T;-><init>()V

    .line 19
    new-instance v0, Lcom/txznet/comm/ui/Te/T/T3;

    invoke-direct {v0, p1}, Lcom/txznet/comm/ui/Te/T/T3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T2:Lcom/txznet/comm/ui/Te/T/T3;

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T3:Landroid/widget/LinearLayout;

    .line 21
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T3:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 22
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T3:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/T/T;->T2:Lcom/txznet/comm/ui/Te/T/T3;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/T3;->T()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/comm/ui/Te/T/T;->T:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    return-void
.end method


# virtual methods
.method public T()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public T(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T2:Lcom/txznet/comm/ui/Te/T/T3;

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/T/T3;->T(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T2:Lcom/txznet/comm/ui/Te/T/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T3;->T3()V

    .line 31
    return-void
.end method

.method public T3()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T/T;->T2:Lcom/txznet/comm/ui/Te/T/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T/T3;->T2()V

    .line 49
    return-void
.end method
