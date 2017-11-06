.class Lcom/ts/main/txz/TxzReg$11;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Lcom/txznet/sdk/TXZConfigManager$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg;->Inint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "errDesc"    # Ljava/lang/String;

    .prologue
    .line 2087
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    const/16 v1, 0xc8

    iput v1, v0, Lcom/ts/main/common/MainUI;->nDelayToVoice:I

    .line 2088
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    .line 2089
    const-string v0, "TxzReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txz initialize faile"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2030
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/txznet/sdk/TXZConfigManager;->setUseHQualityWakeupModel(Z)V

    .line 2032
    const-string v0, "TxzReg"

    const-string v1, "txz initialize ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->RegistUserDefault()V

    .line 2034
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.papago.s1OBU"

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->InintNaviManage()V

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    iput-boolean v4, v0, Lcom/ts/main/txz/TxzReg;->bIsConnect:Z

    .line 2039
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    # invokes: Lcom/ts/main/txz/TxzReg;->InintRadio()V
    invoke-static {v0}, Lcom/ts/main/txz/TxzReg;->access$3(Lcom/ts/main/txz/TxzReg;)V

    .line 2040
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->InintBT()V

    .line 2041
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->UpdatePbMap()V

    .line 2042
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->SetUserCommand()V

    .line 2043
    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.txznet.music"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZMusicManager;->setNotOpenAppPName([Ljava/lang/String;)V

    .line 2045
    sget v0, Lcom/ts/main/common/MainSet;->nPlayer:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2047
    invoke-static {}, Lcom/ts/main/txz/hongfan/HFAudioTool;->getInstance()Lcom/ts/main/txz/hongfan/HFAudioTool;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/ts/main/txz/Cyb;->GetInstance()Lcom/ts/main/txz/Cyb;

    move-result-object v2

    iget-object v2, v2, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/txz/hongfan/HFAudioTool;->init(Landroid/content/Context;Lcom/hongfans/carmedia/MediaAPI;)V

    .line 2049
    invoke-static {}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->getInstance()Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/ts/main/txz/Cyb;->GetInstance()Lcom/ts/main/txz/Cyb;

    move-result-object v2

    iget-object v2, v2, Lcom/ts/main/txz/Cyb;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->init(Landroid/content/Context;Lcom/hongfans/carmedia/MediaAPI;)V

    .line 2051
    :cond_1
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    # invokes: Lcom/ts/main/txz/TxzReg;->InitSenceTool()V
    invoke-static {v0}, Lcom/ts/main/txz/TxzReg;->access$4(Lcom/ts/main/txz/TxzReg;)V

    .line 2052
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->SetVoiceState()V

    .line 2053
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->AddListenser()V

    .line 2055
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    .line 2056
    const-string v1, "RS_VOICE_UNKNOW_LOCAL"

    const-string v2, "\u8bc6\u522b\u4e0d\u4e86\u8be5\u6307\u4ee4"

    .line 2055
    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager;->setTextResourceString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->InintLinMin()V

    .line 2059
    const-string v0, "TxzReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txz FtSet.GetXuNiDisc()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetXuNiDisc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-static {}, Lcom/txznet/sdk/TXZStatusManager;->getInstance()Lcom/txznet/sdk/TXZStatusManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/TxzReg$11$1;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/TxzReg$11$1;-><init>(Lcom/ts/main/txz/TxzReg$11;)V

    .line 2067
    new-instance v2, Lcom/ts/main/txz/TxzReg$11$2;

    invoke-direct {v2, p0}, Lcom/ts/main/txz/TxzReg$11$2;-><init>(Lcom/ts/main/txz/TxzReg$11;)V

    .line 2061
    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZStatusManager;->setAudioFocusLogic(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2074
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    iput-boolean v3, v0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    .line 2075
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2077
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$11;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    .line 2081
    :cond_2
    return-void
.end method
