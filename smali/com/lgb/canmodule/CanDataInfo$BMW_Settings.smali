.class public Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BMW_Settings"
.end annotation


# instance fields
.field public DWConsumption:I

.field public DWJl:I

.field public DWTemp:I

.field public Lang:I

.field public TimeFormat:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
