.class public Lcom/lgb/canmodule/CanDataInfo$GolfUnits;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfUnits"
.end annotation


# instance fields
.field public ConsumptionDW:I

.field public DistanceDW:I

.field public PressureDW:I

.field public SpeedDW:I

.field public TempDW:I

.field public Update:I

.field public UpdateOnce:I

.field public VolumeDW:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
