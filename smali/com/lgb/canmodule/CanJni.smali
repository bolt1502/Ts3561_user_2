.class public Lcom/lgb/canmodule/CanJni;
.super Ljava/lang/Object;
.source "CanJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    const-string v0, "can70"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AccordCarCtrl(II)V
.end method

.method public static native AccordGetAdtData(Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;)V
.end method

.method public static native AccordGetCamMode(Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;)V
.end method

.method public static native AccordGetRadCurFreq(Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;)V
.end method

.method public static native AccordGetRadListAm(Lcom/lgb/canmodule/CanDataInfo$AccordRadList;)V
.end method

.method public static native AccordGetRadListFm(Lcom/lgb/canmodule/CanDataInfo$AccordRadList;)V
.end method

.method public static native AccordGetRadPresetAm(Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;)V
.end method

.method public static native AccordGetRadPresetFm(Lcom/lgb/canmodule/CanDataInfo$AccordRadPreset;)V
.end method

.method public static native AccordGetScrSta(Lcom/lgb/canmodule/CanDataInfo$AccordScrta;)V
.end method

.method public static native AccordGetSetData(Lcom/lgb/canmodule/CanDataInfo$AccordSetData;)V
.end method

.method public static native AccordQuery(II)V
.end method

.method public static native AccordRadioCtrl(II)V
.end method

.method public static native AiRuizeCarSet(II)V
.end method

.method public static native AiRuizeGetCarSet(Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;)V
.end method

.method public static native AlsvinCarSet(II)V
.end method

.method public static native AxelaCDCtrl(II)V
.end method

.method public static native AxelaGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Sta;Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;)V
.end method

.method public static native AxelaGetCdSta()I
.end method

.method public static native AxelaQuery(II)V
.end method

.method public static native B70CarSet(II)V
.end method

.method public static native B70IsPhoneActive()I
.end method

.method public static native B70TimeFormat(I)V
.end method

.method public static native B70TimeSet(I)V
.end method

.method public static native BZCarSet(II)V
.end method

.method public static native BZClearPage(I)V
.end method

.method public static native BZGetAdt(Lcom/lgb/canmodule/CanDataInfo$PeugAdt;)V
.end method

.method public static native BZGetLogCfg(Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;)V
.end method

.method public static native BZGetLogData(IILcom/lgb/canmodule/CanDataInfo$PSALogUnit;)I
.end method

.method public static native BZGetLogInfo(ILcom/lgb/canmodule/CanDataInfo$PSALogInfo;)V
.end method

.method public static native BZGetMemTab(Lcom/lgb/canmodule/CanDataInfo$C4LMemTab;)V
.end method

.method public static native BZGetPage(Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;)V
.end method

.method public static native BZGetSetup(Lcom/lgb/canmodule/CanDataInfo$PeugSet;)V
.end method

.method public static native BZMemTabSet(Lcom/lgb/canmodule/CanDataInfo$C4LMemTab;I)V
.end method

.method public static native BZQuery(I)V
.end method

.method public static native BZSetPage(I)V
.end method

.method public static native BZStartQueryLog(II)V
.end method

.method public static native BZStopQueryLog(I)V
.end method

.method public static native BZTpmsSet(I)V
.end method

.method public static native BaicEcGetCarInfo(Lcom/lgb/canmodule/CanDataInfo$BaicEcInfo;)V
.end method

.method public static native BaicEcQuery(I)V
.end method

.method public static native BlsuT3CarQuery(II)V
.end method

.method public static native BlsuT3CarSet(I)V
.end method

.method public static native BlsuT3GetRadarSta(Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;)V
.end method

.method public static native BmwMiniGetCtrlInfo(Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo_MINI;)V
.end method

.method public static native BmwMiniGetTime(Lcom/lgb/canmodule/CanDataInfo$BMW_Time_MINI;)V
.end method

.method public static native BmwMiniGetTrip(Lcom/lgb/canmodule/CanDataInfo$BMW_Trip_MINI;)V
.end method

.method public static native BmwX1CarQuery(I)V
.end method

.method public static native BmwX1EcuSet(I)V
.end method

.method public static native BmwX1GetDate(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Date;)V
.end method

.method public static native BmwX1GetDrive(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Drive;)V
.end method

.method public static native BmwX1GetState(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_State;)V
.end method

.method public static native BmwX1GetTime(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Time;)V
.end method

.method public static native BmwX1GetTrip(Lcom/lgb/canmodule/CanDataInfo$BMW_X1_Trip;)V
.end method

.method public static native CCH2RevCamSet(I)V
.end method

.method public static native CCH2SetCamMode(I)V
.end method

.method public static native CCH2sAcSet(II)V
.end method

.method public static native CCH2sGetCarSet(Lcom/lgb/canmodule/CanDataInfo$H2CarData;)V
.end method

.method public static native CCH6CarSet(II)V
.end method

.method public static native CCH6GetCarSet(Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;)V
.end method

.method public static native CCH6Query(II)V
.end method

.method public static native CanMain(I)I
.end method

.method public static native CanStart(II)I
.end method

