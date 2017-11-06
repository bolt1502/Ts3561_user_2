.class final Lcom/txznet/comm/T3/T/TP$3;
.super Lcom/txznet/txz/util/T/T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T/TP;->T(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T3",
        "<",
        "Lcom/txznet/comm/T3/T/TP$T2;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T/TP$T2;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "x0"    # Lcom/txznet/comm/T3/T/TP$T2;
    .param p2, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/txznet/txz/util/T/T3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$3;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$3;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onCancel()V

    .line 346
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$3;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onEnd()V

    .line 348
    :cond_0
    return-void
.end method
