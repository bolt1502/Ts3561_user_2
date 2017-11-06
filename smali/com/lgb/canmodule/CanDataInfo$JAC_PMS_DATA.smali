.class public Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAC_PMS_DATA"
.end annotation


# instance fields
.field public FLPress:I

.field public FLTemp:I

.field public FRPress:I

.field public FRTemp:I

.field public RLPress:I

.field public RLTemp:I

.field public RRPress:I

.field public RRTemp:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
