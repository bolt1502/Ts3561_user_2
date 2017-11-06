.class public Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfCrossDriveProfile"
.end annotation


# instance fields
.field public CrossClimate:I

.field public CrossDbs:I

.field public CrossEngine:I

.field public CrossFourWheel:I

.field public CrossPbc:I

.field public CrossRampStart:I

.field public CrossSteering:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
