.class public Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCU_STA3"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public VCU_AssistantBattery_Voltage:I

.field public VCU_BatteryDoor_Sta:I

.field public VCU_Battery_ChargeWire_Sta:I

.field public VCU_Battery_Charge_Incahrge_Sta:I

.field public VCU_Battery_Charge_Sta:I

.field public VCU_Battery_Connect_Sta:I

.field public VCU_EnergyBackMode_Sta:I

.field public VCU_Motor_Power_Sta:I

.field public VCU_Motor_Speed_Sta:I

.field public VCU_PreRelay_Sta:I

.field public VCU_Ready_Sig:I

.field public VCU_SOC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
