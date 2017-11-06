.class Lnet/easyconn/platform/wrc/core/h$3;
.super Ljava/lang/Object;
.source "WrcConnectHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/h;->d()V
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
    .line 271
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/h$3;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$3;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$3;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$3;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->f(Lnet/easyconn/platform/wrc/core/h;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 277
    :cond_0
    return-void
.end method
