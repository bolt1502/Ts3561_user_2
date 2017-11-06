.class Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WrcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkChangeReceiver"
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/WrcManager;


# direct methods
.method private constructor <init>(Lnet/easyconn/platform/wrc/core/WrcManager;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;->a:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/WrcManager$1;)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;-><init>(Lnet/easyconn/platform/wrc/core/WrcManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 543
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 546
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;->a:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;->a:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/WrcManager;->d(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;->a:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/WrcManager;->f(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;->a:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v4}, Lnet/easyconn/platform/wrc/core/WrcManager;->g(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0
.end method
