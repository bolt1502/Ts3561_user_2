.class public Lnet/easyconn/platform/wrc/core/f;
.super Ljava/lang/Object;
.source "NormalScanHelper.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/b/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Z

.field private d:Lnet/easyconn/platform/wrc/core/a/c;

.field private e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lnet/easyconn/platform/wrc/core/f$1;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/f$1;-><init>(Lnet/easyconn/platform/wrc/core/f;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/f;->c:Z

    .line 28
    return-void
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/f;)Lnet/easyconn/platform/wrc/core/a/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->d:Lnet/easyconn/platform/wrc/core/a/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 35
    :cond_0
    return-void
.end method

.method public a(Lnet/easyconn/platform/wrc/core/a/c;)V
    .locals 2

    .prologue
    .line 39
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/f;->d:Lnet/easyconn/platform/wrc/core/a/c;

    .line 40
    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    if-eqz p1, :cond_2

    .line 42
    invoke-interface {p1}, Lnet/easyconn/platform/wrc/core/a/c;->getUuidFilter()Ljava/util/List;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :cond_0
    const/16 v0, 0x2378

    invoke-interface {p1, v0}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/f;->c:Z

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lnet/easyconn/platform/wrc/core/f;->a()V

    .line 50
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/f;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/f;->c:Z

    goto :goto_0

    .line 56
    :cond_3
    if-eqz p1, :cond_1

    .line 57
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/f;->c:Z

    if-eqz v0, :cond_1

    .line 65
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/f;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->d:Lnet/easyconn/platform/wrc/core/a/c;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/f;->c:Z

    .line 80
    :cond_1
    return-void

    .line 69
    :cond_2
    :try_start_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->d:Lnet/easyconn/platform/wrc/core/a/c;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->d:Lnet/easyconn/platform/wrc/core/a/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lnet/easyconn/platform/wrc/core/f;->b()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/f;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 85
    return-void
.end method
