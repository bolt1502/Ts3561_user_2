.class public interface abstract Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;
.super Ljava/lang/Object;
.source "WrcManager.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanCallback"
.end annotation


# virtual methods
.method public abstract getUuidFilter()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onScanError(I)V
.end method

.method public abstract onWrcScan(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
.end method
