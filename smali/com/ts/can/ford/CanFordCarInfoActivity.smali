.class public Lcom/ts/can/ford/CanFordCarInfoActivity;
.super Lcom/ts/can/ford/CanFordBaseActivity;
.source "CanFordCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CAR_SET:I = 0x2

.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_ECO_MODE:I = 0x3

.field public static final ITEM_LANG_SET:I = 0x5

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_WARN_INFO:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanFordCarInfoActivity"


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

.field private mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemEcoMode:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemLangSet:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z

.field private ver:Lcom/lgb/canmodule/CanDataInfo$SyncVer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/ford/CanFordBaseActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$SyncVer;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$SyncVer;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->ver:Lcom/lgb/canmodule/CanDataInfo$SyncVer;

    .line 17
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 117
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 119
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 122
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 204
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 205
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 206
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 208
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 100
    sget v0, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    invoke-direct {p0, v0, v2}, Lcom/ts/can/ford/CanFordCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    .line 101
    sget v0, Lcom/ts/MainUI/R$string;->can_car_set:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 102
    sget v0, Lcom/ts/MainUI/R$string;->can_eco_mode:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemEcoMode:Lcom/ts/canview/CanItemTextBtnList;

    .line 103
    sget v0, Lcom/ts/MainUI/R$string;->can_warn_info:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 104
    sget v0, Lcom/ts/MainUI/R$string;->can_car_lang:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemLangSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 105
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetAdt(Lcom/lgb/canmodule/CanDataInfo$FordAdt;)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->ver:Lcom/lgb/canmodule/CanDataInfo$SyncVer;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetSyncVer(Lcom/lgb/canmodule/CanDataInfo$SyncVer;)V

    .line 110
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->LayoutUI()V

    .line 111
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 140
    :pswitch_0
    const/4 v0, 0x1

    .line 141
    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->SetEnable:I

    .line 145
    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->EcoEnable:I

    .line 150
    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$FordAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$FordAdt;->WarnEnable:I

    .line 154
    goto :goto_0

    .line 157
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->ver:Lcom/lgb/canmodule/CanDataInfo$SyncVer;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$SyncVer;->Ver:I

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->ShowItem(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 70
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 173
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemEcoMode:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 193
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/ford/CanFordCarInfoActivity;->mItemLangSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->ResetData(Z)V

    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 221
    :pswitch_0
    const-class v1, Lcom/ts/can/ford/CanFordCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 225
    :pswitch_1
    const-class v1, Lcom/ts/can/ford/CanFordCarSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 229
    :pswitch_2
    const-class v1, Lcom/ts/can/ford/CanFordEcoModeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 233
    :pswitch_3
    const-class v1, Lcom/ts/can/ford/CanFordWarnInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 237
    :pswitch_4
    const-class v1, Lcom/ts/can/ford/CanFordLangSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/ford/CanFordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->InitUI()V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 92
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onPause()V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onResume()V

    .line 81
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->ResetData(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordCarInfoActivity;->QueryData()V

    .line 85
    return-void
.end method
