.class final Lnet/easyconn/platform/wrc/core/WrcDevice$1;
.super Ljava/lang/Object;
.source "WrcDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/platform/wrc/core/WrcDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/easyconn/platform/wrc/core/WrcDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lnet/easyconn/platform/wrc/core/WrcDevice;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcDevice;

    invoke-direct {v0, p1}, Lnet/easyconn/platform/wrc/core/WrcDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lnet/easyconn/platform/wrc/core/WrcDevice;
    .locals 1

    .prologue
    .line 150
    new-array v0, p1, [Lnet/easyconn/platform/wrc/core/WrcDevice;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lnet/easyconn/platform/wrc/core/WrcDevice$1;->a(Landroid/os/Parcel;)Lnet/easyconn/platform/wrc/core/WrcDevice;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lnet/easyconn/platform/wrc/core/WrcDevice$1;->a(I)[Lnet/easyconn/platform/wrc/core/WrcDevice;

    move-result-object v0

    return-object v0
.end method
