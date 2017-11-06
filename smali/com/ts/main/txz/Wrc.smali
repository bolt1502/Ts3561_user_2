.class public Lcom/ts/main/txz/Wrc;
.super Ljava/lang/Object;
.source "Wrc.java"


# static fields
.field static m_wrc:Lcom/ts/main/txz/Wrc;


# instance fields
.field private mWrcCallback:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

.field private mWrcScanCallback:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

.field private myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/ts/main/txz/Wrc$1;

    invoke-direct {v0, p0}, Lcom/ts/main/txz/Wrc$1;-><init>(Lcom/ts/main/txz/Wrc;)V

    iput-object v0, p0, Lcom/ts/main/txz/Wrc;->mWrcScanCallback:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    .line 132
    new-instance v0, Lcom/ts/main/txz/Wrc$2;

    invoke-direct {v0, p0}, Lcom/ts/main/txz/Wrc$2;-><init>(Lcom/ts/main/txz/Wrc;)V

    iput-object v0, p0, Lcom/ts/main/txz/Wrc;->mWrcCallback:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    .line 24
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/txz/Wrc;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/ts/main/txz/Wrc;->m_wrc:Lcom/ts/main/txz/Wrc;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/ts/main/txz/Wrc;

    invoke-direct {v0}, Lcom/ts/main/txz/Wrc;-><init>()V

    sput-object v0, Lcom/ts/main/txz/Wrc;->m_wrc:Lcom/ts/main/txz/Wrc;

    .line 32
    :cond_0
    sget-object v0, Lcom/ts/main/txz/Wrc;->m_wrc:Lcom/ts/main/txz/Wrc;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ts/main/txz/Wrc;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ts/main/txz/Wrc;->mWrcCallback:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/main/txz/Wrc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Inint(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;

    .line 38
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;

    const-string v2, "c96129b4721a70058042168e3641021d"

    const-string v3, "demo"

    invoke-virtual {v0, v1, v2, v3}, Lnet/easyconn/platform/wrc/core/WrcManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public Task()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public connectWrc(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 2
    .param p1, "device"    # Lnet/easyconn/platform/wrc/core/WrcDevice;

    .prologue
    .line 72
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/Wrc;->mWrcCallback:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    invoke-virtual {v0, p1, v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->connectWrc(Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V

    .line 73
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->destroy()V

    .line 69
    return-void
.end method

.method public isConnectWrc()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->isConnectWrc()Z

    move-result v0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->isConnectWrc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/Wrc;->mWrcScanCallback:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->startWrcScan(Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V

    .line 61
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->stopWrcScan()V

    .line 65
    return-void
.end method
