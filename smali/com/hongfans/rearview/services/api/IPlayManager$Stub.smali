.class public abstract Lcom/hongfans/rearview/services/api/IPlayManager$Stub;
.super Landroid/os/Binder;
.source "IPlayManager.java"

# interfaces
.implements Lcom/hongfans/rearview/services/api/IPlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/rearview/services/api/IPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/rearview/services/api/IPlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hongfans.rearview.services.api.IPlayManager"

.field static final TRANSACTION_IAddPlayList:I = 0xe

.field static final TRANSACTION_ICancelReqMusic:I = 0x17

.field static final TRANSACTION_IChangeMode:I = 0x8

.field static final TRANSACTION_IClearVoiceSearch:I = 0x2b

.field static final TRANSACTION_ICloseCacheDb:I = 0x1a

.field static final TRANSACTION_ICurrentMode:I = 0x9

.field static final TRANSACTION_IGetAout:I = 0x11

.field static final TRANSACTION_IGetCaseList:I = 0x1b

.field static final TRANSACTION_IGetCurrentMusic:I = 0x12

.field static final TRANSACTION_IGetHPM:I = 0x2d

.field static final TRANSACTION_IGetKWImage:I = 0x18

.field static final TRANSACTION_IGetPlayState:I = 0x14

.field static final TRANSACTION_IGetSearchChannel:I = 0x1f

.field static final TRANSACTION_IGetSearchKeyWord:I = 0x1d

.field static final TRANSACTION_IGetSongList:I = 0x13

.field static final TRANSACTION_IGetVoiceSearch:I = 0x2a

.field static final TRANSACTION_INext:I = 0x5

.field static final TRANSACTION_IPause:I = 0x2

.field static final TRANSACTION_IPlay:I = 0x1

.field static final TRANSACTION_IPlayPosition:I = 0xa

.field static final TRANSACTION_IPre:I = 0x4

.field static final TRANSACTION_IRegisterSecondProgramChangeListener:I = 0x27

.field static final TRANSACTION_IRemovSearchKeyWord:I = 0x1e

.field static final TRANSACTION_IRemovePlayListener:I = 0x7

.field static final TRANSACTION_IRequestAudioFocus:I = 0x25

.field static final TRANSACTION_IRequestThirdList:I = 0x2c

.field static final TRANSACTION_IResume:I = 0x3

.field static final TRANSACTION_ISearchMusic:I = 0x15

.field static final TRANSACTION_ISeekTo:I = 0xc

.field static final TRANSACTION_ISetImageListener:I = 0x19

.field static final TRANSACTION_ISetListChange:I = 0x16

.field static final TRANSACTION_ISetPlayList:I = 0xd

.field static final TRANSACTION_ISetPlayListener:I = 0x6

.field static final TRANSACTION_ISetPlayPosition:I = 0xb

.field static final TRANSACTION_ISetPlayStateListener:I = 0x21

.field static final TRANSACTION_ISetProgramListener:I = 0x24

.field static final TRANSACTION_ISetSecondProgramList:I = 0x29

.field static final TRANSACTION_ISetSendProgress:I = 0x10

.field static final TRANSACTION_ISetSwitch:I = 0x1c

.field static final TRANSACTION_ISwitchProgram:I = 0x26

.field static final TRANSACTION_IUnRegisterSecondProgramChangeListener:I = 0x28

.field static final TRANSACTION_IUpdateProgramDigtal:I = 0xf

.field static final TRANSACTION_IisPlayAD:I = 0x20

.field static final TRANSACTION_IsGetLoadingState:I = 0x23

.field static final TRANSACTION_IsetPlayProgress:I = 0x30

.field static final TRANSACTION_clearCacheData:I = 0x22

.field static final TRANSACTION_registerPlayChangedListener:I = 0x2e

