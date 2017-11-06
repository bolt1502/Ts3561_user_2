.class public abstract Lcom/txznet/comm/ui/Te/T2;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field protected T:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(ILandroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/txznet/comm/ui/Te/T2;->T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract T(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Object;
.end method

.method public abstract T()V
.end method

.method public abstract T(Landroid/view/View;)V
.end method

.method public T2()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/T2;->T:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public abstract T3()V
.end method

.method public TN()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
