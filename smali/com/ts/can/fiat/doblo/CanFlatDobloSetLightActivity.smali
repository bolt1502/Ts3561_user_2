.class public Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;
.super Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;
.source "CanFlatDobloSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_RXD:I = 0x1


# instance fields
.field private mItemRxd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 72
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 76
    return-object v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x40

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->Query(II)V

    .line 53
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->GetSetData()V

    .line 58
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LightsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LightsUpdate:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LightsUpdate:I

    .line 63
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DaytimeLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 66
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->ResetData(Z)V

    .line 93
    return-void
.end method

.method protected initUI()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 31
    sget v0, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DaytimeLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->initUI()V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 47
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onPause()V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onResume()V

    .line 38
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->ResetData(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;->QueryData()V

    .line 41
    return-void
.end method
