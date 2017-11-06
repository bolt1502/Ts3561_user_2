.class public Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;
.super Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;
.source "CanAccordXbsSetDriveAssActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_ACC_QCTZTSY:I = 0x2

.field public static final ITEM_CDPLFXSDXT:I = 0x3

.field public static final ITEM_DCTSY:I = 0x6

.field public static final ITEM_JTBSSBXT:I = 0x1

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_YKQDXT:I = 0x5

.field public static final ITEM_ZT_LKAS_TSY:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanAccordLockActivity"

.field private static final mCdplfxxtArr:[I


# instance fields
.field private mItemAccQctztsy:Lcom/ts/canview/CanItemSwitchList;

.field private mItemCdplfxxtsd:Lcom/ts/canview/CanItemPopupList;

.field private mItemDctsy:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJtbssbxt:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYkqdxt:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZtlkastsy:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_cdplfxxtsd_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_cdplfxxtsd_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->can_cdplfxxtsd_3:I

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mCdplfxxtArr:[I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 206
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 207
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 208
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 210
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 215
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 216
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 217
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 219
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 114
    sget v0, Lcom/ts/MainUI/R$string;->can_jtbssbxt:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemJtbssbxt:Lcom/ts/canview/CanItemSwitchList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$string;->can_accqctztsy:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemAccQctztsy:Lcom/ts/canview/CanItemSwitchList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$string;->can_ztlkastsy:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemZtlkastsy:Lcom/ts/canview/CanItemSwitchList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_remotestartsystem:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemYkqdxt:Lcom/ts/canview/CanItemSwitchList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_dctsy:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemDctsy:Lcom/ts/canview/CanItemSwitchList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_cdplfxxtsd:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mCdplfxxtArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemCdplfxxtsd:Lcom/ts/canview/CanItemPopupList;

    .line 120
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Jtbssbxt:I

    .line 140
    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AccQctztsy:I

    .line 144
    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Cdplfxxtsz:I

    .line 148
    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->ZtLkasTsy:I

    .line 152
    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Ykqdxt:I

    .line 156
    goto :goto_0

    .line 159
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Dctsy:I

    .line 160
    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->GetAdtData()V

    .line 127
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->ShowItem(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 89
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->Query(II)V

    .line 90
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->GetSetData()V

    .line 69
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    .line 75
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemJtbssbxt:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Jtbssbxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemAccQctztsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AccQctztsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemZtlkastsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->ZtLkasTsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemYkqdxt:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Ykqdxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemDctsy:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Dctsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 80
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemCdplfxxtsd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Cdplfxxtsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->IsHaveItem(I)Z

    move-result v0

    .line 173
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemJtbssbxt:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemAccQctztsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemCdplfxxtsd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemZtlkastsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 192
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemYkqdxt:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 196
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mItemDctsy:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->ResetData(Z)V

    .line 260
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Jtbssbxt:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->CarSet(II)V

    goto :goto_0

    .line 234
    :pswitch_2
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AccQctztsy:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->CarSet(II)V

    goto :goto_0

    .line 238
    :pswitch_3
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Dctsy:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->CarSet(II)V

    goto :goto_0

    .line 242
    :pswitch_4
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->ZtLkasTsy:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->CarSet(II)V

    goto :goto_0

    .line 246
    :pswitch_5
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Ykqdxt:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->CarSet(II)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->InitUI()V

    .line 63
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 269
    :pswitch_0
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->CarSet(II)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onResume()V

    .line 96
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->ResetData(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->QueryData()V

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsSetDriveAssActivity;->LayoutUI()V

    .line 101
    return-void
.end method
