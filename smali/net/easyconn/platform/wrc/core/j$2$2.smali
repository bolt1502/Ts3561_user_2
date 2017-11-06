.class Lnet/easyconn/platform/wrc/core/j$2$2;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/j$2;->b(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/WrcDevice;

.field final synthetic b:Lnet/easyconn/platform/wrc/core/j$2;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/j$2;Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$2$2;->b:Lnet/easyconn/platform/wrc/core/j$2;

    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/j$2$2;->a:Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2$2;->b:Lnet/easyconn/platform/wrc/core/j$2;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2$2;->b:Lnet/easyconn/platform/wrc/core/j$2;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/j$2$2;->a:Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;->onDisconnected(Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    .line 332
    :cond_0
    return-void
.end method
