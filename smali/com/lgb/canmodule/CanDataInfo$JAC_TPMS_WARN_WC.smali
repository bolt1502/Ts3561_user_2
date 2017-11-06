.class public Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAC_TPMS_WARN_WC"
.end annotation


# instance fields
.field public FLWarm:[I

.field public FRWarm:[I

.field public RLWarm:[I

.field public RRWarm:[I

.field public SysWarn:[I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4289
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->SysWarn:[I

    .line 4290
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    .line 4291
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    .line 4292
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    .line 4293
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    .line 4285
    return-void
.end method
