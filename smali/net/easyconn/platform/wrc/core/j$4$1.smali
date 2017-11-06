.class Lnet/easyconn/platform/wrc/core/j$4$1;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/j$4;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lnet/easyconn/platform/wrc/core/j$4;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/j$4;I)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->b:Lnet/easyconn/platform/wrc/core/j$4;

    iput p2, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->b:Lnet/easyconn/platform/wrc/core/j$4;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->b:Lnet/easyconn/platform/wrc/core/j$4;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->b:Lnet/easyconn/platform/wrc/core/j$4;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->f(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v0

    iget v1, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->a:I

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;->onError(I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->b:Lnet/easyconn/platform/wrc/core/j$4;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->i(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4$1;->b:Lnet/easyconn/platform/wrc/core/j$4;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->i(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/a;

    move-result-object v0

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/a;->b()V

    .line 462
    :cond_1
    return-void
.end method
