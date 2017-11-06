.class public Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCU_STA1"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public VCU_SigTemp_Highest_NO:I

.field public VCU_SigTemp_Lowest_NO:I

.field public VCU_SigVolt_Highest:I

.field public VCU_SigVolt_Highest_NO:I

.field public VCU_SigVolt_Lowest:I

.field public VCU_SigVolt_Lowest_NO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
