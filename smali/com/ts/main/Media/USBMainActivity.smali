.class public Lcom/ts/main/Media/USBMainActivity;
.super Landroid/app/Activity;
.source "USBMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainSet;->FtSetInint()I

    .line 33
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.mxtech.videoplayer.pro"

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.mxtech.videoplayer.pro"

    invoke-virtual {v0, p0, v1}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/ts/main/Media/USBMainActivity;->overridePendingTransition(II)V

    .line 46
    invoke-virtual {p0}, Lcom/ts/main/Media/USBMainActivity;->finish()V

    .line 47
    invoke-virtual {p0, v2, v2}, Lcom/ts/main/Media/USBMainActivity;->overridePendingTransition(II)V

    .line 48
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, p0, v1}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/ts/main/common/WinShow;->ShowVideoWin()V

    goto :goto_0
.end method
