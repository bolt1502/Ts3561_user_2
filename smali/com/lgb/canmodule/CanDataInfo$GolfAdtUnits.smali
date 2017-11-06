.class public Lcom/lgb/canmodule/CanDataInfo$GolfAdtUnits;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfAdtUnits"
.end annotation


# instance fields
.field public Consumption:I

.field public Distance:I

.field public Pressure:I

.field public Speed:I

.field public Temp:I

.field public Update:I

.field public UpdateOnce:I

.field public Volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
