.class public Lcom/ts/can/CanFunc$MediaInfo;
.super Ljava/lang/Object;
.source "CanFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaInfo"
.end annotation


# instance fields
.field public Avalid:I

.field public CurHour:I

.field public CurMin:I

.field public CurNum:I

.field public CurSec:I

.field public CurTime:I

.field public MediaType:I

.field public TotalHour:I

.field public TotalMin:I

.field public TotalNum:I

.field public TotalSec:I

.field public TotalTime:I

.field public fgLoading:I

.field public fgNumAvalid:I

.field public fgPause:I

.field public fgTimeAvalid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