.method public static native ChrOthACCtrl(II)V
.end method

.method public static native ChrOthAmpCtrl(II)V
.end method

.method public static ChrOthCDCtrl(II)V
    .locals 1
    .param p0, "cmd"    # I
    .param p1, "para"    # I

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthCDCtrl(III)V

    .line 597
    return-void
.end method

.method public static native ChrOthCDCtrl(III)V
.end method

.method public static native ChrOthCarSet(II)V
.end method

.method public static native ChrOthCarTypeSet(I)V
.end method

.method public static native ChrOthGetAdt(Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;)V
.end method

.method public static native ChrOthGetCarSet(Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;)V
.end method

.method public static native ChrOthGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;)V
.end method

.method public static native ChrOthGetCdSta(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;)V
.end method

.method public static native ChrOthGetID3(Lcom/lgb/canmodule/CanDataInfo$ChrOthText;Lcom/lgb/canmodule/CanDataInfo$ChrOthText;Lcom/lgb/canmodule/CanDataInfo$ChrOthText;)V
.end method

.method public static native ChrOthGetList(ILcom/lgb/canmodule/CanDataInfo$ChrOthText;)I
.end method

.method public static native ChrOthGetListUpdateItem([III)I
.end method

.method public static native ChrOthQuery(IIII)V
.end method

.method public static native ChrXbsSetAudio(II)V
.end method

.method public static native ChrXbsSetCompass(II)V
.end method

.method public static native CompassGetAmpInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;)V
.end method

.method public static native CrstourCamModeSet(I)V
.end method

.method public static native CrstourConsClear()V
.end method

.method public static native CrstourGetCarData(Lcom/lgb/canmodule/CanDataInfo$CstourCarInfo;)V
.end method

.method public static native CrstourQuery(II)V
.end method

.method public static native CrstourRadioCtrl(II)V
.end method

.method public static native Cs75CarQuery(II)V
.end method

.method public static native Cs75CarSet(II)V
.end method

.method public static native Cs75GetCarInfo(Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;)V
.end method

.method public static native Cs75GetData(Lcom/lgb/canmodule/CanDataInfo$CS75Data;)V
.end method

.method public static native Cs75SetCameraMode(I)V
.end method

.method public static native DfJyX5CarQuery(I)V
.end method

.method public static native DfJyX5CarSet(II)V
.end method

.method public static native DfJyX5GetInfo(Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;)V
.end method

.method public static native DtT60CarSet(III)V
.end method

.method public static native DtT60GetCarData(Lcom/lgb/canmodule/CanDataInfo$DT_T60_DATA1;)V
.end method

.method public static native DtT60Query(II)V
.end method

.method public static native E90CarSet(II)V
.end method

.method public static native E90GetCtrlData(Lcom/lgb/canmodule/CanDataInfo$BMW_CtrlInfo;)V
.end method

.method public static native E90GetDriveData(Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;)V
.end method

.method public static native E90GetSetData(Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;)V
.end method

.method public static native E90KeySend(II)V
.end method

.method public static native E90Query(II)V
.end method

.method public static native FiatAllGetDevInfo(Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;)V
.end method

.method public static native FiatAllGetUSBTime(Lcom/lgb/canmodule/CanDataInfo$FiatUsbTime;)V
.end method

.method public static native FiatAllUsbCtrl(I)V
.end method

.method public static native FiatBravoGetDevInfo(Lcom/lgb/canmodule/CanDataInfo$FiatCarDevInfo;)V
.end method

.method public static native FiatBravoUsbCtrl(I)V
.end method

.method public static native FlatDobloCarSet(II)V
.end method

.method public static native FlatDobloGetCarSet(Lcom/lgb/canmodule/CanDataInfo$FlatSetData;)V
.end method

.method public static native FlatDobloQuery(IIII)V
.end method

.method public static native FordCarSet(II)V
.end method

.method public static native FordGetActivePark(Lcom/lgb/canmodule/CanDataInfo$FordActivePark;)V
.end method

.method public static native FordGetAdt(Lcom/lgb/canmodule/CanDataInfo$FordAdt;)V
.end method

.method public static native FordGetForeRadarEx(Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;)V
.end method

.method public static native FordGetLang(Lcom/lgb/canmodule/CanDataInfo$FordCarLang;)V
.end method

.method public static native FordGetParkAss(Lcom/lgb/canmodule/CanDataInfo$FordParkAssist;)V
.end method

.method public static native FordGetRearAC(Lcom/lgb/canmodule/CanDataInfo$FordReadAC;)V
.end method

.method public static native FordGetSetup(Lcom/lgb/canmodule/CanDataInfo$FordSet;)V
.end method

.method public static native FordGetSyncCnUI(Lcom/lgb/canmodule/CanDataInfo$SyncPhoneTime;Lcom/lgb/canmodule/CanDataInfo$SyncMediaTime;Lcom/lgb/canmodule/CanDataInfo$SyncMenuInfo;Lcom/lgb/canmodule/CanDataInfo$SyncWin;)V
.end method

.method public static native FordGetSyncReq(Lcom/lgb/canmodule/CanDataInfo$SyncACReq;)V
.end method

