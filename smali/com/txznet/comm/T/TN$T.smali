.class public Lcom/txznet/comm/T/TN$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# virtual methods
.method public T(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 46
    invoke-static {}, Lcom/txznet/comm/T/TN;->T2()Lcom/txznet/comm/T/TN$T3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/txznet/comm/T/TN;->T2()Lcom/txznet/comm/T/TN$T3;

    move-result-object v0

    invoke-interface {v0}, Lcom/txznet/comm/T/TN$T3;->T()V

    .line 49
    :cond_0
    return-void
.end method
