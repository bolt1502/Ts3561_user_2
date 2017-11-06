.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaSelfAdaptive"
.end annotation


# instance fields
.field public AcLinkAuto:I

.field public AutoLockBySpeed:I

.field public AutoOffTimer:I

.field public DoorLinkUnlock:I

.field public EDoor:I

.field public Key2Unlock:I

.field public LightOffTime:I

.field public LockFlash:I

.field public LoopLinkAuto:I

.field public OneKeyStart:I

.field public Remote2Unlock:I

.field public Sensitivity:I

.field public ShiftFromP:I

.field public ShiftToP:I

.field public SmartUnlock:I

.field public TrackMode:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
