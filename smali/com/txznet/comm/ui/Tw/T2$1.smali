.class Lcom/txznet/comm/ui/Tw/T2$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/Tw/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Tw/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/T2;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/T2$1;->T:Lcom/txznet/comm/ui/Tw/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2$1;->T:Lcom/txznet/comm/ui/Tw/T2;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/T2;->T(Lcom/txznet/comm/ui/Tw/T2;)Lcom/txznet/comm/ui/Tw/Tw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2$1;->T:Lcom/txznet/comm/ui/Tw/T2;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/T2;->T(Lcom/txznet/comm/ui/Tw/T2;)Lcom/txznet/comm/ui/Tw/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Tw;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/T2$1;->T:Lcom/txznet/comm/ui/Tw/T2;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/T2;->T3(Lcom/txznet/comm/ui/Tw/T2;)V

    .line 77
    :cond_0
    return-void
.end method
