.class public Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanRZygBaseActivity.java"


# instance fields
.field protected mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    .line 11
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    .line 8
    return-void
.end method


# virtual methods
.method protected CarSWSet(II)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p2}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->Neg(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthCarSet(II)V

    .line 41
    return-void
.end method

.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthCarSet(II)V

    .line 36
    return-void
.end method

.method protected GetAdtData()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetAdt(Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;)V

    .line 16
    return-void
.end method

.method protected GetSetData()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCarSet(Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;)V

    .line 21
    return-void
.end method

.method protected Query(II)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x7

    invoke-static {v0, v1, v1, v1}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 26
    return-void
.end method

.method protected Query2(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {p1, v0, v0, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 31
    return-void
.end method
