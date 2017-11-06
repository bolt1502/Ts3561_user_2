.class Lcom/txznet/comm/ui/TN$1$1$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/TN$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/TN$1$1$1;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/TN$1$1$1;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/txznet/comm/ui/TN$1$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "UI2.0 init success"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v0

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/TN;->Ty()Lcom/txznet/comm/ui/Te/T2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw/T3;->T(Lcom/txznet/comm/ui/Te/T2;)V

    .line 147
    iget-object v0, p0, Lcom/txznet/comm/ui/TN$1$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1$1;

    iget-object v0, v0, Lcom/txznet/comm/ui/TN$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1;

    iget-object v0, v0, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    iget-object v0, v0, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/txznet/comm/ui/TN$1$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1$1;

    iget-object v0, v0, Lcom/txznet/comm/ui/TN$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1;

    iget-object v0, v0, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    iget-object v0, v0, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v0

    invoke-interface {v0}, Lcom/txznet/comm/ui/TN$T;->T()V

    .line 150
    :cond_0
    return-void
.end method
