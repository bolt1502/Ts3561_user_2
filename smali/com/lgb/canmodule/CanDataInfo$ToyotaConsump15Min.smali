.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaConsump15Min"
.end annotation


# instance fields
.field public DW:I

.field public Min:[I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    const/16 v0, 0xf

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;->Min:[I

    .line 688
    return-void
.end method
