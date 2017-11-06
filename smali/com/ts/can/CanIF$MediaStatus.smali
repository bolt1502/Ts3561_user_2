.class public Lcom/ts/can/CanIF$MediaStatus;
.super Ljava/lang/Object;
.source "CanIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStatus"
.end annotation


# instance fields
.field public PlaySta:I

.field public fgRnd:I

.field public fgRpt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
