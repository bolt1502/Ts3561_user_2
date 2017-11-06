.class public Lcom/lgb/canmodule/CanDataInfo$GolfTime;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfTime"
.end annotation


# instance fields
.field public AST:I

.field public DateFormat:I

.field public Day:I

.field public Hour:I

.field public Min:I

.field public Month:I

.field public Sec:I

.field public TimeMode:I

.field public Update:I

.field public UpdateOnce:I

.field public Year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
