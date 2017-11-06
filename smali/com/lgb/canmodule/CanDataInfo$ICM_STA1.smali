.class public Lcom/lgb/canmodule/CanDataInfo$ICM_STA1;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICM_STA1"
.end annotation


# instance fields
.field public ICM_Mileage:I

.field public ICM_SubMileage:I

.field public IC_Speed:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
