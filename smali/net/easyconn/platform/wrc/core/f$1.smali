.class Lnet/easyconn/platform/wrc/core/f$1;
.super Ljava/lang/Object;
.source "NormalScanHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/f;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/f;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/f$1;->a:Lnet/easyconn/platform/wrc/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {p3}, Lnet/easyconn/platform/wrc/core/l;->a([B)Ljava/util/UUID;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/f$1;->a:Lnet/easyconn/platform/wrc/core/f;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/f;->a(Lnet/easyconn/platform/wrc/core/f;)Lnet/easyconn/platform/wrc/core/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lnet/easyconn/platform/wrc/core/g;->a()Lnet/easyconn/platform/wrc/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lnet/easyconn/platform/wrc/core/g;->c()Ljava/util/List;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f$1;->a:Lnet/easyconn/platform/wrc/core/f;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/f;->a(Lnet/easyconn/platform/wrc/core/f;)Lnet/easyconn/platform/wrc/core/a/c;

    move-result-object v0

    const/16 v1, 0x2378

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-direct {v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setAddress(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p2}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setRssi(I)V

    .line 104
    invoke-virtual {v1, v0}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setUuid(Ljava/util/UUID;)V

    .line 105
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f$1;->a:Lnet/easyconn/platform/wrc/core/f;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/f;->a(Lnet/easyconn/platform/wrc/core/f;)Lnet/easyconn/platform/wrc/core/a/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/a/c;->a(Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    goto :goto_0
.end method
