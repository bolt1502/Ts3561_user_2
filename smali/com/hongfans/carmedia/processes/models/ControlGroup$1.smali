.class final Lcom/hongfans/carmedia/processes/models/ControlGroup$1;
.super Ljava/lang/Object;
.source "ControlGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/carmedia/processes/models/ControlGroup;
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
        "Lcom/hongfans/carmedia/processes/models/ControlGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hongfans/carmedia/processes/models/ControlGroup;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 28
    new-instance v0, Lcom/hongfans/carmedia/processes/models/ControlGroup;

    invoke-direct {v0, p1}, Lcom/hongfans/carmedia/processes/models/ControlGroup;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/models/ControlGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hongfans/carmedia/processes/models/ControlGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hongfans/carmedia/processes/models/ControlGroup;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    new-array v0, p1, [Lcom/hongfans/carmedia/processes/models/ControlGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/models/ControlGroup$1;->newArray(I)[Lcom/hongfans/carmedia/processes/models/ControlGroup;

    move-result-object v0

    return-object v0
.end method
