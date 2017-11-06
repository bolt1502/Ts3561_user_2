.class Lcom/txznet/comm/ui/Tw/Tw$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/Tw/Tw;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/Tw/Tw;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/Tw/Tw;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/Tw$4;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw$4;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T(Lcom/txznet/comm/ui/Tw/Tw;)V

    .line 216
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw$4;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T3(Lcom/txznet/comm/ui/Tw/Tw;)V

    .line 217
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw$4;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T2(Lcom/txznet/comm/ui/Tw/Tw;)Lcom/txznet/comm/ui/Te/T2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/Tw$4;->T:Lcom/txznet/comm/ui/Tw/Tw;

    invoke-static {v0}, Lcom/txznet/comm/ui/Tw/Tw;->T2(Lcom/txznet/comm/ui/Tw/Tw;)Lcom/txznet/comm/ui/Te/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T2;->T()V

    .line 220
    :cond_0
    return-void
.end method
