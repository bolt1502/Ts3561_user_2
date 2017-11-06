.class public Lcom/ts/can/CanGolfSetChairActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanGolfSetChairActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ITEM_KEY_ACTIVE:I


# instance fields
.field private mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

.field private mItemKeyActive:Lcom/ts/canview/CanItemCheckList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfChair;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    .line 15
    return-void
.end method

.method private InitUI()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 37
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_magoten_key_active:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mItemKeyActive:Lcom/ts/canview/CanItemCheckList;

    .line 39
    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mItemKeyActive:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 41
    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetChairActivity;->mItemKeyActive:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method private Query()V
    .locals 2

    .prologue
    .line 67
    const/16 v0, 0x40

    const/16 v1, 0xb0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 68
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MagotenGetSeat(Lcom/lgb/canmodule/CanDataInfo$GolfChair;)V

    .line 55
    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfChair;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetChairActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfChair;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetChairActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfChair;->Update:I

    .line 61
    iget-object v0, p0, Lcom/ts/can/CanGolfSetChairActivity;->mItemKeyActive:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfChair;->KeyActive:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfSetChairActivity;->ResetData(Z)V

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const/16 v1, 0xca

    iget-object v2, p0, Lcom/ts/can/CanGolfSetChairActivity;->mGolfChair:Lcom/lgb/canmodule/CanDataInfo$GolfChair;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfChair;->KeyActive:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetChairActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetChairActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/ts/can/CanGolfSetChairActivity;->InitUI()V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 73
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 47
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfSetChairActivity;->ResetData(Z)V

    .line 49
    invoke-direct {p0}, Lcom/ts/can/CanGolfSetChairActivity;->Query()V

    .line 50
    return-void
.end method
