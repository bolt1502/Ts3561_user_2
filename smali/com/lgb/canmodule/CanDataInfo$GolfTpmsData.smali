.class public Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfTpmsData"
.end annotation


# instance fields
.field public Dw:I

.field public RealVal:[I

.field public RefVal:[I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 3955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3959
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->RefVal:[I

    .line 3960
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$GolfTpmsData;->RealVal:[I

    .line 3955
    return-void
.end method
