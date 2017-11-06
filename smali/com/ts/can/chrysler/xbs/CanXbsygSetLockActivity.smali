.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CMBJ:I = 0x6

.field public static final ITEM_DDWMBJ:I = 0xa

.field public static final ITEM_JSKQCD:I = 0x8

.field private static final ITEM_MAX:I = 0xd

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SCSFCSY:I = 0xb

.field public static final ITEM_SCSFCTSY:I = 0x7

.field public static final ITEM_SCYSJS:I = 0x4

.field public static final ITEM_SCZXDSS:I = 0x3

.field public static final ITEM_WYSJR:I = 0x5

.field public static final ITEM_XCZDJS:I = 0x2

.field public static final ITEM_YCJS:I = 0xd

.field public static final ITEM_YCQDTSY:I = 0x9

.field public static final ITEM_ZDCMSD:I = 0x1

.field public static final ITEM_ZNYSGXHSZ:I = 0xc

.field public static final TAG:Ljava/lang/String; = "CanRZygSetLockActivity"

.field private static final mScsfctsyArr:[I

.field private static final mScysjsArr:[I


# instance fields
.field protected mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemDdwmbj:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemScsfcsy:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

.field protected mItemScysjs:Lcom/ts/canview/CanItemPopupList;

.field protected mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYcjs:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZnysgxhsz:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v4, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    .line 39
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mScysjsArr:[I

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_Scsfctsy_3:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_Scsfctsy_2:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_Scsfctsy_1:I

    aput v1, v0, v4

    .line 45
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mScsfctsyArr:[I

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 294
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 295
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 296
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 298
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 303
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 304
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 305
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 307
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 139
    sget v0, Lcom/ts/MainUI/R$string;->can_zmzdsd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    .line 140
    sget v0, Lcom/ts/MainUI/R$string;->can_xczdjs:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    .line 141
    sget v0, Lcom/ts/MainUI/R$string;->can_scszxdss:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    .line 142
    sget v0, Lcom/ts/MainUI/R$string;->can_wysjr:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    .line 143
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_cmbj:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

    .line 144
    sget v0, Lcom/ts/MainUI/R$string;->can_sccysjs:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mScysjsArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    .line 145
    sget v0, Lcom/ts/MainUI/R$string;->can_scsfctsy:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mScsfctsyArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

    .line 146
    sget v0, Lcom/ts/MainUI/R$string;->can_zyx_jskqdg:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

    .line 147
    sget v0, Lcom/ts/MainUI/R$string;->can_jeep_znz_ycqdtsy:I

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

    .line 148
    sget v0, Lcom/ts/MainUI/R$string;->can_ddwmbj:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemDdwmbj:Lcom/ts/canview/CanItemSwitchList;

    .line 149
    sget v0, Lcom/ts/MainUI/R$string;->can_scsfcsy:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScsfcsy:Lcom/ts/canview/CanItemSwitchList;

    .line 150
    sget v0, Lcom/ts/MainUI/R$string;->can_znysgxhsz:I

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemZnysgxhsz:Lcom/ts/canview/CanItemSwitchList;

    .line 151
    sget v0, Lcom/ts/MainUI/R$string;->can_remotedoorunlock:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mScysjsArr:[I

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemYcjs:Lcom/ts/canview/CanItemPopupList;

    .line 152
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoLock:I

    .line 171
    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoUnlockExit:I

    .line 175
    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FlashLock:I

    .line 179
    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RmtUnlock:I

    .line 183
    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->PassiveEntry:I

    .line 187
    goto :goto_0

    .line 190
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cmbj:I

    .line 191
    goto :goto_0

    .line 194
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Scsfctsy:I

    .line 195
    goto :goto_0

    .line 198
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Jsckqcd:I

    .line 199
    goto :goto_0

    .line 202
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ycqdtsy:I

    .line 203
    goto :goto_0

    .line 206
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ddwmbj:I

    .line 207
    goto :goto_0

    .line 210
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->LockBeep:I

    .line 211
    goto :goto_0

    .line 214
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Znysgxhsz:I

    .line 215
    goto :goto_0

    .line 218
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RemoteDoorUnlck:I

    .line 219
    goto :goto_0

    .line 167
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->GetAdtData()V

    .line 158
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 162
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->ShowItem(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->Query2(I)V

    .line 110
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->GetSetData()V

    .line 85
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdate:I

    .line 90
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 91
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoUnlockExit:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 93
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PassiveEntry:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cmbj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Scsfctsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Jsckqcd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ycqdtsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemDdwmbj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ddwmbj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScsfcsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockBeep:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemZnysgxhsz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Znysgxhsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemYcjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RemoteDoorUnlck:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 105
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 232
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 251
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 255
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 259
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 263
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 267
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 271
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemDdwmbj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 275
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemScsfcsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 279
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemZnysgxhsz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 283
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mItemYcjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 232
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->ResetData(Z)V

    .line 369
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 323
    :pswitch_2
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoUnlockExit:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 327
    :pswitch_3
    const/16 v1, 0x3b

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 331
    :pswitch_4
    const/16 v1, 0x34

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PassiveEntry:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 335
    :pswitch_5
    const/16 v1, 0x36

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cmbj:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 339
    :pswitch_6
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Jsckqcd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 343
    :pswitch_7
    const/16 v1, 0x3e

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ycqdtsy:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 347
    :pswitch_8
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ddwmbj:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 351
    :pswitch_9
    const/16 v1, 0x38

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockBeep:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 355
    :pswitch_a
    const/16 v1, 0x35

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Znysgxhsz:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->InitUI()V

    .line 80
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 375
    sparse-switch p1, :sswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 378
    :sswitch_0
    const/16 v0, 0x33

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 382
    :sswitch_1
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 386
    :sswitch_2
    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 130
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 132
    const-string v0, "CanRZygSetLockActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 116
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 117
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->LayoutUI()V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->ResetData(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLockActivity;->QueryData()V

    .line 121
    const-string v0, "CanRZygSetLockActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
