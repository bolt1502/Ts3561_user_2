.class public Lcom/yyw/ts70xhw/StSet;
.super Ljava/lang/Object;
.source "StSet.java"


# static fields
.field public static final WORKMODE_A2DP:I = 0x5

.field public static final WORKMODE_ATV:I = 0x7

.field public static final WORKMODE_AUX1:I = 0x8

.field public static final WORKMODE_AUX2:I = 0x9

.field public static final WORKMODE_CMMB:I = 0x6

.field public static final WORKMODE_DISC:I = 0x2

.field public static final WORKMODE_DVDBOX:I = 0xf

.field public static final WORKMODE_EXCD:I = 0xe

.field public static final WORKMODE_EXD:I = 0xc

.field public static final WORKMODE_EXRAD:I = 0xd

.field public static final WORKMODE_IPOD:I = 0xa

.field public static final WORKMODE_MAX:I = 0xf

.field public static final WORKMODE_NONE:I = 0x0

.field public static final WORKMODE_RADIO:I = 0x1

.field public static final WORKMODE_SD:I = 0x4

.field public static final WORKMODE_USB:I = 0x3

.field public static final WORKMODE_VM6CD:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "ts70xhw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetAcDisplay()I
.end method

.method public static native GetAnTvFormat()I
.end method

.method public static native GetAutoNavi()I
.end method

.method public static native GetAvol()I
.end method

.method public static native GetBLDay()I
.end method

.method public static native GetBLIll()I
.end method

.method public static native GetBLNight()I
.end method

.method public static native GetBeep()I
.end method

.method public static native GetDriveVideo()I
.end method

.method public static native GetMix()I
.end method

.method public static native GetNSI()I
.end method

.method public static native GetNaviMon()I
.end method

.method public static native GetNaviName([B)I
.end method

.method public static native GetNaviPack([B)I
.end method

.method public static native GetNvol()I
.end method

.method public static native GetParkMute()I
.end method

.method public static native GetRadarSpeed()I
.end method

.method public static native GetRvol()I
.end method

.method public static native GetSvol()I
.end method

.method public static native GetTconSet([I)I
.end method

.method public static native GetWifi()I
.end method

.method public static native Getmvwns()I
.end method

.method public static native SetAcDisplaySwitch(I)I
.end method

.method public static native SetAnTvFormat(I)I
.end method

.method public static native SetAutoNaviSwitch(I)I
.end method

.method public static native SetAvol(I)I
.end method

.method public static native SetBLDay(I)I
.end method

.method public static native SetBLIllSwitch(I)I
.end method

.method public static native SetBLNight(I)I
.end method

.method public static native SetBeepSwitch(I)I
.end method

.method public static native SetDefault()I
.end method

.method public static native SetDriveVideoSwitch(I)I
.end method

.method public static native SetInit()I
.end method

.method public static native SetMix(I)I
.end method

.method public static native SetNSI(I)I
.end method

.method public static native SetNaviMonSwitch(I)I
.end method

.method public static native SetNaviName([B)I
.end method

.method public static native SetNaviPack([B)I
.end method

.method public static native SetNvol(I)I
.end method

.method public static native SetParkMute(I)I
.end method

.method public static native SetRadarSpeed(I)I
.end method

.method public static native SetRvol(I)I
.end method

.method public static native SetSave()I
.end method

.method public static native SetSvol(I)I
.end method

.method public static native SetTconSet([I)I
.end method

.method public static native SetWifi(I)I
.end method

.method public static native Setmvwns(I)I
.end method
