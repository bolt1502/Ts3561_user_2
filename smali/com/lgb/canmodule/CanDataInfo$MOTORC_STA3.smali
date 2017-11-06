.class public Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MOTORC_STA3"
.end annotation


# instance fields
.field public MOTORC_MotorCtrl_Temp:I

.field public MOTORC_Motor_Crt:I

.field public MOTORC_Motor_Temp:I

.field public MOTORC_Motor_Vol:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
