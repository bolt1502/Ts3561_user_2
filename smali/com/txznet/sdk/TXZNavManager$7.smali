.class Lcom/txznet/sdk/TXZNavManager$7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZNavManager$NavStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZNavManager;->T2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZNavManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZNavManager;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "navPkg"    # Ljava/lang/String;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->unRegisterVoiceCmds()V

    .line 1021
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->resetAsrTask()V

    .line 1022
    return-void
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 1016
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->unRegisterVoiceCmds()V

    .line 1011
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->resetAsrTask()V

    .line 1012
    return-void
.end method

.method public onForeground(Z)V
    .locals 1
    .param p1, "isForeground"    # Z

    .prologue
    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->registerAgain()V

    .line 1006
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->unRegisterVoiceCmds()V

    goto :goto_0
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "navPkg"    # Ljava/lang/String;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$7;->T:Lcom/txznet/sdk/TXZNavManager;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/bean/NavVoicePlugin;->registerVoiceCmds(Ljava/lang/String;)V

    .line 997
    return-void
.end method
