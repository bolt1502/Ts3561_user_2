.class public Lcom/ts/can/honda/accord/CanAccordBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanAccordBaseActivity.java"


# instance fields
.field protected mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    .line 11
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

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

    invoke-virtual {p0, p1, v0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->CarSet(II)V

    .line 16
    return-void
.end method

.method public CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    .line 21
    return-void
.end method

.method public GetAdtData()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetAdtData(Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;)V

    .line 31
    return-void
.end method

.method public GetSetData()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetSetData(Lcom/lgb/canmodule/CanDataInfo$AccordSetData;)V

    .line 26
    return-void
.end method

.method public Query(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "data"    # I

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->AccordQuery(II)V

    .line 36
    return-void
.end method
