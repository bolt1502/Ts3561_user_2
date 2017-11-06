.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaTpmsInfo"
.end annotation


# instance fields
.field public BTVal:I

.field public DW:I

.field public LFVal:I

.field public LRVal:I

.field public RFVal:I

.field public RRVal:I

.field public Update:I

.field public UpdateOnce:I

.field public fgAvalid:I

.field public fgShowBT:I

.field public fgShowOneCar:I

.field public fgShowWarn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
