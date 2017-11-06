.class Lcom/txznet/comm/ui/T2/T2$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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
    .line 197
    iput-object p1, p0, Lcom/txznet/comm/ui/T2/T2$4;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$4;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v1, p0, Lcom/txznet/comm/ui/T2/T2$4;->T:Lcom/txznet/comm/ui/T2/T2;

    iget-object v1, v1, Lcom/txznet/comm/ui/T2/T2;->TN:Lcom/txznet/comm/ui/T2/T2$T;

    iget-object v1, v1, Lcom/txznet/comm/ui/T2/T2$T;->TN:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/T2/T2;->T(Lcom/txznet/comm/ui/T2/T2;Landroid/widget/TextView;)V

    .line 201
    const/4 v0, 0x1

    return v0
.end method
