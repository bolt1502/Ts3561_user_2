.class public Lcom/lgb/canmodule/CanDataInfo$VWCarInfo2;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VWCarInfo2"
.end annotation


# instance fields
.field public CurSpeed:I

.field public OutTemp:I

.field public Range:I

.field public RemainOil:I

.field public Rpm:I

.field public Update:I

.field public UpdateOnce:I

.field public Voltage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
