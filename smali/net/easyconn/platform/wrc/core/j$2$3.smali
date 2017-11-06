.class Lnet/easyconn/platform/wrc/core/j$2$3;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/j$2;->a(BB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:B

.field final synthetic b:B

.field final synthetic c:Lnet/easyconn/platform/wrc/core/j$2;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/j$2;BB)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->c:Lnet/easyconn/platform/wrc/core/j$2;

    iput-byte p2, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->a:B

    iput-byte p3, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->b:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->c:Lnet/easyconn/platform/wrc/core/j$2;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->c:Lnet/easyconn/platform/wrc/core/j$2;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v0

    iget-byte v1, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->a:B

    iget-byte v2, p0, Lnet/easyconn/platform/wrc/core/j$2$3;->b:B

    invoke-interface {v0, v1, v2}, Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;->onWrcKeyEvent(BB)V

    .line 353
    :cond_0
    return-void
.end method