.method public static native FordGetSyncSta(Lcom/lgb/canmodule/CanDataInfo$SyncStatus;)V
.end method

.method public static native FordGetSyncUsUI(Lcom/lgb/canmodule/CanDataInfo$SyncStr;Lcom/lgb/canmodule/CanDataInfo$SyncStr;Lcom/lgb/canmodule/CanDataInfo$SyncStr;)V
.end method

.method public static native FordGetSyncVer(Lcom/lgb/canmodule/CanDataInfo$SyncVer;)V
.end method

.method public static native FordGetWarn(Lcom/lgb/canmodule/CanDataInfo$FordWarn;)V
.end method

.method public static native FordQuery(II)V
.end method

.method public static native FordSyncCtrl(I)V
.end method

.method public static native GMACCtrl(II)V
.end method

.method public static native GMCarCtrl(II)V
.end method

.method public static native GMGetACSet(Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;)V
.end method

.method public static native GMGetAdtAC(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;)V
.end method

.method public static native GMGetAdtAll(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;)V
.end method

.method public static native GMGetAdtCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;)V
.end method

.method public static native GMGetAdtConv(Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;)V
.end method

.method public static native GMGetAdtLight(Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;)V
.end method

.method public static native GMGetAdtPzjc(Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;)V
.end method

.method public static native GMGetCarRadar(Lcom/lgb/canmodule/CanDataInfo$GM_Radar;)V
.end method

.method public static native GMGetCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;)V
.end method

.method public static native GMGetCompass(Lcom/lgb/canmodule/CanDataInfo$GM_Compass;)V
.end method

.method public static native GMGetGps(Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;Lcom/lgb/canmodule/CanDataInfo$GM_GpsStr;Lcom/lgb/canmodule/CanDataInfo$GM_Trip;)V
.end method

.method public static native GMGetLang(Lcom/lgb/canmodule/CanDataInfo$GM_Lang;)V
.end method

.method public static native GMGetLight(Lcom/lgb/canmodule/CanDataInfo$GM_Light;)V
.end method

.method public static native GMGetOnStar(Lcom/lgb/canmodule/CanDataInfo$GM_OnStarSta;Lcom/lgb/canmodule/CanDataInfo$GM_PhoneInfo;)V
.end method

.method public static native GMGetTPMS(Lcom/lgb/canmodule/CanDataInfo$GM_TPMS;)V
.end method

.method public static native GMGetWarnVoice(Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;)V
.end method

.method public static native GMGpsCtrl(II)V
.end method

.method public static native GMLangCtrl(I)V
.end method

.method public static native GMOnStarCtrl(I)V
.end method

.method public static native GMOnStarDial(Ljava/lang/String;)V
.end method

.method public static native GMQuery(I)V
.end method

.method public static native GMRadarCtrl(I)V
.end method

.method public static native GMWarnVoiceCtrl(I)V
.end method

.method public static native GeelyBoyCarAcSet(II)V
.end method

.method public static native GeelyBoyCarCameraSet(I)V
.end method

.method public static native GeelyBoyCarQuery(II)V
.end method

.method public static native GeelyBoyCarSet(II)V
.end method

.method public static native GeelyBoyGetInfo(Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;)V
.end method

.method public static native GeelyCarAcSet(IIII)V
.end method

.method public static native GeelyCarCameraSet(I)V
.end method

.method public static native GeelyCarQuery(II)V
.end method

.method public static native GeelyCarSet(II)V
.end method

.method public static native GeelyGetCameraSta(Lcom/lgb/canmodule/CanDataInfo$Geely_Camera;)V
.end method

.method public static native GeelyGetCarSet(Lcom/lgb/canmodule/CanDataInfo$Geely_CarSet;)V
.end method

.method public static native GetACInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;)V
.end method

.method public static native GetCanFsTp()I
.end method

.method public static native GetCanType()I
.end method

.method public static native GetCarInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;)V
.end method

.method public static native GetDoorInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;)V
.end method

.method public static native GetEpsInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_EpsInfo;)V
.end method

.method public static native GetOutTemp(Lcom/lgb/canmodule/CanDataInfo$CAN_OutTmp;)V
.end method

.method public static native GetRadarInfo(Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;)V
.end method

.method public static native GetRadarUpdateSta()I
.end method

.method public static native GetSeatBelt(Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;)V
.end method

.method public static native GetSpeed(Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;)V
.end method

.method public static native GetSubType()I
.end method

.method public static native GetUpdateType()I
.end method

.method public static native GetVersion(Lcom/lgb/canmodule/CanDataInfo$CAN_VerInfo;)V
.end method

.method public static native GetVwCarInfo1(Lcom/lgb/canmodule/CanDataInfo$VWCarInfo1;)V
.end method

.method public static native GetVwCarInfo2(Lcom/lgb/canmodule/CanDataInfo$VWCarInfo2;)V
.end method

.method public static native GmSbAcSet(II)V
.end method

.method public static native GmSbCarCameraCtl(II)V
.end method

