.class Lnet/easyconn/platform/wrc/core/j$1;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/a/c;


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
    .line 235
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$1$2;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/j$1$2;-><init>(Lnet/easyconn/platform/wrc/core/j$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_0
    return-void
.end method

.method public a(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$1$1;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/j$1$1;-><init>(Lnet/easyconn/platform/wrc/core/j$1;Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->c(Lnet/easyconn/platform/wrc/core/j;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 259
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->c(Lnet/easyconn/platform/wrc/core/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    return-void
.end method

.method public getUuidFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$1;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;

    move-result-object v0

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;->getUuidFilter()Ljava/util/List;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
