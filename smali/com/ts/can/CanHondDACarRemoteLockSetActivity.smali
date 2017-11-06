.class public Lcom/ts/can/CanHondDACarRemoteLockSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondDACarRemoteLockSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_DOORUNLOCKMODE:I = 0x3

.field public static final ITEM_YKMSCBDTS:I = 0x4

.field public static final ITEM_YKMSFMQTS:I = 0x1

.field public static final ITEM_YKQDXT:I = 0x2

.field public static final ITEM_ZDCNZMLMD:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanHondDACarRemoteLockSetActivity"

.field private static final mDoorUnlockModeArr:[I

.field private static final mZdcnzmlmdArr:[I


# instance fields
.field protected mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYkmscbdts:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYkmsfmqts:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYkqdxtkq:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdcnzmlmd:Lcom/ts/canview/CanItemPopupList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_keyandremoteunlockmode_2:I

    aput v1, v0, v2

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_keyandremoteunlockmode_1:I

    aput v1, v0, v3

    .line 38
    sput-object v0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mDoorUnlockModeArr:[I

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_min:I

    aput v1, v0, v2

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_low:I

    aput v1, v0, v3

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_mid:I

    aput v1, v0, v4

    const/4 v1, 0x3

    .line 49
    sget v2, Lcom/ts/MainUI/R$string;->can_sensitivity_high:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 50
    sget v2, Lcom/ts/MainUI/R$string;->can_sensitivity_max:I

    aput v2, v0, v1

    .line 44
    sput-object v0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mZdcnzmlmdArr:[I

    .line 51
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

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 101
    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 103
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 90
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 91
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 92
    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 94
    return-object v0
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->RemCsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->RemCsUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->RemCsUpdate:I

    .line 159
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemYkmsfmqts:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->ykmsfmqts:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemYkqdxtkq:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->ykqdxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->doorunlockmode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 162
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemYkmscbdts:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->ykmscbdts:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 163
    iget-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemZdcnzmlmd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->zdcnzmlmd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 168
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->ResetData(Z)V

    .line 175
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->ykmsfmqts:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 120
    :pswitch_2
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->ykqdxt:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 123
    :pswitch_3
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->ykmscbdts:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->setContentView(I)V

    .line 60
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 61
    sget v0, Lcom/ts/MainUI/R$string;->can_keylessaccessbeep:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemYkmsfmqts:Lcom/ts/canview/CanItemSwitchList;

    .line 62
    sget v0, Lcom/ts/MainUI/R$string;->can_remotestartsystem:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemYkqdxtkq:Lcom/ts/canview/CanItemSwitchList;

    .line 63
    sget v0, Lcom/ts/MainUI/R$string;->can_doorunlockmode:I

    sget-object v1, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mDoorUnlockModeArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 64
    sget v0, Lcom/ts/MainUI/R$string;->can_keylessaccesslightflash:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemYkmscbdts:Lcom/ts/canview/CanItemSwitchList;

    .line 65
    sget v0, Lcom/ts/MainUI/R$string;->can_autointeriorsensitivity:I

    sget-object v1, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mZdcnzmlmdArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->mItemZdcnzmlmd:Lcom/ts/canview/CanItemPopupList;

    .line 68
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    const/16 v0, 0x19

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 141
    :pswitch_2
    const/16 v0, 0x1b

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;->ResetData(Z)V

    .line 85
    return-void
.end method
