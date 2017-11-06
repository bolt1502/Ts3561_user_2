.class final Lcom/txznet/comm/T3/T/TJ$14;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T/TJ;->T3(Lcom/txznet/comm/T3/T/TJ$T3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T",
        "<",
        "Lcom/txznet/comm/T3/T/TJ$T3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T/TJ$T3;)V
    .locals 0
    .param p1, "x0"    # Lcom/txznet/comm/T3/T/TJ$T3;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/txznet/comm/T3/T/TJ;->T:Ljava/util/Set;

    iget-object v1, p0, Lcom/txznet/comm/T3/T/TJ$14;->T3:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method
