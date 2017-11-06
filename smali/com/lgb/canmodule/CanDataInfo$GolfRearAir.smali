.class public Lcom/lgb/canmodule/CanDataInfo$GolfRearAir;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfRearAir"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public bDownWindFlg:I

.field public bParallelWindFlg:I

.field public bPowerFlg:I

.field public nAutoLight:I

.field public nLtChairHot:I

.field public nRearTemp:I

.field public nRtChairHot:I

.field public nWindValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
