.class public Lcom/ts/can/saic/mg/CanMGGSLockActivity;
.super Lcom/ts/can/saic/mg/CanMGGSBaseActivity;
.source "CanMGGSLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_AUTO_UNLOCK:I = 0x2

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_NEAR_UNLOCK:I = 0x4

.field public static final ITEM_SPEED_LOCK:I = 0x1

.field public static final ITEM_UNLOCK_MODE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanMGGSLockActivity"

.field private static final mLocksArr:[I


# instance fields
.field private mItemAutoUnlock:Lcom/ts/canview/CanItemSwitchList;

.field private mItemNearUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

.field private mItemUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 30
    sget v2, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mLocksArr:[I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
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
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 153
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 159
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 160
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 161
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 162
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 104
    sget v0, Lcom/ts/MainUI/R$string;->can_csss:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

    .line 105
    sget v0, Lcom/ts/MainUI/R$string;->can_zdjs:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemAutoUnlock:Lcom/ts/canview/CanItemSwitchList;

    .line 106
    sget v0, Lcom/ts/MainUI/R$string;->can_unlock_mode:I

    sget-object v1, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mLocksArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 107
    sget v0, Lcom/ts/MainUI/R$string;->can_smart_near_lock:I

    sget-object v1, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mLocksArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemNearUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 109
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 130
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->ShowItem(I)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->GetSetData()V

    .line 59
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->Update:I

    .line 64
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemSpeedLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->fgSpeedLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemAutoUnlock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->fgAutoUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->UnlockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 67
    iget-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mItemNearUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->SmartUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 71
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 145
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->ResetData(Z)V

    .line 191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->fgSpeedLock:I

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->Neg(I)I

    move-result v1

    invoke-virtual {p0, v3, v3, v1}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->CarSet(III)V

    goto :goto_0

    .line 177
    :pswitch_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MG_GS_DATA;->fgAutoUnlock:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->CarSet(III)V

    goto :goto_0

    .line 170
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
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->InitUI()V

    .line 53
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v1, 0x1

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 200
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->CarSet(III)V

    goto :goto_0

    .line 204
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0, p2}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->CarSet(III)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 95
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onPause()V

    .line 97
    const-string v0, "CanMGGSLockActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->ResetData(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSLockActivity;->QueryData()V

    .line 86
    const-string v0, "CanMGGSLockActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
