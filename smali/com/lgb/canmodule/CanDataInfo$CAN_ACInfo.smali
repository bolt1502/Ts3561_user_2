.class public Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAN_ACInfo"
.end annotation


# static fields
.field public static final AUTO_LIGHT_BIG:I = 0x3

.field public static final AUTO_LIGHT_OFF:I = 0x0

.field public static final AUTO_LIGHT_SMALL:I = 0x1

.field public static final INVALID_CAR_TEMP:I = -0x1


# instance fields
.field public PWR:I

.field public Update:I

.field public bDaulAc:I

.field public bDownWindFlgR:I

.field public bParallelWindFlgR:I

.field public bUpWindFlgR:I

.field public fgAC:I

.field public fgACMax:I

.field public fgAMB:I

.field public fgAQS:I

.field public fgAcErr1:I

.field public fgAcErr2:I

.field public fgAcErr3:I

.field public fgAcErr4:I

.field public fgAcErr5:I

.field public fgAutoAC:I

.field public fgAutoMode:I

.field public fgAutoWind:I

.field public fgDFBL:I

.field public fgDownWind:I

.field public fgDual:I

.field public fgEco:I

.field public fgForeWindMode:I

.field public fgHeat:I

.field public fgInnerLoop:I

.field public fgLoopDisable:I

.field public fgMaxFornt:I

.field public fgPTC:I

.field public fgParallelWind:I

.field public fgRac:I

.field public fgRearLight:I

.field public fgRearLock:I

.field public fgSsd:I

.field public fgUpWind:I

.field public nAutoLight:I

.field public nEnergy:I

.field public nInTemp:I

.field public nLeftTemp:I

.field public nLtChairHot:I

.field public nNewStatus:I

.field public nOldStatus:I

.field public nRearTemp:I

.field public nRightTemp:I

.field public nRtChairHot:I

.field public nWindAutoLevel:I

.field public nWindMax:I

.field public nWindValue:I

.field public szLtTemp:Ljava/lang/String;

.field public szRearTemp:Ljava/lang/String;

.field public szRtTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
