.class public Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;
.super Lcom/ts/can/saic/rw950/CanRW950BaseActivity;
.source "CanRW950RmtLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CMJS:I = 0x7

.field public static final ITEM_CXYKSZDKDM:I = 0x8

.field public static final ITEM_JSDGFK:I = 0x5

.field public static final ITEM_SMDGLBFK:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanGMCarInfoActivity"

.field private static final mCmjsArr:[I

.field private static final mSmdglbfkArr:[I


# instance fields
.field private mItemCmjs:Lcom/ts/canview/CanItemPopupList;

.field private mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

.field private mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->can_only_light:I

    aput v1, v0, v3

    .line 31
    sget v1, Lcom/ts/MainUI/R$string;->can_dghlb:I

    aput v1, v0, v4

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_only_lb:I

    aput v1, v0, v5

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSmdglbfkArr:[I

    .line 37
    new-array v0, v5, [I

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v3

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v4

    .line 36
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mCmjsArr:[I

    .line 40
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
    .line 115
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 116
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 117
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 118
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 123
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 124
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 125
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 126
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 106
    sget v0, Lcom/ts/MainUI/R$string;->can_ykjsdgfk:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

    .line 107
    sget v0, Lcom/ts/MainUI/R$string;->can_ykdglbfk:I

    sget-object v1, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSmdglbfkArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

    .line 108
    sget v0, Lcom/ts/MainUI/R$string;->can_ykjssz:I

    sget-object v1, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mCmjsArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemCmjs:Lcom/ts/canview/CanItemPopupList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$string;->can_cxszdkdm:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

    .line 110
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->GetSetData()V

    .line 65
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->Update:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubYKJSDGFK:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubYKFK:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemCmjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubYKJS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubCXYKSZDKDM:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 78
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->ResetData(Z)V

    .line 158
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    return-void

    .line 139
    :pswitch_1
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubYKJSDGFK:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->CarSet(II)V

    goto :goto_0

    .line 143
    :pswitch_2
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubCXYKSZDKDM:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->CarSet(II)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->InitUI()V

    .line 59
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->CarSet(II)V

    goto :goto_0

    .line 171
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->CarSet(II)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->ResetData(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;->QueryData()V

    .line 93
    return-void
.end method
