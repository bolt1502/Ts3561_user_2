.class public Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfSeatDriveProfile"
.end annotation


# instance fields
.field public FrontLight:I

.field public IndClimate:I

.field public IndEngine:I

.field public IndSteering:I

.field public ProfileType:I

.field public Update:I

.field public UpdateOnce:I

.field public fgModePressed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
