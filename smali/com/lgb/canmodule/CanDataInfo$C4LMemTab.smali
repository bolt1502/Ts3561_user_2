.class public Lcom/lgb/canmodule/CanDataInfo$C4LMemTab;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C4LMemTab"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public fgDatAvalid:[I

.field public fgTabAvalid:I

.field public ubData:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1521
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$C4LMemTab;->fgDatAvalid:[I

    .line 1522
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$C4LMemTab;->ubData:[I

    .line 1516
    return-void
.end method
