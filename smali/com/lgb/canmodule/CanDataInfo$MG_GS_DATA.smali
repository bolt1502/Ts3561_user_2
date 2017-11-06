.class public Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MG_GS_DATA"
.end annotation


# instance fields
.field public FindTime:I

.field public HomeTime:I

.field public SmartUnlock:I

.field public UnlockMode:I

.field public Update:I

.field public UpdateOnce:I

.field public fgAutoUnlock:I

.field public fgFindNearLigh:I

.field public fgFindRearLight:I

.field public fgFindRevLight:I

.field public fgHomeNearLigh:I

.field public fgHomeRearLight:I

.field public fgHomeRevLight:I

.field public fgSpeedLock:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
