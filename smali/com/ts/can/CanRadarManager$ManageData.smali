.class Lcom/ts/can/CanRadarManager$ManageData;
.super Ljava/lang/Object;
.source "CanRadarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanRadarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManageData"
.end annotation


# instance fields
.field public DelayTick:J

.field public ForeRadar:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

.field public Mode:I

.field public WaitStartTick:J

.field public WaitStatus:I

.field public fgHaveCamera:Z

.field public fgHaveForeRadar:Z

.field public fgHaveRadar:Z

.field final synthetic this$0:Lcom/ts/can/CanRadarManager;


# direct methods
.method constructor <init>(Lcom/ts/can/CanRadarManager;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ts/can/CanRadarManager$ManageData;->this$0:Lcom/ts/can/CanRadarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
