.class public Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAN_Msg"
.end annotation


# instance fields
.field public Avalid:I

.field public AveOil:I

.field public BatV:I

.field public Distance:I

.field public EndurOil:I

.field public InstantOil:I

.field public OilDw:I

.field public Rpm:I

.field public Speed:I

.field public SpeedDw:I

.field public Tpms:[I

.field public TpmsDw:I

.field public Update:I

.field public UpdateOnce:I

.field public WaterTemp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4309
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$CAN_Msg;->Tpms:[I

    .line 4299
    return-void
.end method