.field static final TRANSACTION_unRegisterPlayChangedListener:I = 0x2f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p0, p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayManager;
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
    const-string v1, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hongfans/rearview/services/api/IPlayManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/hongfans/rearview/services/api/IPlayManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/hongfans/rearview/services/api/IPlayManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPlay(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPause(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IResume()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    :sswitch_4
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPre()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->INext()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayListener;

    move-result-object v0

    .line 89
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/IPlayListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayListener(Lcom/hongfans/rearview/services/api/IPlayListener;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IPlayListener;
    :sswitch_7
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayListener;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IPlayListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRemovePlayListener(Lcom/hongfans/rearview/services/api/IPlayListener;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IPlayListener;
    :sswitch_8
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IChangeMode(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ICurrentMode()I

    move-result v5

    .line 115
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v5    # "_result":I
    :sswitch_a
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPlayPosition()I

    move-result v5

    .line 123
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v5    # "_result":I
    :sswitch_b
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayPosition(I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISeekTo(I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    invoke-virtual {p0, v2}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayList(Ljava/util/List;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    :sswitch_e
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 159
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    invoke-virtual {p0, v2}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IAddPlayList(Ljava/util/List;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    :sswitch_f
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 168
    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    .line 174
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IUpdateProgramDigtal(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    .end local v4    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    goto :goto_1

    .line 181
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    :sswitch_10
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v0, v8

    .line 184
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetSendProgress(Z)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Z
    :sswitch_11
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetAout()Lcom/hongfans/rearview/services/api/Aout;

    move-result-object v5

    .line 192
    .local v5, "_result":Lcom/hongfans/rearview/services/api/Aout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/Aout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 198
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v5    # "_result":Lcom/hongfans/rearview/services/api/Aout;
    :sswitch_12
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetCurrentMusic()Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    move-result-object v5

    .line 206
    .local v5, "_result":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v5, :cond_3

    .line 208
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 212
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v5    # "_result":Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    :sswitch_13
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetSongList()Ljava/util/List;

    move-result-object v6

    .line 220
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 226
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    :sswitch_14
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetPlayState()I

    move-result v5

    .line 228
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v5    # "_result":I
    :sswitch_15
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISearchMusic(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_16
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayListener;

    move-result-object v0

    .line 248
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/IPlayListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetListChange(Lcom/hongfans/rearview/services/api/IPlayListener;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 254
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IPlayListener;
    :sswitch_17
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ICancelReqMusic()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 261
    :sswitch_18
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 264
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetKWImage(J)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":J
    :sswitch_19
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IKWImageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IKWImageListener;

    move-result-object v0

    .line 273
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/IKWImageListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetImageListener(Lcom/hongfans/rearview/services/api/IKWImageListener;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IKWImageListener;
    :sswitch_1a
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ICloseCacheDb()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    :sswitch_1b
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetCaseList()Ljava/util/List;

    move-result-object v6

    .line 288
    .restart local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 294
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramDigtalModel;>;"
    :sswitch_1c
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetSwitch(I)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":I
    :sswitch_1d
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetSearchKeyWord()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRemovSearchKeyWord()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    :sswitch_1f
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetSearchChannel()Ljava/util/List;

    move-result-object v7

    .line 320
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramModel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 326
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramModel;>;"
    :sswitch_20
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IisPlayAD()Z

    move-result v5

    .line 328
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v5, :cond_4

    move v0, v8

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 334
    .end local v5    # "_result":Z
    :sswitch_21
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/PlayStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/PlayStatusListener;

    move-result-object v0

    .line 337
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/PlayStatusListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayStateListener(Lcom/hongfans/rearview/services/api/PlayStatusListener;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 343
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/PlayStatusListener;
    :sswitch_22
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->clearCacheData()V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 350
    :sswitch_23
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IsGetLoadingState()I

    move-result v5

    .line 352
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 358
    .end local v5    # "_result":I
    :sswitch_24
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/ProgramListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/ProgramListener;

    move-result-object v0

    .line 361
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/ProgramListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetProgramListener(Lcom/hongfans/rearview/services/api/ProgramListener;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramListener;
    :sswitch_25
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRequestAudioFocus()V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 374
    :sswitch_26
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISwitchProgram()V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 381
    :sswitch_27
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/SecondProgramListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/SecondProgramListener;

    move-result-object v0

    .line 384
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/SecondProgramListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRegisterSecondProgramChangeListener(Lcom/hongfans/rearview/services/api/SecondProgramListener;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 390
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/SecondProgramListener;
    :sswitch_28
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/SecondProgramListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/SecondProgramListener;

    move-result-object v0

    .line 393
    .restart local v0    # "_arg0":Lcom/hongfans/rearview/services/api/SecondProgramListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IUnRegisterSecondProgramChangeListener(Lcom/hongfans/rearview/services/api/SecondProgramListener;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 399
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/SecondProgramListener;
    :sswitch_29
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 402
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramModel;>;"
    invoke-virtual {p0, v3}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetSecondProgramList(Ljava/util/List;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 408
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/rearview/services/api/ProgramModel;>;"
    :sswitch_2a
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetVoiceSearch()Lcom/hongfans/rearview/services/api/VoiceSearchModel;

    move-result-object v5

    .line 410
    .local v5, "_result":Lcom/hongfans/rearview/services/api/VoiceSearchModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v5, :cond_5

    .line 412
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/VoiceSearchModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 416
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 422
    .end local v5    # "_result":Lcom/hongfans/rearview/services/api/VoiceSearchModel;
    :sswitch_2b
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IClearVoiceSearch()V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 429
    :sswitch_2c
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 432
    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ProgramModel;

    .line 437
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/ProgramModel;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRequestThirdList(Lcom/hongfans/rearview/services/api/ProgramModel;)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 435
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramModel;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramModel;
    goto :goto_2

    .line 443
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/ProgramModel;
    :sswitch_2d
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetHPM()Lcom/hongfans/rearview/services/api/ProgramModel;

    move-result-object v5

    .line 445
    .local v5, "_result":Lcom/hongfans/rearview/services/api/ProgramModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v5, :cond_7

    .line 447
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/ProgramModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 451
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    .end local v5    # "_result":Lcom/hongfans/rearview/services/api/ProgramModel;
    :sswitch_2e
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;

    move-result-object v0

    .line 460
    .local v0, "_arg0":Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->registerPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 466
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;
    :sswitch_2f
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->unRegisterPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 475
    .end local v0    # "_arg0":Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;
    :sswitch_30
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IsetPlayProgress(I)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
