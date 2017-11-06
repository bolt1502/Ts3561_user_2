.class Lcom/txznet/comm/ui/Te/TN$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Te/TN;->T3(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Landroid/view/View;

.field final synthetic T3:Lcom/txznet/comm/ui/Te/TN;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Te/TN;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/txznet/comm/ui/Te/TN$1;->T3:Lcom/txznet/comm/ui/Te/TN;

    iput-object p2, p0, Lcom/txznet/comm/ui/Te/TN$1;->T:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/txznet/comm/ui/Te/TN$1;->T3:Lcom/txznet/comm/ui/Te/TN;

    invoke-static {v0}, Lcom/txznet/comm/ui/Te/TN;->T(Lcom/txznet/comm/ui/Te/TN;)Lcom/txznet/comm/ui/Te/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Te/TN$1;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Te/T2;->T(Landroid/view/View;)V

    .line 192
    return-void
.end method
