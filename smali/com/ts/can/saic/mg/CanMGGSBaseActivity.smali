.class public Lcom/ts/can/saic/mg/CanMGGSBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMGGSBaseActivity.java"


# instance fields
.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

.field protected mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

.field protected mSetData2:Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 11
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    .line 12
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    .line 13
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->mSetData2:Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;

    .line 9
    return-void
.end method


# virtual methods
.method public ACSet(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "sta"    # I

    .prologue
    .line 38
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->MGGSACSet(II)V

    .line 39
    return-void
.end method

.method public CarSet(III)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "index"    # I
    .param p3, "val"    # I

    .prologue
    .line 32
    invoke-static {p1, p2, p3}, Lcom/lgb/canmodule/CanJni;->MGGSCarSet(III)V

    .line 33
    return-void
.end method

.method public GetSetData()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MGGSGetSetData(Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;)V

    .line 18
    return-void
.end method

.method public GetSetData1()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->mSetData1:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MGZSGetSetData(Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA1;)V

    .line 23
    return-void
.end method

.method public GetSetData2()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->mSetData2:Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MgRx5GetCarSet(Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;)V

    .line 28
    return-void
.end method

.method public Query(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 43
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->MGGSQuery(I)V

    .line 44
    return-void
.end method
