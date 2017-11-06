.class public Lcom/lgb/canmodule/CanDataInfo$MiniRPA;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniRPA"
.end annotation


# instance fields
.field public Avalid:I

.field public LFSta:I

.field public LRSta:I

.field public RFSta:I

.field public RRSta:I

.field public ResetAvalid:I

.field public Status:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
