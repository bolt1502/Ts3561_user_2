.class public Lcom/ts/backcar/RightCameraActivity;
.super Landroid/app/Activity;
.source "RightCameraActivity.java"


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/ts/backcar/RightCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/backcar/RightCameraActivity$1;-><init>(Lcom/ts/backcar/RightCameraActivity;)V

    iput-object v0, p0, Lcom/ts/backcar/RightCameraActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    sget v0, Lcom/ts/MainUI/R$layout;->activity_avin_main:I

    invoke-virtual {p0, v0}, Lcom/ts/backcar/RightCameraActivity;->setContentView(I)V

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 28
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ts/backcar/RightCameraActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ts/backcar/RightCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 41
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 42
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v2

    sget v1, Lcom/ts/MainUI/R$id;->textureView:I

    invoke-virtual {p0, v1}, Lcom/ts/backcar/RightCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v2, v1}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "forfan.right.camera.switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/ts/backcar/RightCameraActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ts/backcar/RightCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method
