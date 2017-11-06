.class public abstract Lcom/ts/dvdplayer/ITsPlayerService$Stub;
.super Landroid/os/Binder;
.source "ITsPlayerService.java"

# interfaces
.implements Lcom/ts/dvdplayer/ITsPlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/dvdplayer/ITsPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/dvdplayer/ITsPlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ts.dvdplayer.ITsPlayerService"

.field static final TRANSACTION_Rotate:I = 0x13

.field static final TRANSACTION_ZoomIn:I = 0x12

.field static final TRANSACTION_ZoomOut:I = 0x11

.field static final TRANSACTION_changeMediaType:I = 0x2

.field static final TRANSACTION_clickDVDMenuItem:I = 0x19

.field static final TRANSACTION_dealBTCall:I = 0x38

.field static final TRANSACTION_enterMedia:I = 0x1

.field static final TRANSACTION_getChannelCount:I = 0x2c

.field static final TRANSACTION_getChannelId:I = 0x2b

.field static final TRANSACTION_getChapterCount:I = 0x28

.field static final TRANSACTION_getChapterId:I = 0x27

.field static final TRANSACTION_getCurrentTime:I = 0x1e

.field static final TRANSACTION_getDiscType:I = 0x18

.field static final TRANSACTION_getDvdUpdateInfo:I = 0x31

.field static final TRANSACTION_getDvdVersion:I = 0x2f

.field static final TRANSACTION_getFilterType:I = 0x5

.field static final TRANSACTION_getId3AlbumName:I = 0x22

.field static final TRANSACTION_getId3Artist:I = 0x23

.field static final TRANSACTION_getId3Title:I = 0x24

.field static final TRANSACTION_getMediaCnt:I = 0x21

.field static final TRANSACTION_getMediaDevice:I = 0x3

.field static final TRANSACTION_getMediaList:I = 0x35

.field static final TRANSACTION_getMediaPlayerId:I = 0x2d

.field static final TRANSACTION_getMediaType:I = 0x4

.field static final TRANSACTION_getMediaUpdateInfo:I = 0x32

.field static final TRANSACTION_getMediaVersion:I = 0x30

.field static final TRANSACTION_getPlayId:I = 0x20

.field static final TRANSACTION_getPlayName:I = 0x1a

.field static final TRANSACTION_getPlayStatus:I = 0x1b

.field static final TRANSACTION_getRepeatMode:I = 0x1c

.field static final TRANSACTION_getShuffleMode:I = 0x1d

.field static final TRANSACTION_getSubtitleCount:I = 0x2a

.field static final TRANSACTION_getSubtitleId:I = 0x29

.field static final TRANSACTION_getTitleCount:I = 0x26

.field static final TRANSACTION_getTitleId:I = 0x25

.field static final TRANSACTION_getTotoalTime:I = 0x1f

.field static final TRANSACTION_gotoMenu:I = 0x10

.field static final TRANSACTION_isDvdLoadOK:I = 0x34

.field static final TRANSACTION_mediaTask:I = 0x33

.field static final TRANSACTION_nDealMediaKey:I = 0x2e

.field static final TRANSACTION_next:I = 0x7

.field static final TRANSACTION_pause:I = 0x37

.field static final TRANSACTION_play:I = 0x36

.field static final TRANSACTION_playByPath:I = 0xe

.field static final TRANSACTION_playByPos:I = 0xf

.field static final TRANSACTION_playPause:I = 0x8

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_seek:I = 0xc

.field static final TRANSACTION_setChapter:I = 0x15

.field static final TRANSACTION_setFilterType:I = 0x6

.field static final TRANSACTION_setTitle:I = 0x14

.field static final TRANSACTION_toggleAudioChannel:I = 0x17

.field static final TRANSACTION_toggleRepeatMode:I = 0xa

.field static final TRANSACTION_toggleScrRate:I = 0xd

.field static final TRANSACTION_toggleShuffleMode:I = 0xb

