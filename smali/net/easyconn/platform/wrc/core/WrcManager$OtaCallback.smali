.class public interface abstract Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;
.super Ljava/lang/Object;
.source "WrcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OtaCallback"
.end annotation


# virtual methods
.method public abstract onOtaError(I)V
.end method

.method public abstract onOtaProgressUpdate(III)V
.end method

.method public abstract onOtaStateUpdate(I)V
.end method
