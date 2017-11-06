.class public Lcom/lgb/canmodule/CanDataInfo$GolfLight;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfLight"
.end annotation


# instance fields
.field public ComingHomeFunc:I

.field public Instrument:I

.field public LeavingHomeFunc:I

.field public SwitchOnTime:I

.field public Update:I

.field public UpdateOnce:I

.field public fgAHCIR:I

.field public fgDaytimeLights:I

.field public fgLaneChangeFlash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
