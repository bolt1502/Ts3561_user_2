.class public Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAN_DoorInfo"
.end annotation


# instance fields
.field public HeadOpen:I

.field public LFOpen:I

.field public LROpen:I

.field public RFOpen:I

.field public RROpen:I

.field public RearOpen:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