.method public static native GmSbCarGetCarSta(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSta;)V
.end method

.method public static native GmSbCarKeyCtl(II)V
.end method

.method public static native GmSbCarModeCtl(II)V
.end method

.method public static native GmSbCarMoudleCtl(II)V
.end method

.method public static native GmSbCarTouchCtl(III)V
.end method

.method public static native GmSbGetCarBatMsg(Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;)V
.end method

.method public static native GmSbGetCarFdjWatTmp(Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;)V
.end method

.method public static native GmSbGetCarFdjzs(Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;)V
.end method

.method public static native GmSbGetCarMile(Lcom/lgb/canmodule/CanDataInfo$GM_Mile;)V
.end method

.method public static native GmSbGetCarOilMsg(Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;)V
.end method

.method public static native GmSbGetCarSetEx(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;)V
.end method

.method public static native GmSbGetCarSetExAdt(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;)V
.end method

.method public static native GmSbIapGetPro(Lcom/lgb/canmodule/CanDataInfo$GmSb_IapPro;)V
.end method

.method public static native GmSbIapGetReq(Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;)V
.end method

.method public static native GmSbIapGetSta(Lcom/lgb/canmodule/CanDataInfo$GmSb_IapSta;)V
.end method

.method public static native GolfAutoShowAC(I)V
.end method

.method public static native GolfGetACData(Lcom/lgb/canmodule/CanDataInfo$GolfACData;)V
.end method

.method public static native GolfGetAdtChair(Lcom/lgb/canmodule/CanDataInfo$GolfAdtChair;)V
.end method

.method public static native GolfGetAdtDriverAssist(Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist;Lcom/lgb/canmodule/CanDataInfo$GolfAdtDriverAssist2;)V
.end method

.method public static native GolfGetAdtEsc(Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;)V
.end method

.method public static native GolfGetAdtLight(Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;)V
.end method

.method public static native GolfGetAdtMFD(Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;)V
.end method

.method public static native GolfGetAdtMW(Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;)V
.end method

.method public static native GolfGetAdtOC(Lcom/lgb/canmodule/CanDataInfo$GolfAdtOpenAndC;)V
.end method

.method public static native GolfGetAdtPM(Lcom/lgb/canmodule/CanDataInfo$GolfAdtParkAndM;)V
.end method

.method public static native GolfGetAdtTyres(Lcom/lgb/canmodule/CanDataInfo$GolfAdtTyres;)V
.end method

.method public static native GolfGetAdtUntis(Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;)V
.end method

.method public static native GolfGetCarTip(Lcom/lgb/canmodule/CanDataInfo$GolfCarTip;)V
.end method

.method public static native GolfGetConvConsumersInfo(Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumersInfo;)V
.end method

.method public static native GolfGetDriverAss(Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss;Lcom/lgb/canmodule/CanDataInfo$GolfDriverAss2;)V
.end method

.method public static native GolfGetDrivingConvConsumers(Lcom/lgb/canmodule/CanDataInfo$GolfConvConsumers;)V
.end method

.method public static native GolfGetDrivingLongTerm(Lcom/lgb/canmodule/CanDataInfo$GolfDistance;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;)V
.end method

.method public static native GolfGetDrivingRange(Lcom/lgb/canmodule/CanDataInfo$GolfRange;)V
.end method

.method public static native GolfGetDrivingSinRefu(Lcom/lgb/canmodule/CanDataInfo$GolfDistance;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;)V
.end method

.method public static native GolfGetDrivingSinSatrt(Lcom/lgb/canmodule/CanDataInfo$GolfDistance;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;)V
.end method

.method public static native GolfGetEscSys(Lcom/lgb/canmodule/CanDataInfo$GolfData;)V
.end method

.method public static native GolfGetLang(Lcom/lgb/canmodule/CanDataInfo$GolfData;)V
.end method

.method public static native GolfGetLight(Lcom/lgb/canmodule/CanDataInfo$GolfLight;Lcom/lgb/canmodule/CanDataInfo$GolfLight2;)V
.end method

.method public static native GolfGetMFD(Lcom/lgb/canmodule/CanDataInfo$GolfMFD;)V
.end method

.method public static native GolfGetMirrorWiper(Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;)V
.end method

.method public static native GolfGetOpenClose(Lcom/lgb/canmodule/CanDataInfo$GolfOpeningAndClosing;)V
.end method

.method public static native GolfGetParkMan(Lcom/lgb/canmodule/CanDataInfo$GolfParkAndManoeur;)V
.end method

.method public static native GolfGetRadarColor(Lcom/lgb/canmodule/CanDataInfo$GolfRadarColor;Lcom/lgb/canmodule/CanDataInfo$GolfRadarColor;)V
.end method

.method public static native GolfGetRadarVol(Lcom/lgb/canmodule/CanDataInfo$GolfRadarVol;)V
.end method

.method public static native GolfGetReports(Lcom/lgb/canmodule/CanDataInfo$GolfCarReports;)V
.end method

.method public static native GolfGetSeatDriveProfile(Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;)V
.end method

