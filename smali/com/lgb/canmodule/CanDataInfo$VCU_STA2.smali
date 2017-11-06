.class public Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCU_STA2"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public VCU_Battery_Current:I

.field public VCU_Battery_Voltage:I

.field public VCU_ICM_Checksum:I

.field public VCU_IC_Speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
