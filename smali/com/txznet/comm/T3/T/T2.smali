.class public Lcom/txznet/comm/T3/T/T2;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "comm.dialog."

    new-instance v1, Lcom/txznet/comm/T3/T/T2$1;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/T2$1;-><init>()V

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    .line 127
    return-void
.end method
