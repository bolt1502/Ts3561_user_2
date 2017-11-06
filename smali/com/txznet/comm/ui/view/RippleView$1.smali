.class Lcom/txznet/comm/ui/view/RippleView$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/view/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/view/RippleView;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/view/RippleView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView$1;->T:Lcom/txznet/comm/ui/view/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView$1;->T:Lcom/txznet/comm/ui/view/RippleView;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/view/RippleView;->invalidate()V

    .line 90
    return-void
.end method
