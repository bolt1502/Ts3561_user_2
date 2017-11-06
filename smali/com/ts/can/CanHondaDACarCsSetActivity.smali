.class public Lcom/ts/can/CanHondaDACarCsSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaDACarCsSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AUTODOORLOCKWITH:I = 0x5

.field public static final ITEM_AUTODOORUNLOCKWITH:I = 0x4

.field public static final ITEM_KEYREMOTEUNLOCKMODE:I = 0x2

.field public static final ITEM_YKLSTS:I = 0x1

.field public static final ITEM_ZDCSSJ:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanHondaDACarCsSetActivity"

.field private static final mAutoDoorLockWithArr:[I

.field private static final mAutoDoorUnlockWithArr:[I

.field private static final mKeyRemoteUnlockModeArr:[I

.field private static final mZdcssjArr:[I


# instance fields
.field protected mItemAutoDoorLockWith:Lcom/ts/canview/CanItemPopupList;

.field protected mItemAutoDoorUnlockWith:Lcom/ts/canview/CanItemPopupList;

.field protected mItemKeyRemoteUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYklsts:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdcssj:Lcom/ts/canview/CanItemPopupList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_keyandremoteunlockmode_1:I

    aput v1, v0, v2

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_keyandremoteunlockmode_2:I

    aput v1, v0, v3

    .line 38
    sput-object v0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mKeyRemoteUnlockModeArr:[I

    .line 45
    new-array v0, v5, [I

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_30s:I

    aput v1, v0, v2

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_60s:I

    aput v1, v0, v3

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_90s:I

    aput v1, v0, v4

    .line 44
    sput-object v0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mZdcssjArr:[I

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_alldoorswhendriverdooropens:I

    aput v1, v0, v2

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_alldoorswhenshiftedtopark:I

    aput v1, v0, v3

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_alldoorswhenignitionswitchedoff:I

    aput v1, v0, v4

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_autodooroff:I

    aput v1, v0, v5

    .line 51
    sput-object v0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mAutoDoorUnlockWithArr:[I

    .line 60
    new-array v0, v5, [I

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_autodoorlockwith1:I

    aput v1, v0, v2

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_autodoorlockwith2:I

    aput v1, v0, v3

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_autodooroff:I

    aput v1, v0, v4

    .line 59
    sput-object v0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mAutoDoorLockWithArr:[I

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 112
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 113
    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 115
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 103
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 104
    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 106
    return-object v0
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 164
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->CsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondaDACarCsSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->CsUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondaDACarCsSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->CsUpdate:I

    .line 169
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemYklsts:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->yklsts:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 170
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemKeyRemoteUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->keylockmode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 171
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemZdcssj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->zdcssj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 172
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemAutoDoorUnlockWith:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->autodoorunlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 173
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemAutoDoorLockWith:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->autodoorlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 177
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarCsSetActivity;->ResetData(Z)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->yklsts:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDACarCsSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarCsSetActivity;->setContentView(I)V

    .line 73
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 74
    sget v0, Lcom/ts/MainUI/R$string;->can_keylesslockanswerback:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondaDACarCsSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemYklsts:Lcom/ts/canview/CanItemSwitchList;

    .line 75
    sget v0, Lcom/ts/MainUI/R$string;->can_keyandremoteunlockmode:I

    sget-object v1, Lcom/ts/can/CanHondaDACarCsSetActivity;->mKeyRemoteUnlockModeArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaDACarCsSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemKeyRemoteUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 76
    sget v0, Lcom/ts/MainUI/R$string;->can_securityrelocktimer:I

    sget-object v1, Lcom/ts/can/CanHondaDACarCsSetActivity;->mZdcssjArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaDACarCsSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemZdcssj:Lcom/ts/canview/CanItemPopupList;

    .line 77
    sget v0, Lcom/ts/MainUI/R$string;->can_autodoorunlockwith:I

    sget-object v1, Lcom/ts/can/CanHondaDACarCsSetActivity;->mAutoDoorUnlockWithArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaDACarCsSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemAutoDoorUnlockWith:Lcom/ts/canview/CanItemPopupList;

    .line 78
    sget v0, Lcom/ts/MainUI/R$string;->can_autodoorlockwith:I

    sget-object v1, Lcom/ts/can/CanHondaDACarCsSetActivity;->mAutoDoorLockWithArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaDACarCsSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarCsSetActivity;->mItemAutoDoorLockWith:Lcom/ts/canview/CanItemPopupList;

    .line 80
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 142
    :pswitch_0
    const/16 v0, 0x9

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 145
    :pswitch_1
    const/16 v0, 0xb

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 148
    :pswitch_2
    const/16 v0, 0x8

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 151
    :pswitch_3
    const/4 v0, 0x7

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 87
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 95
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarCsSetActivity;->ResetData(Z)V

    .line 97
    return-void
.end method
