.class public Lcom/lgb/canmodule/CanDataInfo$GM_Compass;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GM_Compass"
.end annotation


# instance fields
.field public Angle:I

.field public Status:I

.field public Update:I

.field public UpdateOnce:I

.field public Zone:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
