.class public Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGeelyBoySetViewActivity.java"


# static fields
.field private static final ITEM_DLDCYX:I = 0x4

.field private static final ITEM_DTGJX:I = 0x1

.field private static final ITEM_FZSDZD:I = 0x5

.field private static final ITEM_JTGJX:I = 0x0

.field private static final ITEM_RDTCYC:I = 0x3

.field private static final ITEM_SETUP:I = 0x6

.field private static final ITEM_YYJZ:I = 0x2


# instance fields
.field private mItemDldcyx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDtgjx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemFzsdzd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJtgjx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemRdtcyc:Lcom/ts/canview/CanItemSwitchList;

.field private mItemSetup:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYyjz:Lcom/ts/canview/CanItemSwitchList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;-><init>()V

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    .line 12
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 73
    .local v0, "manager":Lcom/ts/canview/CanScrollList;
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_jtgjx:I

    invoke-virtual {v0, v1, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemJtgjx:Lcom/ts/canview/CanItemSwitchList;

    .line 74
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_dtgjx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemDtgjx:Lcom/ts/canview/CanItemSwitchList;

    .line 75
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_yyjz:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemYyjz:Lcom/ts/canview/CanItemSwitchList;

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_rdtcyc:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemRdtcyc:Lcom/ts/canview/CanItemSwitchList;

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_dldcyx:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemDldcyx:Lcom/ts/canview/CanItemSwitchList;

    .line 78
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_fzsdzx:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemFzsdzd:Lcom/ts/canview/CanItemSwitchList;

    .line 79
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_setup:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemSetup:Lcom/ts/canview/CanItemSwitchList;

    .line 81
    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemSetup:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 82
    return-void
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 107
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarQuery(II)V

    .line 108
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GeelyBoyGetInfo(Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Update:I

    invoke-static {v0}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Update:I

    .line 94
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemJtgjx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Jtgjx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemDtgjx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Dtgjx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemYyjz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Yyjz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemRdtcyc:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Rdtcys:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemDldcyx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Dldcyx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemFzsdzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Fzsdzd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mItemSetup:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Szqk:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 103
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Jtgjx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Dtgjx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 46
    :pswitch_2
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Yyjz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 50
    :pswitch_3
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Rdtcys:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 54
    :pswitch_4
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Dldcyx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 58
    :pswitch_5
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Fzsdzd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetViewActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
