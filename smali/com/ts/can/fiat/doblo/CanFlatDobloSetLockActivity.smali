.class public Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;
.super Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;
.source "CanFlatDobloSetLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ZDCMSD:I = 0x1


# instance fields
.field protected mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

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
    .line 73
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 74
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 75
    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 77
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 33
    sget v0, Lcom/ts/MainUI/R$string;->can_zmzdsd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    .line 34
    return-void
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x40

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->Query(II)V

    .line 55
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->GetSetData()V

    .line 60
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LockUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LockUpdate:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LockUpdate:I

    .line 65
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->AutoClose:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 68
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->ResetData(Z)V

    .line 95
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const/16 v1, 0x35

    iget-object v2, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->AutoClose:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->InitUI()V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 49
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onPause()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onResume()V

    .line 39
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->ResetData(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;->QueryData()V

    .line 43
    return-void
.end method
