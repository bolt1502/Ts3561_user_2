.class public Lcom/lgb/canmodule/CanDataInfo$VCU_STA;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCU_STA"
.end annotation


# instance fields
.field public MOTORC_ACCFootplate1_Threshold:I

.field public MOTORC_ACCFootplate2_Threshold:I

.field public MOTORC_MotorCtrl_MAXTemp:I

.field public MOTORC_Motor_MAXTemp:I

.field public Update:I

.field public UpdateOnce:I

.field public VCU_Brk_Sta:I

.field public VCU_Brk_Threshold:I

.field public VCU_Key_POS:I

.field public VCU_Parking_SW:I

.field public VCU_SW_Gear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