.method public static native GolfGetService(Lcom/lgb/canmodule/CanDataInfo$GolfVehicleNo;Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDaysComm;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;Lcom/lgb/canmodule/CanDataInfo$GolfDistanceCommon;)V
.end method

.method public static native GolfGetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V
.end method

.method public static native GolfGetTyres(Lcom/lgb/canmodule/CanDataInfo$GolfTyres;)V
.end method

.method public static native GolfGetUnits(Lcom/lgb/canmodule/CanDataInfo$GolfUnits;)V
.end method

.method public static native GolfQuery(II)V
.end method

.method public static native GolfSendCmd(II)V
.end method

.method public static native GolfSetTime(Lcom/lgb/canmodule/CanDataInfo$GolfTime;)V
.end method

.method public static native GqcqCam360Ctrl(I)V
.end method

.method public static native GqcqCamModeSW()V
.end method

.method public static native GqcqCamModeSet(I)V
.end method

.method public static native GqcqCarSet(II)V
.end method

.method public static native GqcqGetCamMode(Lcom/lgb/canmodule/CanDataInfo$GS5Cam;)V
.end method

.method public static native GqcqGetLinkSos(Lcom/lgb/canmodule/CanDataInfo$GCLinkSos;)V
.end method

.method public static native GqcqGetSet(Lcom/lgb/canmodule/CanDataInfo$GS4Set;)V
.end method

.method public static native GqcqIsHaveSetOpt()I
.end method

.method public static native Gs4CarCamSwitch(I)V
.end method

.method public static native Gs8AcSet(II)V
.end method

.method public static native Gs8GetAcSet(Lcom/lgb/canmodule/CanDataInfo$GCAirData;)V
.end method

.method public static native HmS5CameraSet(I)V
.end method

.method public static native HmS7CarSet(I)V
.end method

.method public static native HmS7GetCarSet(Lcom/lgb/canmodule/CanDataInfo$HmS7_CarSet;)V
.end method

.method public static native HmV70CarSet(II)V
.end method

.method public static native HondaDACarSet(II)V
.end method

.method public static native HondaDAGetCameraSta(Lcom/lgb/canmodule/CanDataInfo$HondaCameraSta;)V
.end method

.method public static native HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V
.end method

.method public static native HondaDAGetConsump(Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;)V
.end method

.method public static native HondaDAGetConsumpCurrnt(Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;)V
.end method

.method public static native HondaDAGetConsumpHistory(Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;)V
.end method

.method public static native HondaDAQuery(II)V
.end method

.method public static native HondaGetCompass(Lcom/lgb/canmodule/CanDataInfo$HondaCompass;)V
.end method

.method public static native HondaOldCompassCtrl(II)V
.end method

.method public static native HondaOldGetMediaDev(Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;)V
.end method

.method public static native HondaOldPlayCtrl(I)V
.end method

.method public static native HondaOldTimeCtrl(II)V
.end method

.method public static native IsGotoSync()I
.end method

.method public static native IsHaveAc()I
.end method

.method public static native IsHaveEps()Z
.end method

.method public static native IsHaveForeRadar()Z
.end method

.method public static native IsHaveRadar()Z
.end method

.method public static native JACRefineGetTpms(Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;)V
.end method

.method public static native JLCarSet(II)V
.end method

.method public static native JLGetBatData(Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;)V
.end method

.method public static native JLGetCarFault(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;)V
.end method

.method public static native JLGetCarMsg(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;)V
.end method

.method public static native JLGetCarSet(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_SET;)V
.end method

.method public static native JLGetWarn(Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;)V
.end method

.method public static native JacGetTpmsrSta(Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;)V
.end method

.method public static native JacRefineWcGetTpmsWarn(Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;)V
.end method

.method public static native KadjarCarSet(II)V
.end method

.method public static native KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V
.end method

.method public static native KadjarGetEcu(Lcom/lgb/canmodule/CanDataInfo$KadjarECU;)V
.end method

.method public static native KadjarGetSos(Lcom/lgb/canmodule/CanDataInfo$KadjarSos;)V
.end method

.method public static native KaiYi3xCarSet(II)V
.end method

.method public static native KaiYi3xGetInfo(Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;)V
.end method

.method public static native KoleosAcSet(II)V
.end method

.method public static native LexusIs250AirKey(II)V
.end method

.method public static native LexusIs250GetAudio(Lcom/lgb/canmodule/CanDataInfo$Is250_Audio;)V
.end method

.method public static native LexusIs250GetMedia(Lcom/lgb/canmodule/CanDataInfo$Is250_Media;)V
.end method

.method public static native LexusIs250GetVol(Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;)V
.end method

.method public static native LexusIs250Query(II)V
.end method

.method public static native LexusIs250SetAudio(I)V
.end method

.method public static native LexusIs250SetTouchKey(II)V
.end method

.method public static native LifanGetCamMode(Lcom/lgb/canmodule/CanDataInfo$Lifan_CamMode;)V
.end method

.method public static native LifanGetRadarSta(Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;)V
.end method

.method public static native LifanGetWarnVoice(Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;)V
.end method

.method public static native LifanSetCamMode(I)V
.end method

