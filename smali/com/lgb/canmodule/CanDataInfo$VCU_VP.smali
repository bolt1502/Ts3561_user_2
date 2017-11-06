.class public Lcom/lgb/canmodule/CanDataInfo$VCU_VP;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCU_VP"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public VCU_Battery_LimtVol:I

.field public VCU_Charge_Connect_Sta:I

.field public VCU_LimtSpeed:I

.field public VCU_LimtTorque:I

.field public VCU_Motor_LimtPower:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
