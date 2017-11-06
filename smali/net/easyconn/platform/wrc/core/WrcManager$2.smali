.class Lnet/easyconn/platform/wrc/core/WrcManager$2;
.super Ljava/lang/Object;
.source "WrcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;->connectWrc(Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/WrcDevice;

.field final synthetic b:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

.field final synthetic c:Lnet/easyconn/platform/wrc/core/WrcManager;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->c:Lnet/easyconn/platform/wrc/core/WrcManager;

    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->a:Lnet/easyconn/platform/wrc/core/WrcDevice;

    iput-object p3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->b:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->a:Lnet/easyconn/platform/wrc/core/WrcDevice;

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->b:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;->onError(I)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->c:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;)Lnet/easyconn/platform/wrc/core/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->b:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->c:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Lnet/easyconn/platform/wrc/core/WrcManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->c:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;)Lnet/easyconn/platform/wrc/core/j;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->a:Lnet/easyconn/platform/wrc/core/WrcDevice;

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/WrcManager$2;->b:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V

    goto :goto_0
.end method