.method public static native LifanSetRadarCtrl(I)V
.end method

.method public static native LifanSetWarnVoice(I)V
.end method

.method public static native MGGSACSet(II)V
.end method

.method public static native MGGSCarSet(III)V
.end method

.method public static native MGGSGetSetData(Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;)V
.end method

.method public static native MGGSQuery(I)V
.end method

.method public static native MGZSGetSetData(Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;)V
.end method

.method public static native MZDSendKey(I)V
.end method

.method public static native MagotenGetBackgroundlight(Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;)V
.end method

.method public static native MagotenGetRvsCameraMode(Lcom/lgb/canmodule/CanDataInfo$GolfCarRvsCameraMode;)V
.end method

.method public static native MagotenGetSeat(Lcom/lgb/canmodule/CanDataInfo$GolfChair;)V
.end method

.method public static native MgRx5GetCarSet(Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;)V
.end method

.method public static native MiniCarSet(IIIII)V
.end method

.method public static native MiniGetCarCheck(Lcom/lgb/canmodule/CanDataInfo$MiniCheck;)V
.end method

.method public static native MiniGetCarDate(Lcom/lgb/canmodule/CanDataInfo$MiniDate;)V
.end method

.method public static native MiniGetCarEngineOil(Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;)V
.end method

.method public static native MiniGetCarPc(Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;)V
.end method

.method public static native MiniGetCarRpa(Lcom/lgb/canmodule/CanDataInfo$MiniRPA;)V
.end method

.method public static native MiniGetCarService(Lcom/lgb/canmodule/CanDataInfo$MiniService;)V
.end method

.method public static native MiniGetCarSet(Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;)V
.end method

.method public static native MiniGetCarTime(Lcom/lgb/canmodule/CanDataInfo$MiniTime;)V
.end method

.method public static native MiniHostSet(II)V
.end method

.method public static native MiniQuery(I)V
.end method

.method public static native MzdCx4CarSet(II)V
.end method

.method public static native MzdCx4CdCmd(I)V
.end method

.method public static native MzdCx4GetAveOilHis(Lcom/lgb/canmodule/CanDataInfo$Cx4_Ave_Oil_His;)V
.end method

.method public static native MzdCx4GetCarSetInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;)V
.end method

.method public static native MzdCx4GetCdId3(Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_Id3;)V
.end method

.method public static native MzdCx4GetCdPlayInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_Cd_PlayInfo;)V
.end method

.method public static native MzdCx4GetCdSta()I
.end method

.method public static native MzdCx4GetDevInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_Dev_Info;)V
.end method

.method public static native MzdCx4GetMineOilInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_Min_Oil_Info;)V
.end method

.method public static native MzdCx4Query(II)V
.end method

.method public static native MzdCx5CarSet(II)V
.end method

.method public static native MzdCx5GetCarSet(Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;)V
.end method

.method public static native MzdCx5Query(I)V
.end method

.method public static native MzdCx7SetTimeKey(I)V
.end method

.method public static native NissanCamera360Key(I)V
.end method

.method public static native OdysseyAudioCmd(I)V
.end method

.method public static native OdysseyGetIcon(Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;)V
.end method

.method public static native OdysseyGetMenu(Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;)V
.end method

.method public static native OdysseyGetVol(Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;)V
.end method

.method public static native OldFiestaCarSet(II)V
.end method

.method public static native OldFiestaGetCarData(Lcom/lgb/canmodule/CanDataInfo$FiestaCar;)V
.end method

.method public static native OldFiestaGetSetData(Lcom/lgb/canmodule/CanDataInfo$FiestaSet;)V
.end method

.method public static native OldFiestaGetText(ILcom/lgb/canmodule/CanDataInfo$FiestaInfo;)I
.end method

.method public static native OutLanderAMPSet(II)V
.end method

.method public static native OutLanderGetAMPSet(Lcom/lgb/canmodule/CanDataInfo$SLOutLanderAMP;)V
.end method

.method public static native OutLanderOldAMPSet(II)V
.end method

.method public static native OutLanderQuery(II)V
.end method

.method public static native PSAACSet(II)V
.end method

.method public static native PSACarSet(II)V
.end method

.method public static native PSAClearPage(I)V
.end method

.method public static native PSACruiseSpeedSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V
.end method

.method public static native PSAGetAdt(Lcom/lgb/canmodule/CanDataInfo$PeugAdt;)V
.end method

.method public static native PSAGetCheck(Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;)V
.end method

.method public static native PSAGetCruiseSpeed(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;)V
.end method

.method public static native PSAGetEcoMode(Lcom/lgb/canmodule/CanDataInfo$PeugEcoMode;)V
.end method

.method public static native PSAGetFunc(Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;)V
.end method

.method public static native PSAGetLogCfg(Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;)V
.end method

.method public static native PSAGetMemTab(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;)V
.end method

.method public static native PSAGetPage(Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugPageInfo;Lcom/lgb/canmodule/CanDataInfo$PeugDataDW;Lcom/lgb/canmodule/CanDataInfo$PeugAutoTimer;)V
.end method

