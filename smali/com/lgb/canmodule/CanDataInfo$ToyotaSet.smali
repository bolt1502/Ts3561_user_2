.class public Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToyotaSet"
.end annotation


# instance fields
.field public AutoOffTimer:I

.field public AutoRelockTimer:I

.field public ERearDoorGear:I

.field public FeedBackTone:I

.field public LightOffTime:I

.field public Sensitivity:I

.field public TrackMode:I

.field public Update:I

.field public UpdateOnce:I

.field public fgAutoLockByShiftFromP:I

.field public fgAutoLockByShitToP:I

.field public fgAutoLockBySpeed:I

.field public fgDoorUnlock:I

.field public fgKey2TimesUnlock:I

.field public fgLightResponse:I

.field public fgLoopByAuto:I

.field public fgRemote2PressUnlock:I

.field public fgRxd:I

.field public fgSEByAuto:I

.field public fgSmartLockAnd1KeyStart:I

.field public fgSmartUnlock:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
