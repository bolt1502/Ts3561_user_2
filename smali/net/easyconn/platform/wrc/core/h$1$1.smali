.class Lnet/easyconn/platform/wrc/core/h$1$1;
.super Ljava/lang/Object;
.source "WrcConnectHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/h$1;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/h$1;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/h$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/h$1$1;->a:Lnet/easyconn/platform/wrc/core/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1$1;->a:Lnet/easyconn/platform/wrc/core/h$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1$1;->a:Lnet/easyconn/platform/wrc/core/h$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1$1;->a:Lnet/easyconn/platform/wrc/core/h$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/a/a;->b(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1$1;->a:Lnet/easyconn/platform/wrc/core/h$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h$1$1;->a:Lnet/easyconn/platform/wrc/core/h$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/h$1;->a:Lnet/easyconn/platform/wrc/core/h;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/h;->b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0
.end method
