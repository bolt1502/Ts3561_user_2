.class public Lcom/lgb/canmodule/CanDataInfo$GM_TPMS;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GM_TPMS"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public Val:[I

.field public Warn:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$GM_TPMS;->Val:[I

    .line 1117
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$GM_TPMS;->Warn:[I

    .line 1112
    return-void
.end method
