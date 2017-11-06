.class Lnet/easyconn/platform/wrc/core/WrcManager$1;
.super Ljava/lang/Object;
.source "WrcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;->startWrcScan(Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

.field final synthetic b:Lnet/easyconn/platform/wrc/core/WrcManager;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->b:Lnet/easyconn/platform/wrc/core/WrcManager;

    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->a:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->b:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;)Lnet/easyconn/platform/wrc/core/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->a:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->b:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Lnet/easyconn/platform/wrc/core/WrcManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->b:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;)Lnet/easyconn/platform/wrc/core/j;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$1;->a:Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V

    .line 226
    :cond_0
    return-void
.end method
