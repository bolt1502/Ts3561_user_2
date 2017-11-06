.class public Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MOTORC_PowerSpd"
.end annotation


# instance fields
.field public DumpEnergy:I

.field public MOTORC_PwerSpd_A:I

.field public MOTORC_Torque:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
