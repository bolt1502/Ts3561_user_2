.class public Lcom/lgb/canmodule/CanDataInfo$BMS_BATPack;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BMS_BATPack"
.end annotation


# instance fields
.field public BMS_VCU_BATframenumber:I

.field public BMS_VCU_BATproductdate:I

.field public BMS_VCU_BATproductmonth:I

.field public BMS_VCU_BATproductyear:I

.field public BMS_VCU_BATproperty:I

.field public BMS_VCU_BATtype:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
