.class public abstract Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBMWMiniBaseActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# instance fields
.field protected mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

.field protected mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

.field protected mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

.field protected mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MiniService;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MiniService;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    .line 25
    return-void
.end method


# virtual methods
.method protected AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 149
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 151
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 153
    return-object v0
.end method

.method protected AddItemIcoVal(III)Lcom/ts/canview/CanItemIcoVal;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/ts/canview/CanItemIcoVal;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoVal;-><init>(Landroid/content/Context;II)V

    .line 135
    .local v0, "item":Lcom/ts/canview/CanItemIcoVal;
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoVal;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(Z)V

    .line 138
    return-object v0
.end method

.method protected AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 166
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 167
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 169
    return-object v0
.end method

.method protected AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 180
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 185
    return-object v0
.end method

.method protected abstract AddItemView()V
.end method

.method protected CarSet(II)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->CarSet(IIIII)V

    .line 72
    return-void
.end method

.method protected CarSet(IIIII)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "param3"    # I
    .param p5, "param4"    # I

    .prologue
    .line 67
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lgb/canmodule/CanJni;->MiniCarSet(IIIII)V

    .line 68
    return-void
.end method

.method protected GetMiniCarPC()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MiniGetCarPc(Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;)V

    .line 39
    return-void
.end method

.method protected GetMiniCheck()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mCarCheck:Lcom/lgb/canmodule/CanDataInfo$MiniCheck;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MiniGetCarCheck(Lcom/lgb/canmodule/CanDataInfo$MiniCheck;)V

    .line 59
    return-void
.end method

.method protected GetMiniEngineOil()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MiniGetCarEngineOil(Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;)V

    .line 47
    return-void
.end method

.method protected GetMiniRpa()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MiniGetCarRpa(Lcom/lgb/canmodule/CanDataInfo$MiniRPA;)V

    .line 51
    return-void
.end method

.method protected GetMiniService()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MiniGetCarService(Lcom/lgb/canmodule/CanDataInfo$MiniService;)V

    .line 55
    return-void
.end method

.method protected GetMiniSetData()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MiniGetCarSet(Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;)V

    .line 43
    return-void
.end method

.method protected abstract Query()V
.end method

.method protected Query(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 62
    invoke-static {p1}, Lcom/lgb/canmodule/CanJni;->MiniQuery(I)V

    .line 63
    return-void
.end method

.method protected abstract ResetData(Z)V
.end method

.method protected SetLayoutContainer()V
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->setContentView(I)V

    .line 88
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 89
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->ResetData(Z)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->SetLayoutContainer()V

    .line 80
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->AddItemView()V

    .line 81
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 102
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 94
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->ResetData(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;->Query()V

    .line 97
    return-void
.end method
