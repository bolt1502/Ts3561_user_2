.class public interface abstract Lnet/easyconn/platform/wrc/core/b/b;
.super Ljava/lang/Object;
.source "IWrcScanHelper.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    const-string v2, "00001c00-d102-11e1-9b23-00025b01aab2"

    .line 16
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0000474d-0000-1000-8000-00805f9b34fb"

    .line 17
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/b/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a(Lnet/easyconn/platform/wrc/core/a/c;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
