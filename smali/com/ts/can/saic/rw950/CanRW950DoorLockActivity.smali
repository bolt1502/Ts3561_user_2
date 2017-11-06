.class public Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;
.super Lcom/ts/can/saic/rw950/CanRW950BaseActivity;
.source "CanRW950DoorLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_FZKMZDLS:I = 0x1

.field public static final ITEM_LSYS:I = 0x2

.field public static final ITEM_QBZDLS:I = 0x3

.field public static final ITEM_ZCZDJS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanRW950DoorLockActivity"

.field private static final mZczdjsArr:[I


# instance fields
.field private mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

.field private mItemLsys:Lcom/ts/canview/CanItemSwitchList;

.field private mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 27
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 28
    sget v2, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 29
    sget v2, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v2, v0, v1

    .line 25
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mZczdjsArr:[I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 105
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 106
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 107
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 108
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 113
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 114
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 115
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 116
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 93
    sget v0, Lcom/ts/MainUI/R$string;->can_fzkmzdll:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

    .line 94
    sget v0, Lcom/ts/MainUI/R$string;->can_ysll:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemLsys:Lcom/ts/canview/CanItemSwitchList;

    .line 95
    sget v0, Lcom/ts/MainUI/R$string;->can_qbzzll:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

    .line 98
    sget v0, Lcom/ts/MainUI/R$string;->can_zczdjs:I

    sget-object v1, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mZczdjsArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

    .line 101
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->GetSetData()V

    .line 52
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->Update:I

    .line 57
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubFZKMZDLS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemLsys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubYSLS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubQBZDLS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubZCZDJS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 64
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->ResetData(Z)V

    .line 151
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
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubFZKMZDLS:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->CarSet(II)V

    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubYSLS:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->CarSet(II)V

    goto :goto_0

    .line 136
    :pswitch_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubQBZDLS:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->CarSet(II)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->InitUI()V

    .line 47
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 160
    :pswitch_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->CarSet(II)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 86
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onPause()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onResume()V

    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->ResetData(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;->QueryData()V

    .line 79
    return-void
.end method
