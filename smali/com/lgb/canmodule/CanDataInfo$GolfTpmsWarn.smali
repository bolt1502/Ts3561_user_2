.class public Lcom/lgb/canmodule/CanDataInfo$GolfTpmsWarn;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfTpmsWarn"
.end annotation


# instance fields
.field public FlSta:I

.field public FrSta:I

.field public RlSta:I

.field public RrSta:I

.field public Update:I

.field public UpdateOnce:I

.field public WarnType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
