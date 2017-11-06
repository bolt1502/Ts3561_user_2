.class public Lcom/ts/can/psa/hc/CanBZBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBZBaseActivity.java"


# instance fields
.field protected mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    .line 11
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    .line 8
    return-void
.end method


# virtual methods
.method public CarSet(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 15
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->CarSet(II)V

    .line 16
    return-void
.end method

.method public CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->BZCarSet(II)V

    .line 21
    return-void
.end method

.method public GetAdtData()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BZGetAdt(Lcom/lgb/canmodule/CanDataInfo$PeugAdt;)V

    .line 31
    return-void
.end method

.method public GetSetData()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BZGetSetup(Lcom/lgb/canmodule/CanDataInfo$PeugSet;)V

    .line 26
    return-void
.end method

.method public Query(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 40
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->BZQuery(I)V

    .line 41
    return-void
.end method

.method public Query(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "data"    # I

    .prologue
    .line 35
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->BZQuery(I)V

    .line 36
    return-void
.end method
