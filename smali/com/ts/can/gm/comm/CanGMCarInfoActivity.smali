.class public Lcom/ts/can/gm/comm/CanGMCarInfoActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGMCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AC:I = 0x2

.field public static final ITEM_CAR_TYPE:I = 0x0

.field public static final ITEM_CDS:I = 0x5

.field public static final ITEM_CONV:I = 0x4

.field public static final ITEM_LANGUAGE:I = 0x7

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_LOCK:I = 0x1

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x0

.field public static final ITEM_OTHER:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanGMCarInfoActivity"


# instance fields
.field private mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

.field private mItemAc:Lcom/ts/canview/CanItemIcoList;

.field private mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field private mItemCds:Lcom/ts/canview/CanItemIcoList;

.field private mItemConv:Lcom/ts/canview/CanItemIcoList;

.field private mItemLanguage:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mItemOther:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 224
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 225
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 227
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 105
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 106
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 107
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 109
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_ac:I

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_set:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_c4_l_light:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v1, Lcom/ts/MainUI/R$string;->can_sshbl:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_cds:I

    sget v1, Lcom/ts/MainUI/R$string;->can_cds:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemCds:Lcom/ts/canview/CanItemIcoList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_other_set:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_tyres:I

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLanguage:Lcom/ts/canview/CanItemIcoList;

    .line 123
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 140
    :pswitch_0
    const/4 v0, 0x1

    .line 141
    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->AutoLock:I

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->RmtLock:I

    add-int v0, v1, v2

    .line 145
    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->AC:I

    .line 149
    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Light:I

    .line 153
    goto :goto_0

    .line 156
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Conv:I

    .line 157
    goto :goto_0

    .line 160
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Pzjc:I

    .line 161
    goto :goto_0

    .line 164
    :pswitch_6
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 169
    :pswitch_7
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->ShowItem(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMQuery(I)V

    .line 83
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtAll(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Update:I

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->LayoutUI()V

    .line 74
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 183
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 202
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 206
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemCds:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 210
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 214
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLanguage:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->ResetData(Z)V

    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 239
    :pswitch_0
    const-class v1, Lcom/ts/can/gm/comm/CanGMCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 243
    :pswitch_1
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 247
    :pswitch_2
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 251
    :pswitch_3
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 255
    :pswitch_4
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetConvActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 259
    :pswitch_5
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 263
    :pswitch_6
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 267
    :pswitch_7
    const-class v1, Lcom/ts/can/gm/comm/CanGMSetLanguageActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->InitUI()V

    .line 58
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->mItemLanguage:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 60
    return-void
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
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->ResetData(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMCarInfoActivity;->QueryData()V

    .line 93
    return-void
.end method
