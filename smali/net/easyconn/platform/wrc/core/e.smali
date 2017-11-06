.class public Lnet/easyconn/platform/wrc/core/e;
.super Ljava/lang/Object;
.source "LollipopScanHelper.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/b/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroid/bluetooth/le/BluetoothLeScanner;

.field private d:Z

.field private e:Lnet/easyconn/platform/wrc/core/a/c;

.field private f:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lnet/easyconn/platform/wrc/core/e$1;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/e$1;-><init>(Lnet/easyconn/platform/wrc/core/e;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->f:Landroid/bluetooth/le/ScanCallback;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/e;->d:Z

    .line 35
    return-void
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/e;)Lnet/easyconn/platform/wrc/core/a/c;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->e:Lnet/easyconn/platform/wrc/core/a/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 42
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 45
    :cond_1
    return-void
.end method

.method public a(Lnet/easyconn/platform/wrc/core/a/c;)V
    .locals 2

    .prologue
    .line 49
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/e;->e:Lnet/easyconn/platform/wrc/core/a/c;

    .line 50
    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    if-eqz p1, :cond_2

    .line 52
    invoke-interface {p1}, Lnet/easyconn/platform/wrc/core/a/c;->getUuidFilter()Ljava/util/List;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    :cond_0
    const/16 v0, 0x2378

    invoke-interface {p1, v0}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/e;->d:Z

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lnet/easyconn/platform/wrc/core/e;->a()V

    .line 60
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/e;->f:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/e;->d:Z

    goto :goto_0

    .line 66
    :cond_3
    if-eqz p1, :cond_1

    .line 67
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/e;->d:Z

    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/e;->f:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->e:Lnet/easyconn/platform/wrc/core/a/c;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/e;->d:Z

    .line 93
    :cond_1
    return-void

    .line 81
    :cond_2
    :try_start_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->e:Lnet/easyconn/platform/wrc/core/a/c;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/e;->e:Lnet/easyconn/platform/wrc/core/a/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/a/c;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/e;->d:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lnet/easyconn/platform/wrc/core/e;->b()V

    .line 100
    :cond_0
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/e;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 101
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/e;->c:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 102
    return-void
.end method
