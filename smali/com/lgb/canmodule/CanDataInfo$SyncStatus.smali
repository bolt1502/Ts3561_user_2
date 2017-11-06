.class public Lcom/lgb/canmodule/CanDataInfo$SyncStatus;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStatus"
.end annotation


# instance fields
.field public Mode:I

.field public PhoneBattery:I

.field public PhoneSigNum:I

.field public Update:I

.field public UpdateOnce:I

.field public fgBTConnected:I

.field public fgCalling:I

.field public fgInfoKeyAvalid:I

.field public fgModuleExist:I

.field public fgShowShortMsg:I

.field public fgVoice:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
