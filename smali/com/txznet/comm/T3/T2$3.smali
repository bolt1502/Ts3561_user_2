.class Lcom/txznet/comm/T3/T2$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2$T;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/T3/T2$T;

.field final synthetic T3:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;Lcom/txznet/comm/T3/T2$T;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$3;->T3:Lcom/txznet/comm/T3/T2;

    iput-object p2, p0, Lcom/txznet/comm/T3/T2$3;->T:Lcom/txznet/comm/T3/T2$T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/txznet/comm/T3/T2$3;->T3:Lcom/txznet/comm/T3/T2;

    invoke-static {v0}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/T3/T2$3;->T:Lcom/txznet/comm/T3/T2$T;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method