.method public static native PSAGetRadarVoice(Lcom/lgb/canmodule/CanDataInfo$PeugRadarVoice;)V
.end method

.method public static native PSAGetSetup(Lcom/lgb/canmodule/CanDataInfo$PeugSet;)V
.end method

.method public static native PSAGetSpeedLimit(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;)V
.end method

.method public static native PSAGetWarn(Lcom/lgb/canmodule/CanDataInfo$PeugWarnInfo;)V
.end method

.method public static native PSAKeySet(I)V
.end method

.method public static native PSAMemTabSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V
.end method

.method public static native PSAQuery(II)V
.end method

.method public static native PSAQueryCheck()V
.end method

.method public static native PSASetDis(I)V
.end method

.method public static native PSASetPage(I)V
.end method

.method public static native PSASpeedLimitSet(Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;I)V
.end method

.method public static native Pg2xGetPjcsData(Lcom/lgb/canmodule/CanDataInfo$Pg2xPjcs;)V
.end method

.method public static native Pg2xGetPjyhData(Lcom/lgb/canmodule/CanDataInfo$Pg2xPjyh;)V
.end method

.method public static native Pg2xGetSscsData(Lcom/lgb/canmodule/CanDataInfo$Pg2xSscs;)V
.end method

.method public static native Pg2xGetSsyhData(Lcom/lgb/canmodule/CanDataInfo$Pg2xSsyh;)V
.end method

.method public static native Pg2xGetXhlcData(Lcom/lgb/canmodule/CanDataInfo$Pg2xXhlc;)V
.end method

.method public static native Pg2xGetYslcData(Lcom/lgb/canmodule/CanDataInfo$Pg2xYslc;)V
.end method

.method public static native Pg3008KeySet(I)V
.end method

.method public static native Pg408GetBtInfo(Lcom/lgb/canmodule/CanDataInfo$PgBTInfo;)V
.end method

.method public static native Pg408GetUsbInfo(Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;)V
.end method

.method public static native Pg408SetKeyDown(I)V
.end method

.method public static native Pg408SetKeyUp()V
.end method

.method public static native Pg408SetUsbCtrl(I)V
.end method

.method public static native Pg408SetUsbEnter()V
.end method

.method public static native Pg408SetUsbExit()V
.end method

.method public static native QCCamSet(II)V
.end method

.method public static native QCCamSwitch()V
.end method

.method public static native QCGetCamSetup(Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;)V
.end method

.method public static native QCQuery(II)V
.end method

.method public static native QueryVwCarInfo()V
.end method

.method public static native RW550CarSet(IIII)V
.end method

.method public static native RW950ACSet(II)V
.end method

.method public static native RW950CarSet(II)V
.end method

.method public static native RW950GetACSetData(Lcom/lgb/canmodule/CanDataInfo$RoeweACSetData;)V
.end method

.method public static native RW950GetCarSetData(Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;)V
.end method

.method public static native RZChrOthCDCtrl(III)V
.end method

.method public static native RoeweCarSet(IIII)V
.end method

.method public static native RoeweGetAdt(Lcom/lgb/canmodule/CanDataInfo$RoeweAdt;)V
.end method

.method public static native RwRx5CarSet(IIII)V
.end method

.method public static native RwRx5GetAdt(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;)V
.end method

.method public static native RwRx5GetInfo(Lcom/lgb/canmodule/CanDataInfo$RwRx5_Info;)V
.end method

.method public static native RwRx5GetSet(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;)V
.end method

.method public static native RwRx5LangSet(II)V
.end method

.method public static native RwRx5Query(III)V
.end method

.method public static native SendCanMsg([BI)I
.end method

.method public static native SenovaAcSet(II)V
.end method

.method public static native SetDebugPrint(II)I
.end method

.method public static native T90CarAcSet(II)V
.end method

.method public static native TeanOldGetCarMode(Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;)V
.end method

.method public static native TeanOldGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;)V
.end method

.method public static native TeanOldGetCdSta(Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;)V
.end method

.method public static native TeanOldGetCdText(Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;)V
.end method

.method public static native TeanOldGetClock(Lcom/lgb/canmodule/CanDataInfo$TeanaClock;)V
.end method

.method public static native TeanOldGetEQ(Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;)V
.end method

.method public static native TeanOldGetRadInfo(Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;)V
.end method

.method public static native TeanOldGetRadSta(Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;)V
.end method

.method public static native TeanOldGetRadText(Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;)V
.end method

.method public static native TeanOldGetVol(Lcom/lgb/canmodule/CanDataInfo$TeanaVol;)V
.end method

.method public static native TeramontGetCrossProfile(Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;)V
.end method

.method public static native TeramontGetRearAir(Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;)V
.end method

.method public static native TeramontGetTpmsData(Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;)V
.end method

.method public static native TeramontGetTpmsWarn(Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;)V
.end method

.method public static native Tigger7CarAcSet(II)V
.end method

.method public static native Tigger7CarVedioSet(I)V
.end method

.method public static native TiggoCarLangSet(I)V
.end method

.method public static native ToyotaAmpSet(II)V
.end method

