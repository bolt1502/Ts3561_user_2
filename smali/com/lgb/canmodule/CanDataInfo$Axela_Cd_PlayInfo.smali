.class public Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_PlayInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axela_Cd_PlayInfo"
.end annotation


# instance fields
.field public CurHour:I

.field public CurMin:I

.field public CurSec:I

.field public CurTrack:I

.field public TotalHour:I

.field public TotalMin:I

.field public TotalSec:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
