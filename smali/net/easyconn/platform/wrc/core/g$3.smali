.class Lnet/easyconn/platform/wrc/core/g$3;
.super Ljava/lang/Object;
.source "WrcCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/g;->a(Ljava/lang/String;Ljava/util/UUID;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/util/UUID;

.field final synthetic d:Lnet/easyconn/platform/wrc/core/g;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/g;Ljava/lang/String;ILjava/util/UUID;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/g$3;->a:Ljava/lang/String;

    iput p3, p0, Lnet/easyconn/platform/wrc/core/g$3;->b:I

    iput-object p4, p0, Lnet/easyconn/platform/wrc/core/g$3;->c:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 231
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 232
    const-string v1, "0yO16=5iJnx8TwLL"

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->b(Lnet/easyconn/platform/wrc/core/g;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "0Y0i6/0y4vx8WMvn"

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "WzWEe/CnuELL"

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->d(Lnet/easyconn/platform/wrc/core/g;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "TMxN6M3n"

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "J/2d04LL"

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "WM2m6Mx8"

    iget v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g$3;->c:Ljava/util/UUID;

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "Jz5c4RLL"

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$3;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    const-string v1, "J/2d0Txz0=rC0=5ETUOmF=cdT/pL"

    invoke-static {v1, v0}, Lnet/easyconn/platform/wrc/core/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 249
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g$3;->d:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
