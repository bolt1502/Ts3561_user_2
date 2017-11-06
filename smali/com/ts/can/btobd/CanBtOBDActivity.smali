.class public Lcom/ts/can/btobd/CanBtOBDActivity;
.super Landroid/app/Activity;
.source "CanBtOBDActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;,
        Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field private static final D:Z = true

.field private static final DEFAULT_DISCOVERABLE_TIMEOUT:I = -0x1

.field private static final PARING_REQUEST_INTENT:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field private static final REMOTE_CONNECT_STATE:Ljava/lang/String; = "remote_connect_status"

.field private static final REMOTE_DEVICE_MACADDR:Ljava/lang/String; = "remote_device_macaddr"

.field private static final REMOTE_DEVICE_NAME:Ljava/lang/String; = "remote_device_name"

.field private static final TAG:Ljava/lang/String; = "BtPairedHistoryActivity"


# instance fields
.field private ODBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private bt:Lcom/ts/bt/BtExe;

.field private isBonded:Z

.field private mBluetoothPairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

.field private mBluetoothUnpairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

.field mDeviceCallback:Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;

.field private mDvdGotoDialog:Lcom/ts/can/btobd/OBDPiniInputDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIvSearch:Landroid/widget/ImageView;

.field private mPairedClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->bt:Lcom/ts/bt/BtExe;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->isBonded:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mPosition:I

    .line 211
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/btobd/CanBtOBDActivity$1;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mHandler:Landroid/os/Handler;

    .line 354
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/can/btobd/CanBtOBDActivity$2;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mPairedClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 822
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$3;

    invoke-direct {v0, p0}, Lcom/ts/can/btobd/CanBtOBDActivity$3;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mDeviceCallback:Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;

    .line 852
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$4;

    invoke-direct {v0, p0}, Lcom/ts/can/btobd/CanBtOBDActivity$4;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->ODBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/btobd/CanBtOBDActivity;Z)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/ts/can/btobd/CanBtOBDActivity;->refreshBondedDevices(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/can/btobd/CanBtOBDActivity;I)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionBtStateChanged(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/ts/can/btobd/CanBtOBDActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->bt:Lcom/ts/bt/BtExe;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ts/can/btobd/CanBtOBDActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mIvSearch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0, p1, p2}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0, p1, p2}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1, p2, p3}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionProfileStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$6(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0, p1, p2}, Lcom/ts/can/btobd/CanBtOBDActivity;->onClickSelect(Landroid/widget/ListView;I)V

    return-void
.end method

.method private onActionBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    const/4 v6, -0x1

    .line 581
    if-nez p1, :cond_1

    .line 582
    const-string v3, "BtPairedHistoryActivity"

    const-string v4, "onActionBondStateChanged, get device fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const-string v3, "BtPairedHistoryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bondState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v3, 0xc

    if-ne p2, v3, :cond_5

    .line 589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 598
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 605
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 607
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "remote_device_name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v3, "remote_device_macaddr"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v3, v6}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->setSelect(I)V

    .line 611
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    .line 612
    const-string v3, ""

    sput-object v3, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    goto :goto_0

    .line 590
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 591
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 589
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 613
    .end local v0    # "i":I
    :cond_5
    const/16 v3, 0xa

    if-ne p2, v3, :cond_0

    .line 614
    iget-boolean v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->isBonded:Z

    if-eqz v3, :cond_6

    .line 615
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v3, v6}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->setSelect(I)V

    .line 616
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    .line 617
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->isBonded:Z

    .line 620
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_9

    .line 629
    :goto_5
    const/4 v0, 0x0

    :goto_6
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_b

    .line 637
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "nameString1":Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 639
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 641
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 642
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "remote_device_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v3, "remote_device_macaddr"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 621
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "nameString1":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 622
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 623
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 620
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 630
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private onActionBtStateChanged(I)V
    .locals 4
    .param p1, "btState"    # I

    .prologue
    const/4 v3, 0x1

    .line 496
    const-string v0, "BtPairedHistoryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActionBtStateChanged:state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 507
    :goto_0
    :pswitch_0
    return-void

    .line 499
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->refreshBondedDevices(Z)V

    .line 500
    invoke-direct {p0, v3}, Lcom/ts/can/btobd/CanBtOBDActivity;->setBluetoothDiscoverability(Z)V

    goto :goto_0

    .line 504
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->refreshBondedDevices(Z)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onActionConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 651
    if-nez p1, :cond_1

    .line 652
    const-string v4, "BtPairedHistoryActivity"

    const-string v5, "onActionBondStateChanged, get device fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    move v3, p2

    .line 658
    .local v3, "newState":I
    const-string v4, "BtPairedHistoryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "device:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connectState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 662
    :pswitch_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 663
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 664
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "remote_device_macaddr"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v4}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 662
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    const-string v4, "BtPairedHistoryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uuid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 674
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v4}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 675
    sget-object v4, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 676
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 678
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 679
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v4}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    .line 673
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onActionDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 510
    if-eqz p1, :cond_1

    .line 511
    const-string v3, "BtPairedHistoryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "find device "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 513
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string v3, "BtPairedHistoryActivity"

    const-string v4, "find device null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_2
    const/16 v3, 0xc

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 529
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "remote_device_macaddr"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "nameString":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 533
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 535
    :cond_4
    const-string v3, "remote_device_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 524
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "nameString":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 525
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "remote_device_name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 523
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_a

    .line 551
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 552
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "remote_device_macaddr"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 554
    .restart local v2    # "nameString":Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 555
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 557
    :cond_9
    const-string v3, "remote_device_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 544
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "nameString":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 545
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    :cond_b
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "remote_device_name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 543
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private onActionDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 566
    if-nez p1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "curAddr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 569
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 570
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "remote_device_macaddr"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    const-string v4, "remote_device_name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v4}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 568
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private onActionProfileStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    .line 694
    packed-switch p2, :pswitch_data_0

    .line 708
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 716
    :goto_1
    return-void

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 710
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "remote_device_macaddr"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 708
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private onClickConnect()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 734
    const-string v4, "BtPairedHistoryActivity"

    const-string v5, "onClick cnnect!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v4, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    const-string v2, ""

    .line 739
    .local v2, "deviceAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 741
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v4}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->getSelect()I

    move-result v3

    .line 742
    .local v3, "selectIndex":I
    if-eq v3, v6, :cond_2

    .line 743
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 744
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deviceAddr":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 754
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 755
    sget-object v4, Lcom/ts/bt/BtExe;->mDeviceManager:Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 756
    .local v0, "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 757
    const-string v4, "BtPairedHistoryActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cnnect device:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sput-object v2, Lcom/ts/bt/BtExe;->mLastOBDAddr:Ljava/lang/String;

    .line 759
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v4}, Lcom/ts/bt/BtExe;->saveOBDAddr()V

    .line 760
    invoke-virtual {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->startPairing()Z

    goto :goto_0

    .line 745
    .end local v0    # "cachedDevice":Lcom/autochips/bluetooth/CachedBluetoothDevice;
    :cond_2
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v4}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->getSelect()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 746
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 747
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deviceAddr":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 748
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 749
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 750
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deviceAddr":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 751
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    goto :goto_1
.end method

