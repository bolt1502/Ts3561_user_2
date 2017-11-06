.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaCtrlInfo"
.end annotation


# instance fields
.field public Color:I

.field public DispVal:I

.field public FAVol:I

.field public Update:I

.field public UpdateOnce:I

.field public fgBeep:I

.field public fgFA:I

.field public fgForeRadarFar:I

.field public fgRadar:I

.field public fgRearRadarFar:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
