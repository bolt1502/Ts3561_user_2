.class public Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygSetLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CMBJ:I = 0x6

.field public static final ITEM_JSKQCD:I = 0x8

.field private static final ITEM_MAX:I = 0x9

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SCSFCTSY:I = 0x7

.field public static final ITEM_SCYSJS:I = 0x4

.field public static final ITEM_SCZXDSS:I = 0x3

.field public static final ITEM_WYSJR:I = 0x5

.field public static final ITEM_XCZDJS:I = 0x2

.field public static final ITEM_YCQDTSY:I = 0x9

.field public static final ITEM_ZDCMSD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanRZygSetLockActivity"

.field private static final mScsfctsyArr:[I

.field private static final mScysjsArr:[I


# instance fields
.field protected mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

.field protected mItemScysjs:Lcom/ts/canview/CanItemPopupList;

.field protected mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

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
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mScysjsArr:[I

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_Scsfctsy_1:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_Scsfctsy_2:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_Scsfctsy_3:I

    aput v1, v0, v4

    .line 39
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mScsfctsyArr:[I

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 244
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 245
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 246
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 248
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 253
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 254
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 255
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 257
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_zmzdsd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_xczdjs:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$string;->can_scszxdss:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    .line 128
    sget v0, Lcom/ts/MainUI/R$string;->can_wysjr:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    .line 129
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_cmbj:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

    .line 130
    sget v0, Lcom/ts/MainUI/R$string;->can_sccysjs:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mScysjsArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    .line 131
    sget v0, Lcom/ts/MainUI/R$string;->can_scsfctsy:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mScsfctsyArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

    .line 132
    sget v0, Lcom/ts/MainUI/R$string;->can_zyx_jskqdg:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

    .line 133
    sget v0, Lcom/ts/MainUI/R$string;->can_jeep_znz_ycqdtsy:I

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

    .line 134
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoLock:I

    .line 153
    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoUnlockExit:I

    .line 157
    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FlashLock:I

    .line 161
    const/4 v0, 0x0

    .line 162
    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RmtUnlock:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->PassiveEntry:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cmbj:I

    .line 174
    goto :goto_0

    .line 177
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Scsfctsy:I

    .line 178
    goto :goto_0

    .line 181
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Jsckqcd:I

    .line 182
    goto :goto_0

    .line 185
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ycqdtsy:I

    .line 186
    goto :goto_0

    .line 149
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
        :pswitch_8
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->GetAdtData()V

    .line 140
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 144
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->ShowItem(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 95
    const/16 v0, 0x40

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->Query(II)V

    .line 96
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->GetSetData()V

    .line 75
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LockUpdate:I

    .line 80
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoUnlockExit:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PassiveEntry:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cmbj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Scsfctsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Jsckqcd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ycqdtsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 91
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 199
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemZdcmsd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemXczdjs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemSczxdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemScysjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemWysjr:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 222
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemCmbj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 226
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemScsfctsy:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 230
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemJskqcd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 234
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mItemYcqdtsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 199
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
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->ResetData(Z)V

    .line 307
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 269
    :pswitch_1
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 273
    :pswitch_2
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoUnlockExit:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 277
    :pswitch_3
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLock:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 281
    :pswitch_4
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PassiveEntry:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 285
    :pswitch_5
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cmbj:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 289
    :pswitch_6
    const/16 v1, 0x94

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Jsckqcd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSWSet(II)V

    goto :goto_0

    .line 293
    :pswitch_7
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ycqdtsy:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->Neg(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 266
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
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->InitUI()V

    .line 70
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-void

    .line 316
    :pswitch_1
    const/16 v0, 0x24

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 320
    :pswitch_2
    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 116
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 118
    const-string v0, "CanRZygSetLockActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->LayoutUI()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->ResetData(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;->QueryData()V

    .line 107
    const-string v0, "CanRZygSetLockActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
