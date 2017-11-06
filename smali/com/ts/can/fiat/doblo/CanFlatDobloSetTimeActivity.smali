.class public Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;
.super Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;
.source "CanFlatDobloSetTimeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_SHOW_TIME_STATUS:I = 0x1

.field public static final ITEM_SYNC_TIME:I = 0x2


# instance fields
.field protected mItemShowTimeStatus:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSyncTime:Lcom/ts/canview/CanItemSwitchList;

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
    .line 77
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 79
    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 81
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 34
    sget v0, Lcom/ts/MainUI/R$string;->can_show_time_status:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mItemShowTimeStatus:Lcom/ts/canview/CanItemSwitchList;

    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->can_sync_time:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mItemSyncTime:Lcom/ts/canview/CanItemSwitchList;

    .line 36
    return-void
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 56
    const/16 v0, 0x40

    const/16 v1, 0x70

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->Query(II)V

    .line 57
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->GetSetData()V

    .line 63
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->ClockUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->ClockUpdate:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->ClockUpdate:I

    .line 68
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mItemShowTimeStatus:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->ShowTimeSta:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mItemSyncTime:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->SyncTime:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 72
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->ResetData(Z)V

    .line 101
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const/16 v1, 0x70

    iget-object v2, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->ShowTimeSta:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->CarSWSet(II)V

    goto :goto_0

    .line 93
    :pswitch_1
    const/16 v1, 0x71

    iget-object v2, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->SyncTime:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->CarSWSet(II)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->InitUI()V

    .line 29
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 51
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onPause()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onResume()V

    .line 41
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->ResetData(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;->QueryData()V

    .line 45
    return-void
.end method
