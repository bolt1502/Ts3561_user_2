.class final Lcom/txznet/comm/T3/T/TJ$8;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    sget-object v2, Lcom/txznet/comm/T3/T/TJ;->T:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T/TJ$T3;

    .line 82
    .local v1, "l":Lcom/txznet/comm/T3/T/TJ$T3;
    invoke-interface {v1}, Lcom/txznet/comm/T3/T/TJ$T3;->onEndAsr()V

    goto :goto_0

    .line 83
    .end local v1    # "l":Lcom/txznet/comm/T3/T/TJ$T3;
    :cond_0
    return-void
.end method
