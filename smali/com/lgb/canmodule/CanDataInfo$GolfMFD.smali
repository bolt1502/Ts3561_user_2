.class public Lcom/lgb/canmodule/CanDataInfo$GolfMFD;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfMFD"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public fgAvgConsumption:I

.field public fgAvgSpeed:I

.field public fgConvenienceConsumers:I

.field public fgCurConsumption:I

.field public fgDigitalSpeedDisplay:I

.field public fgDistanceTravelled:I

.field public fgEcoTips:I

.field public fgOilTemp:I

.field public fgSpeedWarning:I

.field public fgTravellingTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
