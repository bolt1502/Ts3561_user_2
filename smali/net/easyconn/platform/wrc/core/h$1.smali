.class Lnet/easyconn/platform/wrc/core/h$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "WrcConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/h;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/h;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 128
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lnet/easyconn/platform/wrc/core/b/a;->b:Ljava/util/List;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 131
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    invoke-interface {v1, v2, v0}, Lnet/easyconn/platform/wrc/core/a/a;->a(BB)V

    .line 137
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    .prologue
    .line 141
    if-nez p3, :cond_1

    .line 142
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/easyconn/platform/wrc/core/a/a;->a(Ljava/util/UUID;[B)V

    .line 145
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->f(Lnet/easyconn/platform/wrc/core/h;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/a/a;->a()V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->f(Lnet/easyconn/platform/wrc/core/h;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 63
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 64
    if-nez p2, :cond_2

    .line 65
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/WrcDevice;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setAddress(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 70
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->c(Lnet/easyconn/platform/wrc/core/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/h$1$1;

    invoke-direct {v1, p0}, Lnet/easyconn/platform/wrc/core/h$1$1;-><init>(Lnet/easyconn/platform/wrc/core/h$1;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-nez p3, :cond_0

    .line 86
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/easyconn/platform/wrc/core/a/a;->b(Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/easyconn/platform/wrc/core/a/a;->b(I)V

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 101
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 102
    if-nez p2, :cond_2

    .line 103
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->d(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/h;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/WrcDevice;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setAddress(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/easyconn/platform/wrc/core/a/a;->a(Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->e(Lnet/easyconn/platform/wrc/core/h;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/easyconn/platform/wrc/core/a/a;->b(I)V

    goto :goto_0
.end method
