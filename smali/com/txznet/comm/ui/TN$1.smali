.class Lcom/txznet/comm/ui/TN$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/Ty/T$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/TN;->T3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/TN;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/TN;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "onResLoaded"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 114
    new-instance v0, Lcom/txznet/comm/ui/TN$1$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/TN$1$1;-><init>(Lcom/txznet/comm/ui/TN$1;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 163
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorDsp"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load skin apk error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v0}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v0

    invoke-interface {v0}, Lcom/txznet/comm/ui/TN$T;->T3()V

    .line 170
    :cond_0
    return-void
.end method
