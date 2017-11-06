.class public Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZtTPMSWarn"
.end annotation


# instance fields
.field public SysInvalid:I

.field public Update:I

.field public UpdateOnce:I

.field public Warn:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3040
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->Warn:[I

    .line 3035
    return-void
.end method
