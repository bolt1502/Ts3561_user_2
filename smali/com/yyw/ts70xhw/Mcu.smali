.class public Lcom/yyw/ts70xhw/Mcu;
.super Ljava/lang/Object;
.source "Mcu.java"


# static fields
.field public static final SW_ID_CALLDN:I = 0xa

.field public static final SW_ID_CALLUP:I = 0x9

.field public static final SW_ID_CHDN:I = 0x6

.field public static final SW_ID_CHUP:I = 0x5

.field public static final SW_ID_MAX:I = 0xd

.field public static final SW_ID_MODE:I = 0x8

.field public static final SW_ID_MUTE:I = 0x7

.field public static final SW_ID_NAVI:I = 0xc

.field public static final SW_ID_POWER:I = 0x0

.field public static final SW_ID_PP:I = 0xb

.field public static final SW_ID_SEEKDN:I = 0x4

.field public static final SW_ID_SEEKUP:I = 0x3

.field public static final SW_ID_VOLDN:I = 0x2

.field public static final SW_ID_VOLUP:I = 0x1

.field public static final XKEY_BOMBOFF:I = 0x15

.field public static final XKEY_CLOS1:I = 0x6

.field public static final XKEY_CLOSA:I = 0x7

.field public static final XKEY_EJCECT:I = 0x0

.field public static final XKEY_EJFOR:I = 0x12

.field public static final XKEY_OPEN1:I = 0x4

.field public static final XKEY_OPENA:I = 0x5

.field public static final XKEY_POWOF:I = 0x10

.field public static final XKEY_POWON:I = 0x11

.field public static final XKEY_RSTACC:I = 0x13

.field public static final XKEY_RSTPOW:I = 0x14

.field public static final XKEY_XT5:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "ts70xhw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BklTurn()I
.end method

.method public static native BklTurnAdj(I)I
.end method

.method public static native BklTurnCan(I)I
.end method

.method public static native BklTurnInt(I)I
.end method

.method public static native BklisOn()I
.end method

.method public static native GetBrake()I
.end method

.method public static native GetCanMsg([BI)I
.end method

.method public static native GetDisc()I
.end method

.method public static native GetEkey()I
.end method

.method public static native GetGsensorState()I
.end method

.method public static native GetIll()I
.end method

.method public static native GetMcuVer([C)I
.end method

.method public static native GetPkey()I
.end method

.method public static native GetPowState()I
.end method

.method public static native GetReverse()I
.end method

.method public static native GetRkey()I
.end method

.method public static native GetSerialId([B)I
.end method

.method public static native GetSkey()I
.end method

.method public static native GetSwKeyNow()I
.end method

.method public static native GetSwKeyState()I
.end method

.method public static native GetXYZ([B)I
.end method

.method public static native Getid32([B)I
.end method

.method public static native Getid40([B)I
.end method

.method public static native McuTestResult()I
.end method

.method public static native McuTestStart()I
.end method

.method public static native McuUpdateEnd()I
.end method

.method public static native McuUpdateRead([BI)I
.end method

.method public static native McuUpdateSend([BI)I
.end method

.method public static native McuUpdateStart()I
.end method

.method public static native SendBeep(I)I
.end method

.method public static native SendByeBye()I
.end method

.method public static native SendCanMsg([BI)I
.end method

.method public static native SendClock(III)I
.end method

.method public static native SendDisp(IIIIIIII)I
.end method

.method public static native SendXKey(I)I
.end method

.method public static native SendxyTouch(IIII)I
.end method

.method public static native SetCanBox(BB)I
.end method

.method public static native SetCkey(I)I
.end method

.method public static native SetCmmbstate(B)I
.end method

.method public static native SetDiscstate(B)I
.end method

.method public static native SetMutestate(B)I
.end method

.method public static native SetXYZ([BI)I
.end method

.method public static native Setcandebug(I)I
.end method

.method public static native Setcmmbawayson(I)I
.end method

.method public static native Setpowoffbutlcdon(I)I
.end method

.method public static native SwKeyDelete()I
.end method

.method public static native SwKeyStudy(I)I
.end method

.method public static native mcunext()I
.end method

.method public static native mcutask()I
.end method