.method private onClickScan()V
    .locals 2

    .prologue
    .line 719
    const-string v0, "BtPairedHistoryActivity"

    const-string v1, "onClick scan!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 721
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 725
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    .line 726
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 727
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mIvSearch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onClickSelect(Landroid/widget/ListView;I)V
    .locals 7
    .param p1, "view"    # Landroid/widget/ListView;
    .param p2, "index"    # I

    .prologue
    const/4 v6, -0x1

    .line 791
    const-string v4, "BtPairedHistoryActivity"

    const-string v5, "onClickSelect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v1, ""

    .line 795
    .local v1, "deviceAddr":Ljava/lang/String;
    sget-object v4, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    sget v4, Lcom/ts/MainUI/R$id;->bluetooth_usable_devices:I

    invoke-virtual {p0, v4}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 800
    .local v3, "unpairedDeviceListView":Landroid/widget/ListView;
    sget v4, Lcom/ts/MainUI/R$id;->bluetooth_paired_devices:I

    invoke-virtual {p0, v4}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 802
    .local v2, "pairedDeviceListView":Landroid/widget/ListView;
    if-ne p1, v3, :cond_3

    .line 803
    if-eq p2, v6, :cond_3

    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_3

    .line 804
    const-string v4, "BtPairedHistoryActivity"

    const-string v5, "select unpaired list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deviceAddr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 812
    .restart local v1    # "deviceAddr":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 813
    sget-object v4, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 815
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/ts/bt/BtExe;->handleDeviceSelected(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 806
    :cond_3
    if-ne p1, v2, :cond_2

    .line 807
    if-eq p2, v6, :cond_2

    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 808
    const-string v4, "BtPairedHistoryActivity"

    const-string v5, "select paired list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v4, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "remote_device_macaddr"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deviceAddr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "deviceAddr":Ljava/lang/String;
    goto :goto_1
.end method

.method private onClickUnpair()V
    .locals 5

    .prologue
    .line 766
    sget-object v3, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string v1, ""

    .line 770
    .local v1, "deviceAddr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 772
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->getSelect()I

    move-result v2

    .line 773
    .local v2, "selectIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 774
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "remote_device_macaddr"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deviceAddr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 781
    .restart local v1    # "deviceAddr":Ljava/lang/String;
    sget-object v3, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 784
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    goto :goto_0
.end method

.method private refreshBondedDevices(Z)V
    .locals 8
    .param p1, "isOn"    # Z

    .prologue
    .line 316
    sget-object v5, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    .line 352
    :goto_0
    return-void

    .line 318
    :cond_0
    if-eqz p1, :cond_4

    .line 319
    iget-object v5, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v4, "pairedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v5, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 350
    .end local v4    # "pairedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_2
    iget-object v5, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v5}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 322
    .restart local v4    # "pairedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 323
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v6}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 324
    sget-object v6, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 325
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/ts/bt/BtExe;->mLastDeviceAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 331
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "remote_device_name"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v6, "remote_device_macaddr"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v6, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "pairedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_5

    .line 346
    iget-object v5, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v5, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v5}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 338
    :cond_5
    iget-object v5, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 339
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "remote_device_macaddr"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "addr":Ljava/lang/String;
    const-string v5, "remote_connect_status"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private setBluetoothDiscoverability(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 302
    if-eqz p1, :cond_1

    .line 303
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    .line 305
    const/4 v2, -0x1

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    sget-object v1, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btn_unpair_bt:I

    if-ne v0, v1, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/ts/can/btobd/CanBtOBDActivity;->onClickUnpair()V

    goto :goto_0

    .line 206
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->btn_scan_bt:I

    if-ne v0, v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/ts/can/btobd/CanBtOBDActivity;->onClickScan()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "BtPairedHistoryActivity"

    const-string v1, "+++  onCreate +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget v0, Lcom/ts/MainUI/R$layout;->obd_pairedhistory:I

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->setContentView(I)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    .line 116
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevices:Ljava/util/ArrayList;

    .line 117
    sget v4, Lcom/ts/MainUI/R$layout;->obd_listitem:I

    .line 118
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "remote_device_name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    .line 119
    const-string v2, "remote_connect_status"

    aput-object v2, v5, v1

    .line 120
    const/4 v1, 0x2

    new-array v6, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$id;->item_remote_device_name:I

    aput v2, v6, v1

    const/4 v1, 0x1

    .line 121
    sget v2, Lcom/ts/MainUI/R$id;->item_remote_connect_status:I

    aput v2, v6, v1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 115
    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    .line 122
    sget v0, Lcom/ts/MainUI/R$id;->bluetooth_usable_devices:I

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 123
    .local v11, "unpairedDeviceListView":Landroid/widget/ListView;
    if-eqz v11, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 129
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    .line 131
    iget-object v3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevices:Ljava/util/ArrayList;

    .line 132
    sget v4, Lcom/ts/MainUI/R$layout;->obd_listitem:I

    .line 133
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "remote_device_name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    .line 134
    const-string v2, "remote_connect_status"

    aput-object v2, v5, v1

    .line 135
    const/4 v1, 0x2

    new-array v6, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$id;->item_remote_device_name:I

    aput v2, v6, v1

    const/4 v1, 0x1

    .line 136
    sget v2, Lcom/ts/MainUI/R$id;->item_remote_connect_status:I

    aput v2, v6, v1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 130
    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    .line 137
    sget v0, Lcom/ts/MainUI/R$id;->bluetooth_paired_devices:I

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 138
    .local v8, "pairedDeviceListView":Landroid/widget/ListView;
    if-eqz v8, :cond_1

    .line 139
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mPairedClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 143
    :cond_1
    sget v0, Lcom/ts/MainUI/R$id;->iv_searching:I

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mIvSearch:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mIvSearch:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    sget v0, Lcom/ts/MainUI/R$id;->btn_scan_bt:I

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 146
    .local v9, "scanButton":Landroid/widget/ImageButton;
    sget v0, Lcom/ts/MainUI/R$id;->btn_unpair_bt:I

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 147
    .local v10, "unpaireButton":Landroid/widget/ImageButton;
    if-eqz v9, :cond_2

    .line 148
    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_2
    if-eqz v10, :cond_3

    .line 151
    invoke-virtual {v10, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->addHandler(Landroid/os/Handler;)V

    .line 154
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v7, "intent":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->ODBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/ts/can/btobd/CanBtOBDActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "BtPairedHistoryActivity"

    const-string v1, "+++  onDestroy +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->ODBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->removeHandler(Landroid/os/Handler;)V

    .line 195
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mPosition:I

    .line 848
    new-instance v0, Lcom/ts/can/btobd/OBDPiniInputDialog;

    invoke-direct {v0}, Lcom/ts/can/btobd/OBDPiniInputDialog;-><init>()V

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mDvdGotoDialog:Lcom/ts/can/btobd/OBDPiniInputDialog;

    .line 849
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mDvdGotoDialog:Lcom/ts/can/btobd/OBDPiniInputDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->createDlg(Landroid/content/Context;Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;I)V

    .line 850
    return-void
.end method

.method public onOK(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    iget v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->setSelect(I)V

    .line 837
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    invoke-virtual {v0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    .line 838
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    invoke-virtual {v0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity;->isBonded:Z

    .line 840
    sput-object p1, Lcom/ts/bt/BtExe;->mPin:Ljava/lang/String;

    .line 841
    invoke-direct {p0}, Lcom/ts/can/btobd/CanBtOBDActivity;->onClickConnect()V

    .line 842
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outstate"    # Landroid/os/Bundle;

    .prologue
    .line 176
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 163
    const-string v0, "BtPairedHistoryActivity"

    const-string v1, "+++  onStart +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "BtPairedHistoryActivity"

    const-string v1, "get LocalBluetoothAdapter fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/ts/can/btobd/CanBtOBDActivity;->finish()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/ts/bt/BtExe;->mLocalAdapter:Lcom/autochips/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->onActionBtStateChanged(I)V

    goto :goto_0
.end method
