.class public Lcom/lgb/canmodule/CanDataInfo$GolfACData;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfACData"
.end annotation


# instance fields
.field public ClearAir:I

.field public Profile:I

.field public SwHot:I

.field public Update:I

.field public UpdateOnce:I

.field public fgAutoRecircule:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
