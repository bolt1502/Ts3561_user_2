.class public interface abstract Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;
.super Ljava/lang/Object;
.source "WrcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WrcCallback"
.end annotation


# static fields
.field public static final ACTION_LONG_PRESSED:B = -0x5dt

.field public static final ACTION_SINGLE_CLICK:B = -0x5ft

.field public static final KEY_CENTER:B = 0x10t

.field public static final KEY_LEFT_DOWN:B = 0x8t

.field public static final KEY_LEFT_UP:B = 0x4t

.field public static final KEY_RIGHT_DOWN:B = 0x2t

.field public static final KEY_RIGHT_UP:B = 0x1t


# virtual methods
.method public abstract onCharacteristicRead(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
.end method

.method public abstract onConnected(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
.end method

.method public abstract onDisconnected(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onWrcKeyEvent(BB)V
.end method
