.class public Lcom/yyw/ts70xhw/Iop;
.super Ljava/lang/Object;
.source "Iop.java"


# static fields
.field public static final CVBS_BRIGHTNESS:I = 0x0

.field public static final CVBS_CONTRAST:I = 0x1

.field public static final CVBS_HUE:I = 0x2

.field public static final CVBS_SATURATION:I = 0x3

.field public static final CVBS_SRC_AVIN:I = 0x1

.field public static final CVBS_SRC_CAM:I = 0x0

.field public static final CVBS_SRC_FCAM:I = 0x3

.field public static final CVBS_SRC_TV:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "ts70xhw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AdjVolume(II)I
.end method

.method public static native AuxHold()I
.end method

.method public static native AuxRelease()I
.end method

.method public static native BalAdj(I)I
.end method

.method public static native BalFadDisable()I
.end method

.method public static native BalSet(I)I
.end method

.method public static native BasSet(I)I
.end method

.method public static native BlueSpeaking(I)I
.end method

.method public static native DiscEject()I
.end method

.method public static native DiscIsInsert()I
.end method

.method public static native DiscStop()I
.end method

.method public static native EqmSet(I)I
.end method

.method public static native EvolTask(I)I
.end method

.method public static native FadAdj(I)I
.end method

.method public static native FadSet(I)I
.end method

.method public static native GetBal()I
.end method

.method public static native GetBas()I
.end method

.method public static native GetChipVer()I
.end method

.method public static native GetColor(II)I
.end method

.method public static native GetEqm()I
.end method

.method public static native GetFad()I
.end method

.method public static native GetMediaOrBlue()I
.end method

.method public static native GetMid()I
.end method

.method public static native GetMute()I
.end method

.method public static native GetSdFileUpdate()I
.end method

.method public static native GetTouchExt([I)I
.end method

.method public static native GetTouchMul([I)I
.end method

.method public static native GetTre()I
.end method

.method public static native GetVolume(I)I
.end method

.method public static native GetWorkMode()I
.end method

.method public static native IIcRead(BB[BI)I
.end method

.method public static native IIcReadOneByte(BB)B
.end method

.method public static native IIcReadnoadr(B[BI)I
.end method

.method public static native IIcSend(B[BI)I
.end method

.method public static native IIcSendOneByte(BBB)I
.end method

.method public static native LudSet(I)I
.end method

.method public static native MidSet(I)I
.end method

.method public static native NaviSpeaking(I)I
.end method

.method public static native PopMuteClr(I)I
.end method

.method public static native PopMuteDelay(I)I
.end method

.method public static native PopMuteFast(I)I
.end method

.method public static native PopMuteSet(I)I
.end method

.method public static native RstPort(I)I
.end method

.method public static native SetColor(III)I
.end method

.method public static native SetColorDefault(I)I
.end method

.method public static native SetMute(I)I
.end method

.method public static native SetVideoChannel(I)I
.end method

.method public static native SetVolume(II)I
.end method

.method public static native SetWorkMode(I)I
.end method

.method public static native TreBasDisable()I
.end method

.method public static native TreSet(I)I
.end method

.method public static native UartClose()I
.end method

.method public static native UartOpen(I)I
.end method

.method public static native UartRead([BI)I
.end method

.method public static native UartSend([BI)I
.end method

.method public static native VidPort(I)I
.end method

.method public static native VolumeFix(II)I
.end method

.method public static native tsxhwSleep()I
.end method

.method public static native tsxhwStart(I)I
.end method
