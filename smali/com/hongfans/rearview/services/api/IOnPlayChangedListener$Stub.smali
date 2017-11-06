.class public abstract Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnPlayChangedListener.java"

# interfaces
.implements Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hongfans.rearview.services.api.IOnPlayChangedListener"

.field static final TRANSACTION_OnPlayListChanged:I = 0x2

.field static final TRANSACTION_OnPlayMusicChanged:I = 0x3

.field static final TRANSACTION_OnPlayStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.hongfans.rearview.services.api.IOnPlayChangedListener"

    invoke-virtual {p0, p0, v0}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.hongfans.rearview.services.api.IOnPlayChangedListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.hongfans.rearview.services.api.IOnPlayChangedListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.hongfans.rearview.services.api.IOnPlayChangedListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->OnPlayStateChanged(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v3, "com.hongfans.rearview.services.api.IOnPlayChangedListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    sget-object v3, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 59
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    invoke-virtual {p0, v1}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->OnPlayListChanged(Ljava/util/List;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    :sswitch_3
    const-string v3, "com.hongfans.rearview.services.api.IOnPlayChangedListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    sget-object v3, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    .line 73
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->OnPlayMusicChanged(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
