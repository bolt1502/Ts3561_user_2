.class public Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeugMemTab"
.end annotation


# instance fields
.field public Data:[I

.field public Update:I

.field public UpdateOnce:I

.field public fgDatAvalid:[I

.field public fgTabAvalid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->fgDatAvalid:[I

    .line 1426
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$PeugMemTab;->Data:[I

    .line 1420
    return-void
.end method