.method public static native ToyotaCarSet(II)V
.end method

.method public static native ToyotaGetAdaptive(Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;)V
.end method

.method public static native ToyotaGetAmp(Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;)V
.end method

.method public static native ToyotaGetCtrlInfo(Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;)V
.end method

.method public static native ToyotaGetGear()I
.end method

.method public static native ToyotaGetHybrid(Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;)V
.end method

.method public static native ToyotaGetSetup(Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;)V
.end method

.method public static native ToyotaGetSysInfo(Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;)V
.end method

.method public static native ToyotaGetTpms(Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;)V
.end method

.method public static native ToyotaGetTripHistory(Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;)V
.end method

.method public static native ToyotaGetTripPerMin(Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;)V
.end method

.method public static native ToyotaQuery(II)V
.end method

.method public static native ToyotaSetCurPage(I)V
.end method

.method public static native ToyotaSpyCarSet(II)V
.end method

.method public static native ToyotaSpyGetCarInfo1(Lcom/lgb/canmodule/CanDataInfo$ToyotaSpyCarInfo1;)V
.end method

.method public static native ToyotaSpyGetCarInfo2(Lcom/lgb/canmodule/CanDataInfo$ToyotaSpyCarInfo2;)V
.end method

.method public static native ToyotaSpyQuery()V
.end method

.method public static native ToyotaSpySetCurPage(I)V
.end method

.method public static native TsGetPhone()I
.end method

.method public static native VenuciaCarCamChange(I)V
.end method

.method public static native VenuciaCarGetCamState(Lcom/lgb/canmodule/CanDataInfo$VenuciaCamState;)V
.end method

.method public static native VenuciaGetBdcuSta(Lcom/lgb/canmodule/CanDataInfo$BDCU_STA;)V
.end method

.method public static native VenuciaGetBmsBatPack(Lcom/lgb/canmodule/CanDataInfo$BMS_BATPack;)V
.end method

.method public static native VenuciaGetBmsVersion(Lcom/lgb/canmodule/CanDataInfo$BMS_Version;)V
.end method

.method public static native VenuciaGetChargerSta1(Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;)V
.end method

.method public static native VenuciaGetDc(Lcom/lgb/canmodule/CanDataInfo$VenuciaDC;)V
.end method

.method public static native VenuciaGetIcmSta1(Lcom/lgb/canmodule/CanDataInfo$ICM_STA1;)V
.end method

.method public static native VenuciaGetMotoRcSta3(Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;)V
.end method

.method public static native VenuciaGetPowerSpd(Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;)V
.end method

.method public static native VenuciaGetVcuLife(Lcom/lgb/canmodule/CanDataInfo$VCU_life;)V
.end method

.method public static native VenuciaGetVcuSta(Lcom/lgb/canmodule/CanDataInfo$VCU_STA;)V
.end method

.method public static native VenuciaGetVcuSta1(Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;)V
.end method

.method public static native VenuciaGetVcuSta2(Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;)V
.end method

.method public static native VenuciaGetVcuSta3(Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;)V
.end method

.method public static native VenuciaGetVcuSta4(Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;)V
.end method

.method public static native VenuciaGetVcuSta5(Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;)V
.end method

.method public static native VenuciaGetVcuVp(Lcom/lgb/canmodule/CanDataInfo$VCU_VP;)V
.end method

.method public static native X80CameraSet(I)V
.end method

.method public static native X80GetCameraMode(Lcom/lgb/canmodule/CanDataInfo$X80_Camera;)V
.end method

.method public static native Yg9XbsCarBlkSet(II)V
.end method

.method public static native Yg9XbsCarRvsSet(I)V
.end method

.method public static native Yg9XbsCarSet(II)V
.end method

.method public static native Yg9XbsGetCamMode(Lcom/lgb/canmodule/CanDataInfo$AccordXbsCamMode;)V
.end method

.method public static native Yg9XbsGetScrSta(Lcom/lgb/canmodule/CanDataInfo$AccordXbsScrta;)V
.end method

.method public static native Yg9XbsQuery(II)V
.end method

.method public static native Yg9XbsRadioCtrl(II)V
.end method

.method public static native ZhH3CarSet(II)V
.end method

.method public static native ZhH3GetCarSet(Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;)V
.end method

.method public static native ZhH3Query(I)V
.end method

.method public static native ZotyeGetTpmsData(Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;)V
.end method

.method public static native ZotyeGetTpmsWarn(Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;)V
.end method

.method public static native ZotyeQuery(II)V
.end method

.method public static native ZtDmX5GetTpms(Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;)V
.end method

.method public static native ZtDmX7CarAcSet(IIIIII)V
.end method

.method public static native ZtDmX7CarSet(II)V
.end method

.method public static native ZtDmX7GetCarData(Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;)V
.end method

.method public static native ZtY100GetBatteryInfo(Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;)V
.end method

.method public static native ZtY100GetBmsInfo(Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;)V
.end method

.method public static native ZtY100GetQuickCharge(Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;)V
.end method

.method public static native ZtY100GetSlowCharge(Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;)V
.end method

.method public static native ZtY100GetWarn(Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;)V
.end method
