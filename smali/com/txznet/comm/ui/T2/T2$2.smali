.class Lcom/txznet/comm/ui/T2/T2$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/T2/T2;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/T2/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/T2/T2;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/txznet/comm/ui/T2/T2$2;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$2;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-static {v0}, Lcom/txznet/comm/ui/T2/T2;->T(Lcom/txznet/comm/ui/T2/T2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$2;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->T3:Landroid/view/View;

    const-string v1, "#444a51"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$2;->T:Lcom/txznet/comm/ui/T2/T2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/T2/T2;->T(Lcom/txznet/comm/ui/T2/T2;Z)Z

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$2;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v0, v0, Lcom/txznet/comm/ui/T2/T2$T;->T3:Landroid/view/View;

    const-string v1, "#444a50"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$2;->T:Lcom/txznet/comm/ui/T2/T2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/T2/T2;->T(Lcom/txznet/comm/ui/T2/T2;Z)Z

    goto :goto_0
.end method
