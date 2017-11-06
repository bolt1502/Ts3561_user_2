.class public Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCU_STA5"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public VCU_BatteryPoleTemp_Highest:I

.field public VCU_BatteryPoleTemp_Lowest:I

.field public VCU_Battery_Equilibria_Sta:I

.field public VCU_Battery_NO:I

.field public VCU_PoleTemp_Highest_NO_Code:I

.field public VCU_PoleTemp_Lowest_NO_Code:I

.field public VCU_SigTemp_Highest_NO_Code:I

.field public VCU_SigTemp_Lowest_NO_Code:I

.field public VCU_Single_Equilibria_Sta:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
