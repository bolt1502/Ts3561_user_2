.class public Lcom/lgb/canmodule/CanDataInfo$PgUSBInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PgUSBInfo"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public ubMin:I

.field public ubSec:I

.field public ubSta:I

.field public uwCur:I

.field public uwTotal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
