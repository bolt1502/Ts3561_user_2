.class public Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanFlatDobloBaseActivity.java"


# instance fields
.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 9
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    .line 7
    return-void
.end method


# virtual methods
.method protected CarSWSet(II)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p2}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->Neg(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/lgb/canmodule/CanJni;->FlatDobloCarSet(II)V

    .line 29
    return-void
.end method

.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->FlatDobloCarSet(II)V

    .line 25
    return-void
.end method

.method protected GetSetData()V
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FlatDobloGetCarSet(Lcom/lgb/canmodule/CanDataInfo$FlatSetData;)V

    .line 13
    return-void
.end method

.method protected Query(II)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->Query(IIII)V

    .line 21
    return-void
.end method

.method protected Query(IIII)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para1"    # I
    .param p3, "para2"    # I
    .param p4, "para3"    # I

    .prologue
    .line 16
    invoke-static {p1, p2, p3, p4}, Lcom/lgb/canmodule/CanJni;->FlatDobloQuery(IIII)V

    .line 17
    return-void
.end method
