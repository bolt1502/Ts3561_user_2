.class public Lcom/ts/backcar/BackcarMainActivity;
.super Landroid/app/Activity;
.source "BackcarMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackcarMainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopActivity()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/backcar/BackcarMainActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/ts/backcar/BackcarMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    invoke-virtual {p0}, Lcom/ts/backcar/BackcarMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 36
    invoke-virtual {p0}, Lcom/ts/backcar/BackcarMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ts/backcar/BackcarMainActivity;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetSrcMute(I)V

    .line 46
    const-string v0, "scj"

    const-string v1, "back car onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ts/main/common/CanInterface;->EnterCamera(I)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 51
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    .line 52
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "scj"

    const-string v1, "back car onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetSrcMute(I)V

    .line 64
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 65
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/backcar/BackcarService;->setActivity(Landroid/app/Activity;)V

    .line 66
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 67
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 68
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    .line 69
    sget-object v0, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/ts/main/common/MainUI;->mCanInterface:Lcom/ts/main/common/CanInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ts/main/common/CanInterface;->EnterCamera(I)V

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    return-void
.end method
