.class Lcom/ts/can/btobd/CanBtOBDActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "CanBtOBDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/btobd/CanBtOBDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/btobd/CanBtOBDActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$4;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    .line 852
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 856
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$4;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->bt:Lcom/ts/bt/BtExe;
    invoke-static {v1}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$11(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->getOBDAddr()V

    .line 858
    sget-object v1, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    sget-object v1, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    .line 860
    sget-object v2, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 861
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    sget-object v1, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 862
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 869
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$4;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mIvSearch:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$12(Lcom/ts/can/btobd/CanBtOBDActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
