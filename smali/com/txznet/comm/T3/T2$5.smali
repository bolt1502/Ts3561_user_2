.class Lcom/txznet/comm/T3/T2$5;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/Runnable;

.field final synthetic T3:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$5;->T3:Lcom/txznet/comm/T3/T2;

    iput-object p2, p0, Lcom/txznet/comm/T3/T2$5;->T:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 3
    .param p1, "data"    # Lcom/txznet/comm/T3/T2$T2;

    .prologue
    .line 744
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$5;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$5;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    .line 747
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$5;->T3:Lcom/txznet/comm/T3/T2;

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$5;->T:Ljava/lang/Runnable;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
