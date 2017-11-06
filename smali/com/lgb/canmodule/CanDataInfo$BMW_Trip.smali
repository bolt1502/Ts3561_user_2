.class public Lcom/lgb/canmodule/CanDataInfo$BMW_Trip;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BMW_Trip"
.end annotation


# instance fields
.field public Consumption:I

.field public Range:I

.field public Speed:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
