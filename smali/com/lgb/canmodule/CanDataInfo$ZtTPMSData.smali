.class public Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZtTPMSData"
.end annotation


# instance fields
.field public Temp:[I

.field public Update:I

.field public UpdateOnce:I

.field public Val:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 3027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Temp:[I

    .line 3032
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Val:[I

    .line 3027
    return-void
.end method
