.class public abstract Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzdCx4BaseActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# instance fields
.field protected mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 20
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "Id"    # I

    .prologue
    .line 103
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 104
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 106
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 107
    return-object v0
.end method

.method protected AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "array"    # [I
    .param p3, "id"    # I

    .prologue
    .line 94
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 95
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 97
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 98
    return-object v0
.end method

.method protected abstract InitUI()V
.end method

.method protected MzdCx4CarQuery(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx4Query(II)V

    .line 37
    return-void
.end method

.method protected MzdCx4CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx4CarSet(II)V

    .line 29
    return-void
.end method

.method protected MzdCx4GetCarSetInfo()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx4GetCarSetInfo(Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;)V

    .line 24
    return-void
.end method

.method protected MzdCx4SWCarSet(II)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->Neg(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->MzdCx4CarSet(II)V

    .line 33
    return-void
.end method

.method protected abstract Query()V
.end method

.method protected abstract ResetData(Z)V
.end method

.method protected SetContentLayout()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->setContentView(I)V

    .line 55
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 56
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->ResetData(Z)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->SetContentLayout()V

    .line 47
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->InitUI()V

    .line 48
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 69
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 61
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->ResetData(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;->Query()V

    .line 64
    return-void
.end method
