.class public Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfMirrorsAndWipers"
.end annotation


# instance fields
.field public Res:I

.field public Update:I

.field public UpdateOnce:I

.field public fgAutoWipingInRain:I

.field public fgFoldAwayAfterParking:I

.field public fgLowerWhileReversing:I

.field public fgRearWindowWiping:I

.field public fgSyncAdj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
