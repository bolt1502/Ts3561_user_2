.class public interface abstract Lnet/easyconn/platform/wrc/core/b/a;
.super Ljava/lang/Object;
.source "IWrcConnectHelper.java"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v4, [Ljava/util/UUID;

    const-string v1, "00001c00-d102-11e1-9b23-000efb0000b2"

    .line 18
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0000474d-0000-1000-8000-00805f9b34fb"

    .line 19
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v3

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/a;->a:Ljava/util/List;

    .line 22
    new-array v0, v4, [Ljava/util/UUID;

    const-string v1, "00001c0f-d102-11e1-9b23-000efb0000b2"

    .line 23
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "00004b59-0000-1000-8000-00805f9b34fb"

    .line 24
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v3

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/a;->b:Ljava/util/List;

    .line 30
    new-array v0, v3, [Ljava/util/UUID;

    const-string v1, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 31
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/a;->c:Ljava/util/List;

    .line 36
    new-array v0, v3, [Ljava/util/UUID;

    const-string v1, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 37
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/a;->d:Ljava/util/List;

    .line 42
    new-array v0, v3, [Ljava/util/UUID;

    const-string v1, "00002a27-0000-1000-8000-00805f9b34fb"

    .line 43
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v2

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/a;->e:Ljava/util/List;

    .line 48
    new-array v0, v3, [Ljava/util/UUID;

    const-string v1, "00002a28-0000-1000-8000-00805f9b34fb"

    .line 49
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/a/a;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
