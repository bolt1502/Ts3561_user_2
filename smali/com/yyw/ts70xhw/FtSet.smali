.class public Lcom/yyw/ts70xhw/FtSet;
.super Ljava/lang/Object;
.source "FtSet.java"


# static fields
.field public static final iconA2DP:I = 0x7

.field public static final iconADAS:I = 0x1b

.field public static final iconAIRCON:I = 0x1a

.field public static final iconATV:I = 0x9

.field public static final iconAVIN:I = 0xa

.field public static final iconBT:I = 0x12

.field public static final iconCALL:I = 0x1c

.field public static final iconCARINFO:I = 0x16

.field public static final iconDTV:I = 0x8

.field public static final iconDVD:I = 0x3

.field public static final iconDVDBOX:I = 0x4

.field public static final iconDVR:I = 0x18

.field public static final iconEXCD:I = 0x11

.field public static final iconEXDEV:I = 0xf

.field public static final iconEXRADIO:I = 0x10

.field public static final iconGPS:I = 0x1

.field public static final iconIPOD:I = 0xc

.field public static final iconONSTAR:I = 0x14

.field public static final iconPHONELINK:I = 0xb

.field public static final iconPOD:I = 0xd

.field public static final iconRADIO:I = 0x2

.field public static final iconSD:I = 0x6

.field public static final iconSET:I = 0x13

.field public static final iconSYNC:I = 0x15

.field public static final iconTPMS:I = 0x17

.field public static final iconUSB:I = 0x5

.field public static final iconVIEW360:I = 0x19

.field public static final iconVMCD:I = 0xe

.field public static final iconWEATHER:I = 0x1d

.field public static final icon_EXIST_ADAS:I = 0x7f

.field public static final icon_EXIST_DVR:I = 0x7c

.field public static final icon_EXIST_TPMS:I = 0x7b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "ts70xhw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Destroy()I
.end method

.method public static native ExportToSd(I)I
.end method

.method public static native GetAMsd()I
.end method

.method public static native GetAutoNaviDef()I
.end method

.method public static native GetBdoor()I
.end method

.method public static native GetBrakeDef()I
.end method

.method public static native GetBtId()I
.end method

.method public static native GetBtMicGain()I
.end method

