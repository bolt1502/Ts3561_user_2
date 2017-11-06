.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaSysInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaSysInfo"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public fg360Camera:I

.field public fg360Switch:I

.field public fgAmp:I

.field public fgAmpPWR:I

.field public fgMute:I

.field public fgRearChair:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
