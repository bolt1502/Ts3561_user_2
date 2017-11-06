.class public Lcom/ts/can/chrysler/CanChrOthSetLockActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x8

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_REMOTEDOORUNLOCK:I = 0x8

.field public static final ITEM_REMOTESTART:I = 0x7

.field public static final ITEM_SCSFCTSY:I = 0x6

.field public static final ITEM_SCYSJS:I = 0x4

.field public static final ITEM_SCZXDSS:I = 0x3

.field public static final ITEM_WYSJR:I = 0x5

.field public static final ITEM_XCZDJS:I = 0x2

.field public static final ITEM_ZDCMSD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetLockActivity"

.field private static final mRemotedoorunlockArr:[I

.field private static final mScysjsArr:[I


# instance fields
.field protected mItemHornremotestart:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemRemotedoorunlock:Lcom/ts/canview/CanItemPopupList;

.field protected mItemScsfctsy:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemScysjs:Lcom/ts/canview/CanItemPopupList;

.field protected mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v4, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v3

    .line 33
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mScysjsArr:[I

    .line 40
    new-array v0, v4, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_remotedoor_all:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_remotedoor_driver:I

    aput v1, v0, v3

    .line 39
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mRemotedoorunlockArr:[I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 232
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 233
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 234
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 236
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 241
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 242
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 243
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 245
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$string;->can_zmzdsd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_xczdjs:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_scszxdss:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$string;->can_wysjr:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    .line 128
    sget v0, Lcom/ts/MainUI/R$string;->can_sccysjs:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mScysjsArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    .line 130
    sget v0, Lcom/ts/MainUI/R$string;->can_scsfctsy:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemSwitchList;

    .line 131
    sget v0, Lcom/ts/MainUI/R$string;->can_hornremotestart:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemHornremotestart:Lcom/ts/canview/CanItemSwitchList;

    .line 132
    sget v0, Lcom/ts/MainUI/R$string;->can_remotedoorunlock:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mRemotedoorunlockArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemRemotedoorunlock:Lcom/ts/canview/CanItemPopupList;

    .line 133
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoLock:I

    .line 152
    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoUnlockExit:I

    .line 156
    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FlashLock:I

    .line 160
    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RmtUnlock:I

    .line 164
    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->PassiveEntry:I

    .line 168
    goto :goto_0

    .line 171
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->HornLock:I

    .line 172
    goto :goto_0

    .line 175
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->HornRemoteStart:I

    .line 176
    goto :goto_0

    .line 179
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RemoteDoorUnlck:I

    .line 180
    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->GetAdtData()V

    .line 139
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 143
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->ShowItem(I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0x40

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->Query(II)V

    .line 95
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->GetSetData()V

    .line 75
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdate:I

    .line 80
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoUnlockExit:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PassiveEntry:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HornLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemHornremotestart:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HornRemoteStart:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemRemotedoorunlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RemoteDoorUnlck:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 90
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 192
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 219
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemHornremotestart:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 223
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mItemRemotedoorunlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->ResetData(Z)V

    .line 290
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 254
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :pswitch_1
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 261
    :pswitch_2
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoUnlockExit:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 265
    :pswitch_3
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 269
    :pswitch_4
    const/16 v1, 0x36

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PassiveEntry:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 273
    :pswitch_5
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HornLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 277
    :pswitch_6
    const/16 v1, 0x3b

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HornRemoteStart:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->InitUI()V

    .line 70
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 296
    sparse-switch p1, :sswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 299
    :sswitch_0
    const/16 v0, 0x34

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 303
    :sswitch_1
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 117
    const-string v0, "CanChrOthSetLockActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 101
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 102
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->LayoutUI()V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->ResetData(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;->QueryData()V

    .line 106
    const-string v0, "CanChrOthSetLockActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
