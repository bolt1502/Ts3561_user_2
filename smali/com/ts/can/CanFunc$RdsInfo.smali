.class public Lcom/ts/can/CanFunc$RdsInfo;
.super Ljava/lang/Object;
.source "CanFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RdsInfo"
.end annotation


# instance fields
.field AfState:I

.field fgAvalid:I

.field fgEon:I

.field fgStRead:I

.field fgStSet:I

.field fgTa:I

.field fgTaAlarm:I

.field fgTp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