.method public static native GetBtName([C)I
.end method

.method public static native GetCamFix()I
.end method

.method public static native GetCamLine()I
.end method

.method public static native GetCamMir()I
.end method

.method public static native GetCamTrack()I
.end method

.method public static native GetCanSubT()I
.end method

.method public static native GetCanTp()I
.end method

.method public static native GetCanTpms()I
.end method

.method public static native GetCarLang()I
.end method

.method public static native GetCtErr()I
.end method

.method public static native GetCtStudy([I)I
.end method

.method public static native GetCtType()I
.end method

.method public static native GetCtXYrange()I
.end method

.method public static native GetCtXYswap()I
.end method

.method public static native GetDither()I
.end method

.method public static native GetDtvType()I
.end method

.method public static native GetDvrType()I
.end method

.method public static native GetEcdSwap()I
.end method

.method public static native GetExAmp()I
.end method

.method public static native GetExUart()I
.end method

.method public static native GetFMnum()I
.end method

.method public static native GetFMsd()I
.end method

.method public static native GetFdoor()I
.end method

.method public static native GetFmSort()I
.end method

.method public static native GetGnssMode()I
.end method

.method public static native GetGsensor()I
.end method

.method public static native GetHood()I
.end method

.method public static native GetIcon([I)I
.end method

.method public static native GetIllB()I
.end method

.method public static native GetIllG()I
.end method

.method public static native GetIllR()I
.end method

.method public static native GetLangDef()I
.end method

.method public static native GetLastMemory()I
.end method

.method public static native GetLcmType()I
.end method

.method public static native GetMWnum()I
.end method

.method public static native GetMainLogo()I
.end method

.method public static native GetMcuId([BI)I
.end method

.method public static native GetNSI()I
.end method

.method public static native GetOTnum()I
.end method

.method public static native GetOptionAC()I
.end method

.method public static native GetOptionCam()I
.end method

.method public static native GetOptionIll()I
.end method

.method public static native GetOptionLogo()I
.end method

.method public static native GetOptionSW()I
.end method

.method public static native GetOptionWarn()I
.end method

.method public static native GetOutTempDis()I
.end method

.method public static native GetParkMuteDef()I
.end method

.method public static native GetPlnId([BI)I
.end method

.method public static native GetProId([BI)I
.end method

.method public static native GetRDSen()I
.end method

.method public static native GetRadarDis()I
.end method

.method public static native GetRadioArea()I
.end method

.method public static native GetRadioIc()I
.end method

.method public static native GetRearVideoOutput()I
.end method

.method public static native GetSWnpSwap()I
.end method

.method public static native GetSdSwap()I
.end method

.method public static native GetSpeechMode()I
.end method

.method public static native GetStandByTime()I
.end method

.method public static native GetTconAdj()I
.end method

.method public static native GetTconGam([B)I
.end method

.method public static native GetTconVal([I)I
.end method

.method public static native GetTouchBall()I
.end method

.method public static native GetTrunk()I
.end method

.method public static native GetTvFormat()I
.end method

.method public static native GetUartDbg()I
.end method

.method public static native GetUsb1Spd()I
.end method

.method public static native GetUsb2Spd()I
.end method

.method public static native GetUsbHost()I
.end method

.method public static native GetVedioOutFmt()I
.end method

.method public static native GetVolPset([I)I
.end method

.method public static native GetVolSafe()I
.end method

.method public static native GetXuNiDisc()I
.end method

.method public static native GetYjtId([BI)I
.end method

.method public static native Getlgb1()I
.end method

.method public static native Getlgb2()I
.end method

.method public static native Getlgb3()I
.end method

.method public static native Getlgb4()I
.end method

.method public static native Getlgb5()I
.end method

.method public static native Init()I
.end method

.method public static native IsIconExist(I)I
.end method

.method public static native LoadFromSd()I
.end method

.method public static native Save(I)I
.end method

.method public static native SetAMsd(I)I
.end method

.method public static native SetAutoNaviDef(I)I
.end method

.method public static native SetBdoor(I)I
.end method

.method public static native SetBrakeDef(I)I
.end method

.method public static native SetBtId(I)I
.end method

.method public static native SetBtMicGain(I)I
.end method

.method public static native SetBtName([C)I
.end method

.method public static native SetCamFix(I)I
.end method

.method public static native SetCamLine(I)I
.end method

.method public static native SetCamMir(I)I
.end method

.method public static native SetCamTrack(I)I
.end method

.method public static native SetCanSubT(I)I
.end method

.method public static native SetCanTp(I)I
.end method

.method public static native SetCanTpms(I)I
.end method

.method public static native SetCarLang(I)I
.end method

.method public static native SetCtErr(I)I
.end method

.method public static native SetCtStudy([I)I
.end method

.method public static native SetCtType(I)I
.end method

.method public static native SetCtXYrange(I)I
.end method

.method public static native SetCtXYswap(I)I
.end method

.method public static native SetDither(I)I
.end method

.method public static native SetDtvType(I)I
.end method

.method public static native SetDvrType(I)I
.end method

.method public static native SetEcdAd([I)I
.end method

.method public static native SetEcdSwap(I)I
.end method

.method public static native SetExAmp(I)I
.end method

.method public static native SetExUart(I)I
.end method

.method public static native SetFMnum(I)I
.end method

.method public static native SetFMsd(I)I
.end method

.method public static native SetFdoor(I)I
.end method

.method public static native SetFmSort(I)I
.end method

.method public static native SetGnssMode(I)I
.end method

.method public static native SetGsensor(I)I
.end method

.method public static native SetHood(I)I
.end method

.method public static native SetIcon([I)I
.end method

.method public static native SetIllB(I)I
.end method

.method public static native SetIllG(I)I
.end method

.method public static native SetIllR(I)I
.end method

.method public static native SetKeyAd([I)I
.end method

.method public static native SetKeyIr([I)I
.end method

.method public static native SetKeySw([I)I
.end method

.method public static native SetLangDef(I)I
.end method

.method public static native SetLastMemory(I)I
.end method

.method public static native SetLcmType(I)I
.end method

.method public static native SetMWnum(I)I
.end method

.method public static native SetMainLogo(I)I
.end method

.method public static native SetMcuId([BI)I
.end method

.method public static native SetNSI(I)I
.end method

.method public static native SetOTnum(I)I
.end method

.method public static native SetOptionAC(I)I
.end method

.method public static native SetOptionCam(I)I
.end method

.method public static native SetOptionIll(I)I
.end method

.method public static native SetOptionLogo(I)I
.end method

.method public static native SetOptionSW(I)I
.end method

.method public static native SetOptionWarn(I)I
.end method

.method public static native SetOutTempDis(I)I
.end method

.method public static native SetParkMuteDef(I)I
.end method

.method public static native SetPlnId([BI)I
.end method

.method public static native SetProId([BI)I
.end method

.method public static native SetRDSen(I)I
.end method

.method public static native SetRadarDis(I)I
.end method

.method public static native SetRadioArea(I)I
.end method

.method public static native SetRadioIc(I)I
.end method

.method public static native SetRearVideoOutput(I)I
.end method

.method public static native SetSWnpSwap(I)I
.end method

.method public static native SetSdSwap(I)I
.end method

.method public static native SetSpeechMode(I)I
.end method

.method public static native SetStandByTime(I)I
.end method

.method public static native SetTconAdj(I)I
.end method

.method public static native SetTconGam([B)I
.end method

.method public static native SetTconVal([I)I
.end method

.method public static native SetTouchBall(I)I
.end method

.method public static native SetTrunk(I)I
.end method

.method public static native SetTvFormat(I)I
.end method

.method public static native SetUartDbg(I)I
.end method

.method public static native SetUsb1Spd(I)I
.end method

.method public static native SetUsb2Spd(I)I
.end method

.method public static native SetUsbHost(I)I
.end method

.method public static native SetVedioOutFmt(I)I
.end method

.method public static native SetVolPset([I)I
.end method

.method public static native SetVolSafe(I)I
.end method

.method public static native SetXuNiDisc(I)I
.end method

.method public static native SetYjtId([BI)I
.end method

.method public static native Setlgb1(I)I
.end method

.method public static native Setlgb2(I)I
.end method

.method public static native Setlgb3(I)I
.end method

.method public static native Setlgb4(I)I
.end method

.method public static native Setlgb5(I)I
.end method
