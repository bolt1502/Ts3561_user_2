.class Lnet/easyconn/platform/wrc/core/g$a;
.super Landroid/content/BroadcastReceiver;
.source "WrcCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/g;


# direct methods
.method private constructor <init>(Lnet/easyconn/platform/wrc/core/g;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g$a;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/easyconn/platform/wrc/core/g;Lnet/easyconn/platform/wrc/core/g$1;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lnet/easyconn/platform/wrc/core/g$a;-><init>(Lnet/easyconn/platform/wrc/core/g;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 277
    const-class v1, Lnet/easyconn/platform/wrc/core/g$a;

    monitor-enter v1

    .line 278
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 281
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$a;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->g(Lnet/easyconn/platform/wrc/core/g;)V

    .line 286
    :cond_0
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
