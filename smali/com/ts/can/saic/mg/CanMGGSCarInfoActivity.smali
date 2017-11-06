.class public Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;
.super Lcom/ts/can/saic/mg/CanMGGSBaseActivity;
.source "CanMGGSCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_AC:I = 0x5

.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_CONV:I = 0x6

.field public static final ITEM_FIND_LIGHT:I = 0x4

.field public static final ITEM_FS_SET:I = 0x7

.field public static final ITEM_HOME_LIGHT:I = 0x3

.field public static final ITEM_LOCK:I = 0x2

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanMGGSCarInfoActivity"


# instance fields
.field private mItemAC:Lcom/ts/canview/CanItemIcoList;

.field private mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field private mItemConv:Lcom/ts/canview/CanItemIcoList;

.field private mItemFindLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemFsSet:Lcom/ts/canview/CanItemIcoList;

.field private mItemHomeLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 259
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 260
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 261
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 263
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 268
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 269
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 270
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 271
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 272
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$drawable;->can_golf_icon12:I

    sget v1, Lcom/ts/MainUI/R$string;->can_ssblx:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock3:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_bwhj_light:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemHomeLight:Lcom/ts/canview/CanItemIcoList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light2:I

    sget v1, Lcom/ts/MainUI/R$string;->can_xcd:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemFindLight:Lcom/ts/canview/CanItemIcoList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_ac:I

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_set:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemAC:Lcom/ts/canview/CanItemIcoList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_factory:I

    sget v1, Lcom/ts/MainUI/R$string;->can_factory_set:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemFsSet:Lcom/ts/canview/CanItemIcoList;

    .line 128
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 4
    .param p1, "item"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    const/4 v0, 0x1

    .line 147
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 152
    :cond_1
    const/4 v0, 0x1

    .line 154
    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_2

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v3, v1, :cond_3

    .line 159
    :cond_2
    const/4 v0, 0x0

    .line 160
    goto :goto_0

    .line 163
    :cond_3
    const/4 v0, 0x1

    .line 165
    goto :goto_0

    .line 168
    :pswitch_3
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_4

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v3, v1, :cond_5

    .line 170
    :cond_4
    const/4 v0, 0x0

    .line 171
    goto :goto_0

    .line 174
    :cond_5
    const/4 v0, 0x1

    .line 176
    goto :goto_0

    .line 179
    :pswitch_4
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_6

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v3, v1, :cond_7

    .line 181
    :cond_6
    const/4 v0, 0x0

    .line 182
    goto :goto_0

    .line 185
    :cond_7
    const/4 v0, 0x1

    .line 187
    goto :goto_0

    .line 190
    :pswitch_5
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_8

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v3, v1, :cond_9

    .line 192
    :cond_8
    const/4 v0, 0x0

    .line 193
    goto :goto_0

    .line 196
    :cond_9
    const/4 v0, 0x1

    .line 198
    goto :goto_0

    .line 201
    :pswitch_6
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_a

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v3, v1, :cond_b

    .line 203
    :cond_a
    const/4 v0, 0x0

    .line 204
    goto :goto_0

    .line 207
    :cond_b
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 138
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->ShowItem(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 87
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 222
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemHomeLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 241
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemFindLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 245
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemAC:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 249
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->mItemFsSet:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->ResetData(Z)V

    .line 329
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 284
    :pswitch_0
    const-class v1, Lcom/ts/can/saic/mg/CanMGCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 288
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 290
    const-class v1, Lcom/ts/can/saic/mg/CanMGRx5ConvActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 294
    :cond_0
    const-class v1, Lcom/ts/can/saic/mg/CanMGConvActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 299
    :pswitch_2
    const-class v1, Lcom/ts/can/saic/mg/CanMGGSLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 303
    :pswitch_3
    const-class v1, Lcom/ts/can/saic/mg/CanMGGSHomeLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 307
    :pswitch_4
    const-class v1, Lcom/ts/can/saic/mg/CanMGGSFindLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 311
    :pswitch_5
    const-class v1, Lcom/ts/can/saic/mg/CanMGGSACActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 315
    :pswitch_6
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x7

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->InitUI()V

    .line 55
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    const/4 v1, 0x1

    .line 335
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 337
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1, v1}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->CarSet(III)V

    .line 339
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 112
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onPause()V

    .line 113
    const-string v0, "CanMGGSCarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/ts/can/saic/mg/CanMGGSBaseActivity;->onResume()V

    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->ResetData(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->QueryData()V

    .line 101
    invoke-virtual {p0}, Lcom/ts/can/saic/mg/CanMGGSCarInfoActivity;->LayoutUI()V

    .line 103
    const-string v0, "CanMGGSCarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