.field static final TRANSACTION_toggleSubtitle:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ts/dvdplayer/ITsPlayerService;
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
    const-string v1, "com.ts.dvdplayer.ITsPlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ts/dvdplayer/ITsPlayerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ts/dvdplayer/ITsPlayerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 500
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->enterMedia(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->changeMediaType(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaDevice()I

    move-result v3

    .line 67
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v3    # "_result":I
    :sswitch_4
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaType()I

    move-result v3

    .line 75
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v3    # "_result":I
    :sswitch_5
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getFilterType()I

    move-result v3

    .line 83
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v3    # "_result":I
    :sswitch_6
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->setFilterType(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->next()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    :sswitch_8
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->playPause()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 112
    :sswitch_9
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->prev()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    :sswitch_a
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->toggleRepeatMode()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    :sswitch_b
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->toggleShuffleMode()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    :sswitch_c
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 136
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->seek(J)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":J
    :sswitch_d
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->toggleScrRate()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    :sswitch_e
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->playByPath(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->playByPos(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->gotoMenu()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    :sswitch_11
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->ZoomOut()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    :sswitch_12
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->ZoomIn()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    :sswitch_13
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->Rotate()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    :sswitch_14
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->setTitle(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->setChapter(I)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->toggleSubtitle()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    :sswitch_17
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->toggleAudioChannel()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 227
    :sswitch_18
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getDiscType()I

    move-result v3

    .line 229
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v3    # "_result":I
    :sswitch_19
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->clickDVDMenuItem(II)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_1a
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getPlayName()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getPlayStatus()I

    move-result v3

    .line 256
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 262
    .end local v3    # "_result":I
    :sswitch_1c
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getRepeatMode()I

    move-result v3

    .line 264
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 270
    .end local v3    # "_result":I
    :sswitch_1d
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getShuffleMode()I

    move-result v3

    .line 272
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    .end local v3    # "_result":I
    :sswitch_1e
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getCurrentTime()J

    move-result-wide v3

    .line 280
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 286
    .end local v3    # "_result":J
    :sswitch_1f
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getTotoalTime()J

    move-result-wide v3

    .line 288
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 294
    .end local v3    # "_result":J
    :sswitch_20
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getPlayId()I

    move-result v3

    .line 296
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 302
    .end local v3    # "_result":I
    :sswitch_21
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaCnt()I

    move-result v3

    .line 304
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 310
    .end local v3    # "_result":I
    :sswitch_22
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getId3AlbumName()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getId3Artist()Ljava/lang/String;

    move-result-object v3

    .line 320
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getId3Title()Ljava/lang/String;

    move-result-object v3

    .line 328
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getTitleId()I

    move-result v3

    .line 336
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 342
    .end local v3    # "_result":I
    :sswitch_26
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getTitleCount()I

    move-result v3

    .line 344
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 350
    .end local v3    # "_result":I
    :sswitch_27
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getChapterId()I

    move-result v3

    .line 352
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 358
    .end local v3    # "_result":I
    :sswitch_28
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getChapterCount()I

    move-result v3

    .line 360
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 366
    .end local v3    # "_result":I
    :sswitch_29
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getSubtitleId()I

    move-result v3

    .line 368
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    .end local v3    # "_result":I
    :sswitch_2a
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getSubtitleCount()I

    move-result v3

    .line 376
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 382
    .end local v3    # "_result":I
    :sswitch_2b
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getChannelId()I

    move-result v3

    .line 384
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 390
    .end local v3    # "_result":I
    :sswitch_2c
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getChannelCount()I

    move-result v3

    .line 392
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 398
    .end local v3    # "_result":I
    :sswitch_2d
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaPlayerId()I

    move-result v3

    .line 400
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v3    # "_result":I
    :sswitch_2e
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->nDealMediaKey(I)I

    move-result v3

    .line 410
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 416
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2f
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getDvdVersion()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaVersion()Ljava/lang/String;

    move-result-object v3

    .line 426
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getDvdUpdateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaUpdateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->mediaTask(I)I

    move-result v3

    .line 456
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_34
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->isDvdLoadOK()Z

    move-result v3

    .line 464
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 470
    .end local v3    # "_result":Z
    :sswitch_35
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->getMediaList()Ljava/util/Map;

    move-result-object v3

    .line 472
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 478
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_36
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->play()V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 485
    :sswitch_37
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->pause()V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 492
    :sswitch_38
    const-string v5, "com.ts.dvdplayer.ITsPlayerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->dealBTCall(I)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
