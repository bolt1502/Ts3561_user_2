.class public Lcom/ts/can/CanHondDACarSystemSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondDACarSystemSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_DEFAULTALL:I = 0x4

.field public static final ITEM_RESETMAINTENANCE:I = 0x3

.field public static final ITEM_TPMS_RST:I = 0x5

.field public static final ITEM_ZSBSZ:I = 0x1

.field public static final ITEM_lANGSET:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanHondDACarSystemSetActivity"


# instance fields
.field private mItemDefaultAll:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemLangSet:Lcom/ts/canview/CanItemPopupList;

.field private mItemResetMain:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemTpmsRst:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemZsbsz:Lcom/ts/canview/CanItemSwitchList;

.field protected mLangSetArr:[Ljava/lang/String;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    const-string v2, "\u4e2d\u6587"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 43
    const-string v2, "English"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mLangSetArr:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 101
    iget-object v1, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 104
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 83
    iget-object v1, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 85
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 90
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 91
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 92
    iget-object v1, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

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
    .line 168
    iget-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 169
    iget-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->XtszUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarSystemSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->XtszUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarSystemSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->XtszUpdate:I

    .line 174
    iget-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mItemZsbsz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->zsbsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 178
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarSystemSetActivity;->ResetData(Z)V

    .line 185
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    const/16 v4, 0x23

    iget-object v5, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->zsbsz:I

    invoke-virtual {p0, v5}, Lcom/ts/can/CanHondDACarSystemSetActivity;->Neg(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 118
    :pswitch_2
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v4, 0x3

    sget v5, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v4, p0, v5, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 119
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 121
    .end local v1    # "msgbox":Lcom/ts/canview/CanItemMsgBox;
    :pswitch_3
    new-instance v3, Lcom/ts/canview/CanItemMsgBox;

    const/4 v4, 0x4

    sget v5, Lcom/ts/MainUI/R$string;->can_hfcsz:I

    invoke-direct {v3, v4, p0, v5, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 122
    .local v3, "msgboxdefault":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 124
    .end local v3    # "msgboxdefault":Lcom/ts/canview/CanItemMsgBox;
    :pswitch_4
    new-instance v2, Lcom/ts/canview/CanItemMsgBox;

    const/4 v4, 0x5

    sget v5, Lcom/ts/MainUI/R$string;->can_tpms_set:I

    invoke-direct {v2, v4, p0, v5, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 125
    .local v2, "msgboxTpmsRst":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarSystemSetActivity;->setContentView(I)V

    .line 53
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 54
    sget v0, Lcom/ts/MainUI/R$string;->can_system_zsb:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondDACarSystemSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mItemZsbsz:Lcom/ts/canview/CanItemSwitchList;

    .line 55
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    iget-object v1, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mLangSetArr:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondDACarSystemSetActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mItemLangSet:Lcom/ts/canview/CanItemPopupList;

    .line 56
    sget v0, Lcom/ts/MainUI/R$string;->can_xlbyxxcz:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanHondDACarSystemSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mItemResetMain:Lcom/ts/canview/CanItemTextBtnList;

    .line 57
    sget v0, Lcom/ts/MainUI/R$string;->can_tpms_set:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanHondDACarSystemSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mItemTpmsRst:Lcom/ts/canview/CanItemTextBtnList;

    .line 58
    sget v0, Lcom/ts/MainUI/R$string;->can_hfcsz:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanHondDACarSystemSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarSystemSetActivity;->mItemDefaultAll:Lcom/ts/canview/CanItemTextBtnList;

    .line 59
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 139
    :pswitch_0
    const/16 v0, 0x55

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    const/4 v1, 0x0

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 153
    :pswitch_0
    const/16 v0, 0xe

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 156
    :pswitch_1
    const/16 v0, 0xf

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 159
    :pswitch_2
    const/16 v0, 0x11

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 66
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarSystemSetActivity;->ResetData(Z)V

    .line 76
    return-void
.end method
