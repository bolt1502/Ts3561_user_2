.class final Lcom/txznet/comm/T3/T/TP$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T2:Ljava/lang/Integer;

.field final synthetic T3:Lcom/txznet/comm/T3/T/TP$T2;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T2;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/txznet/comm/T3/T/TP$4;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iput-object p3, p0, Lcom/txznet/comm/T3/T/TP$4;->T2:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T:Ljava/lang/String;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onSuccess()V

    .line 374
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onEnd()V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onCancel()V

    .line 377
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onEnd()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    iget-object v1, p0, Lcom/txznet/comm/T3/T/TP$4;->T2:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T/TP$T;->onError(I)V

    .line 380
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TP$4;->T3:Lcom/txznet/comm/T3/T/TP$T2;

    iget-object v0, v0, Lcom/txznet/comm/T3/T/TP$T2;->T2:Lcom/txznet/comm/T3/T/TP$T;

    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TP$T;->onEnd()V

    goto :goto_0
.end method
