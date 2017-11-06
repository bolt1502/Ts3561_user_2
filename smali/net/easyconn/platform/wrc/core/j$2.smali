.class Lnet/easyconn/platform/wrc/core/j$2;
.super Ljava/lang/Object;
.source "WrcOperator.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/a/a;


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
    .line 279
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$2$4;

    invoke-direct {v1, p0}, Lnet/easyconn/platform/wrc/core/j$2$4;-><init>(Lnet/easyconn/platform/wrc/core/j$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    :cond_0
    return-void
.end method

.method public a(BB)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$2$3;

    invoke-direct {v1, p0, p1, p2}, Lnet/easyconn/platform/wrc/core/j$2$3;-><init>(Lnet/easyconn/platform/wrc/core/j$2;BB)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$2$5;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/j$2$5;-><init>(Lnet/easyconn/platform/wrc/core/j$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Z)Z

    .line 401
    return-void
.end method

.method public a(Ljava/util/UUID;[B)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->h(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lnet/easyconn/platform/wrc/core/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->h(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setFirmware(Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    sget-object v0, Lnet/easyconn/platform/wrc/core/b/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->h(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setHardware(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    sget-object v0, Lnet/easyconn/platform/wrc/core/b/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->h(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->setSoftware(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0, p1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Lnet/easyconn/platform/wrc/core/WrcDevice;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    .line 284
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->d(Lnet/easyconn/platform/wrc/core/j;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->d(Lnet/easyconn/platform/wrc/core/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "net.easyconn.platform.wrc"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    const-string v1, "wrc.key.device"

    invoke-virtual {p1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->e(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->e(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/b;

    move-result-object v0

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/b;->b()V

    .line 296
    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$2$1;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/j$2$1;-><init>(Lnet/easyconn/platform/wrc/core/j$2;Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    :cond_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0, v3}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Z)Z

    .line 310
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->g(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/g;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 311
    invoke-virtual {p1}, Lnet/easyconn/platform/wrc/core/WrcDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->c(Lnet/easyconn/platform/wrc/core/j;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->g(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/g;

    move-result-object v2

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->c(Lnet/easyconn/platform/wrc/core/j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v2, v1, v0}, Lnet/easyconn/platform/wrc/core/g;->a(Ljava/lang/String;Ljava/util/UUID;)V

    .line 318
    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Lnet/easyconn/platform/wrc/core/WrcDevice;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    .line 406
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->i(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->i(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/b/a;

    move-result-object v0

    invoke-interface {v0}, Lnet/easyconn/platform/wrc/core/b/a;->b()V

    .line 409
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Z)Z

    .line 410
    return-void
.end method

.method public b(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Lnet/easyconn/platform/wrc/core/WrcDevice;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    .line 324
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->b(Lnet/easyconn/platform/wrc/core/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/easyconn/platform/wrc/core/j$2$2;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/j$2$2;-><init>(Lnet/easyconn/platform/wrc/core/j$2;Lnet/easyconn/platform/wrc/core/WrcDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/easyconn/platform/wrc/core/j;->a(Lnet/easyconn/platform/wrc/core/j;Z)Z

    .line 338
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->g(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/j$2;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/j;->g(Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/g;->d()V

    .line 341
    :cond_1
    return-void
.end method
