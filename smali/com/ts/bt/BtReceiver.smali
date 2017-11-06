.class public Lcom/ts/bt/BtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtReceiver.java"


# static fields
.field private static final BROADCAST_REQUEST_HFPSTATUS:Ljava/lang/String; = "com.globalconstant.BROADCAST_REQUEST_HFPSTATUS"

.field private static D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothReceiver"

.field public static mCurState:I

.field public static mStaState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/bt/BtReceiver;->D:Z

    .line 52
    sput v1, Lcom/ts/bt/BtReceiver;->mCurState:I

    .line 53
    sput v1, Lcom/ts/bt/BtReceiver;->mStaState:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onActionBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    return-void
.end method

.method private onActionCallStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x4

    .line 78
    const-string v1, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 80
    .local v0, "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_1

    .line 81
    const-string v1, "BluetoothReceiver"

    const-string v2, "get callStatus fall!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-boolean v1, Lcom/ts/bt/BtReceiver;->D:Z

    if-eqz v1, :cond_2

    const-string v1, "BluetoothReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActionCallStateChanged:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    sput v1, Lcom/ts/bt/BtReceiver;->mCurState:I

    .line 87
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->updateCallSta()V

    .line 88
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->UpdateHfpSta()V

    .line 92
    sget v1, Lcom/ts/bt/BtReceiver;->mCurState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    sget v1, Lcom/ts/bt/BtReceiver;->mStaState:I

    if-eq v1, v4, :cond_3

    sget v1, Lcom/ts/bt/BtReceiver;->mStaState:I

    if-nez v1, :cond_4

    .line 93
    :cond_3
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    .line 95
    :cond_4
    sget v1, Lcom/ts/bt/BtReceiver;->mCurState:I

    sput v1, Lcom/ts/bt/BtReceiver;->mStaState:I

    .line 96
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 97
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 98
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 100
    sget-boolean v1, Lcom/ts/bt/BtReceiver;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothReceiver"

    const-string v2, "ignore callState !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_5
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    goto :goto_0
.end method

.method private onBluetoothAclDisconnected(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 165
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    .line 166
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->updateCallSta()V

    .line 167
    const/16 v1, 0x12

    invoke-static {v1, v0, v2, v2}, Lcom/ts/bt/BtExe;->dispatchMessage(ILjava/lang/Object;II)V

    .line 168
    return-void
.end method

.method private onBluetoothPairingRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v6, -0x80000000

    .line 120
    .line 121
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 123
    .local v1, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, "type":I
    sget-boolean v3, Lcom/ts/bt/BtReceiver;->D:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Pair] Device : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 157
    const-string v3, "BluetoothReceiver"

    const-string v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    :pswitch_0
    return-void

    .line 133
    :pswitch_1
    sget-object v3, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 142
    :pswitch_2
    const-string v3, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "passkey":I
    if-ne v0, v6, :cond_1

    .line 144
    const-string v3, "BluetoothReceiver"

    const-string v4, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ts/bt/BtCallMsgbox;->create(Landroid/content/Context;)V

    .line 59
    sget-boolean v1, Lcom/ts/bt/BtReceiver;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtReceiver;->onActionCallStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ts/bt/BtBaseActivity;->updateBtInfo()V

    .line 73
    return-void

    .line 62
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtReceiver;->onActionBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtReceiver;->onBluetoothPairingRequest(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_4
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/ts/bt/BtReceiver;->onBluetoothAclDisconnected(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_5
    const-string v1, "com.globalconstant.BROADCAST_REQUEST_HFPSTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->UpdateHfpSta()V

    goto :goto_0
.end method
