.class public Lcom/lgb/canmodule/CanDataInfo$MiniDate;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniDate"
.end annotation


# instance fields
.field public Day:I

.field public Month:I

.field public Update:I

.field public UpdateOnce:I

.field public Year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
