.class Lcom/ts/can/btobd/CanBtOBDActivity$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    .line 211
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 298
    return-void

    .line 217
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    const/4 v3, 0x1

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->refreshBondedDevices(Z)V
    invoke-static {v2, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$0(Lcom/ts/can/btobd/CanBtOBDActivity;Z)V

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    const/4 v3, 0x0

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->refreshBondedDevices(Z)V
    invoke-static {v2, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$0(Lcom/ts/can/btobd/CanBtOBDActivity;Z)V

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionBtStateChanged(I)V
    invoke-static {v2, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$1(Lcom/ts/can/btobd/CanBtOBDActivity;I)V

    goto :goto_0

    .line 231
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .line 232
    .local v0, "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    iget-object v2, v2, Lcom/ts/can/btobd/CanBtOBDActivity;->mDeviceCallback:Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 234
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$2(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 241
    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .line 242
    .restart local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    iget-object v2, v2, Lcom/ts/can/btobd/CanBtOBDActivity;->mDeviceCallback:Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    .line 250
    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .line 251
    .restart local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v3, v4}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$3(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 259
    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .line 260
    .restart local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 261
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v3, v4}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$4(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 268
    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :pswitch_8
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionProfileStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v2, v4, v5}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$5(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 276
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .line 277
    .restart local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$6(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 285
    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 286
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$1;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onActionConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$4(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
