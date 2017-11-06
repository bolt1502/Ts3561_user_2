.class final Lcom/txznet/comm/T3/T/TJ$5;
.super Lcom/txznet/comm/T3/T/TJ$T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/TJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/txznet/comm/T3/T/TJ$T;-><init>()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TJ$5;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TJ;->T(Z)Z

    .line 231
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TJ$5;->T3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TJ;->T3(Z)Z

    .line 232
    iget-object v0, p0, Lcom/txznet/comm/T3/T/TJ$5;->T2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TJ;->T2(Z)Z

    .line 233
    return-void
.end method
