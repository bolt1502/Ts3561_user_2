.class Lcom/txznet/comm/ui/T2/T2$5;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/T2/T2;->TR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/T2/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/T2/T2;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v3, v0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v3, v3, v0

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v4, v0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v4, v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 267
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v3, v0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v3, v3, v0

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v4, v0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v4, v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 268
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v2, v0, Lcom/txznet/comm/ui/T2/T2;->Tw:[I

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v1, v0, Lcom/txznet/comm/ui/T2/T2;->Ty:[Landroid/view/View;

    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$5;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 271
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 266
    goto :goto_0
.end method
