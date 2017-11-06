.class public Lcom/ts/can/CanGolfSetESCSystemActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetESCSystemActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ESC_SYSTEM:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanGolfSetESCSystemActivity"


# instance fields
.field private mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

.field private mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

.field protected mItemEscSystem:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mMenu:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    .line 27
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    .line 16
    return-void
.end method

.method private InitUI()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_a_s_r_off:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_active_already:I

    aput v1, v0, v2

    iput-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mMenu:[I

    .line 111
    :goto_0
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_esc_system:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mMenu:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mItemEscSystem:Lcom/ts/canview/CanItemPopupList;

    .line 112
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mItemEscSystem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 113
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 115
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_a_s_r_off:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_active_already:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_esc_sports_mode:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mMenu:[I

    goto :goto_0
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 126
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 73
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 76
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetESCSystemActivity;->Sleep(J)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 83
    :cond_1
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtEsc(Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 49
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mAdtEsc:Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtEscSystem;->Esc:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mItemEscSystem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetEscSys(Lcom/lgb/canmodule/CanDataInfo$GolfData;)V

    .line 61
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfData;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfData;->Update:I

    .line 66
    iget-object v0, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mItemEscSystem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetESCSystemActivity;->mEscData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfData;->Data:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 69
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->ResetData(Z)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->InitUI()V

    .line 37
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 134
    const/16 v0, 0x10

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 137
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 101
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 90
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->ResetData(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetESCSystemActivity;->QueryData()V

    .line 94
    return-void
.end method
