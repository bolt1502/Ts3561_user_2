.class Lcom/txznet/sdk/TXZSysManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSysManager;->setMuteAllTool(Lcom/txznet/sdk/TXZSysManager$MuteAllTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZSysManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZSysManager;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager$2;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 209
    const-string v0, "mute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager$2;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZSysManager;->T3(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZSysManager$MuteAllTool;->mute(Z)V

    .line 214
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_1
    const-string v0, "unmute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager$2;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZSysManager;->T3(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZSysManager$MuteAllTool;->mute(Z)V

    goto :goto_0
.end method
