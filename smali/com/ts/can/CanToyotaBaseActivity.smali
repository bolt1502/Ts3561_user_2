.class public Lcom/ts/can/CanToyotaBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanToyotaBaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanToyotaBaseActivity"

.field private static mPage:I

.field protected static mQueryTime:I


# instance fields
.field protected mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

.field protected mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

.field protected mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/ts/can/CanToyotaBaseActivity;->mQueryTime:I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 14
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    .line 15
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    .line 16
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    .line 17
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    .line 11
    return-void
.end method

.method public static SetCurrentPage(I)V
    .locals 1
    .param p0, "page"    # I

    .prologue
    .line 61
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sput p0, Lcom/ts/can/CanToyotaBaseActivity;->mPage:I

    .line 70
    :goto_0
    sget v0, Lcom/ts/can/CanToyotaBaseActivity;->mPage:I

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaSetCurPage(I)V

    .line 71
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x3

    sput v0, Lcom/ts/can/CanToyotaBaseActivity;->mPage:I

    goto :goto_0
.end method


# virtual methods
.method protected AmpSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 38
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->ToyotaAmpSet(II)V

    .line 39
    return-void
.end method

.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->ToyotaCarSet(II)V

    .line 54
    return-void
.end method

.method protected GetAdaptData()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetAdaptive(Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;)V

    .line 44
    return-void
.end method

.method protected GetAmpData()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetAmp(Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;)V

    .line 34
    return-void
.end method

.method protected GetHybridData()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetHybrid(Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;)V

    .line 49
    return-void
.end method

.method protected GetSetData()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ts/can/CanToyotaBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetSetup(Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;)V

    .line 29
    return-void
.end method

.method protected TimerCall()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
