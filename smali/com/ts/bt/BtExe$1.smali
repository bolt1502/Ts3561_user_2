.class Lcom/ts/bt/BtExe$1;
.super Ljava/lang/Object;
.source "BtExe.java"

# interfaces
.implements Lcom/autochips/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtExe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 572
    # getter for: Lcom/ts/bt/BtExe;->D:Z
    invoke-static {}, Lcom/ts/bt/BtExe;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const-string v0, "BtExe"

    const-string v1, "onServiceConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 575
    :try_start_0
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    .line 576
    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getHeadsetClientProfile()Lcom/autochips/bluetooth/HeadsetClientProfile;

    move-result-object v0

    .line 575
    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$1(Lcom/autochips/bluetooth/HeadsetClientProfile;)V

    .line 577
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getA2dpSinkProfile()Lcom/autochips/bluetooth/A2dpSinkProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$2(Lcom/autochips/bluetooth/A2dpSinkProfile;)V

    .line 578
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalProfileManager:Lcom/autochips/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager;->getAvrcpCtProfile()Lcom/autochips/bluetooth/AvrcpControllerProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$3(Lcom/autochips/bluetooth/AvrcpControllerProfile;)V

    .line 579
    sget-object v0, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autochips/bluetooth/BluetoothPBManager;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$4(Lcom/autochips/bluetooth/BluetoothPBManager;)V

    .line 580
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->regPBCallback()V

    .line 584
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->regPlayerUtility()V

    .line 585
    # getter for: Lcom/ts/bt/BtExe;->mIsAutoConnect:Z
    invoke-static {}, Lcom/ts/bt/BtExe;->access$5()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/ts/bt/BtExe;->mbNeedAutoConnect:Z
    invoke-static {}, Lcom/ts/bt/BtExe;->access$6()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->connect()V

    .line 574
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    const/4 v0, 0x0

    invoke-static {v2, v0, v2, v2}, Lcom/ts/bt/BtExe;->dispatchMessage(ILjava/lang/Object;II)V

    .line 590
    return-void

    .line 574
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 594
    # getter for: Lcom/ts/bt/BtExe;->D:Z
    invoke-static {}, Lcom/ts/bt/BtExe;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-string v0, "BtExe"

    const-string v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    sget-object v1, Lcom/ts/bt/BtExe;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 597
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$1(Lcom/autochips/bluetooth/HeadsetClientProfile;)V

    .line 598
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$2(Lcom/autochips/bluetooth/A2dpSinkProfile;)V

    .line 599
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ts/bt/BtExe;->access$3(Lcom/autochips/bluetooth/AvrcpControllerProfile;)V

    .line 596
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->unregPBCallback()V

    .line 602
    const/4 v0, 0x1

    invoke-static {v0, v2, v3, v3}, Lcom/ts/bt/BtExe;->dispatchMessage(ILjava/lang/Object;II)V

    .line 603
    return-void

    .line 596
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
