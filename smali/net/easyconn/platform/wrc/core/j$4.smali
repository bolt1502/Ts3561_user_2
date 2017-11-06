.class Lnet/easyconn/platform/wrc/core/j$4;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/j;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/j;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$4;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$4$1;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/j$4$1;-><init>(Lnet/easyconn/platform/wrc/core/j$4;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    :cond_0
    return-void
.end method
