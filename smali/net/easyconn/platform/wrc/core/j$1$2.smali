.class Lnet/easyconn/platform/wrc/core/j$1$2;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/j$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lnet/easyconn/platform/wrc/core/j$1;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/j$1;I)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$1$2;->b:Lnet/easyconn/platform/wrc/core/j$1;

    iput p2, p0, Lnet/easyconn/platform/wrc/core/j$1$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1$2;->b:Lnet/easyconn/platform/wrc/core/j$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1$2;->b:Lnet/easyconn/platform/wrc/core/j$1;

    iget-object v0, v0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    move-result-object v0

    iget v1, p0, Lnet/easyconn/platform/wrc/core/j$1$2;->a:I

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;->onScanError(I)V

    .line 273
    :cond_0
    return-void
.end method
