.class Lnet/easyconn/platform/wrc/core/e$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "LollipopScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/e;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/e;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/e$1;->a:Lnet/easyconn/platform/wrc/core/e;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 4

    .prologue
    .line 107
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 109
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    .line 110
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/l;->a([B)Ljava/util/UUID;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/e$1;->a:Lnet/easyconn/platform/wrc/core/e;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/e;->a(Lnet/easyconn/platform/wrc/core/e;)Lnet/easyconn/platform/wrc/core/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {}, Lnet/easyconn/platform/wrc/core/g;->a()Lnet/easyconn/platform/wrc/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lnet/easyconn/platform/wrc/core/g;->c()Ljava/util/List;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e$1;->a:Lnet/easyconn/platform/wrc/core/e;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/e;->a(Lnet/easyconn/platform/wrc/core/e;)Lnet/easyconn/platform/wrc/core/a/c;

    move-result-object v0

    const/16 v1, 0x2378

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-direct {v2}, Lnet/easyconn/platform/wrc/core/WrcDevice;-><init>()V

    .line 122
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setAddress(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setRssi(I)V

    .line 125
    invoke-virtual {v2, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setUuid(Ljava/util/UUID;)V

    .line 126
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e$1;->a:Lnet/easyconn/platform/wrc/core/e;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/e;->a(Lnet/easyconn/platform/wrc/core/e;)Lnet/easyconn/platform/wrc/core/a/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lnet/easyconn/platform/wrc/core/a/c;->a(Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    goto :goto_0
.end method
