.class Lnet/easyconn/platform/wrc/core/h$2;
.super Ljava/lang/Object;
.source "WrcConnectHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/h;->a(Landroid/content/Context;Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lnet/easyconn/platform/wrc/core/h;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/h;Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/h$2;->c:Lnet/easyconn/platform/wrc/core/h;

    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/h$2;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lnet/easyconn/platform/wrc/core/h$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$2;->c:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$2;->c:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 176
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$2;->c:Lnet/easyconn/platform/wrc/core/h;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h$2;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/h$2;->b:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/easyconn/platform/wrc/core/h$2;->c:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v4}, Lnet/easyconn/platform/wrc/core/h;->g(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 177
    return-void
.end method
