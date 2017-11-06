.class public Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAC_TPMS_WARN"
.end annotation


# instance fields
.field public FLState:I

.field public FRState:I

.field public RLState:I

.field public RRState:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
