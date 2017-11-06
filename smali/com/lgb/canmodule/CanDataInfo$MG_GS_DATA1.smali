.class public Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MG_GS_DATA1"
.end annotation


# instance fields
.field public FindIndicator:I

.field public TurnFeel:I

.field public Update:I

.field public UpdateOnce:I

.field public fgHomeRevLight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
