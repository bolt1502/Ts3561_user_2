.class public Lcom/ts/can/psa/hc/CanBZCarInfoActivity;
.super Lcom/ts/can/psa/hc/CanBZBaseActivity;
.source "CanBZCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CAR_SET:I = 0x2

.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_CHECK_INFO:I = 0x4

.field public static final ITEM_CRUISE_SPEED:I = 0x7

.field public static final ITEM_DRIVE_INFO:I = 0x3

.field public static final ITEM_FUNC_INFO:I = 0x6

.field public static final ITEM_KEY_SET:I = 0xa

.field private static final ITEM_MAX:I = 0xa

.field public static final ITEM_MEM_TAB:I = 0x9

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SPEED_LIMIT:I = 0x8

.field public static final ITEM_WARN_INFO:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanBZCarInfoActivity"


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

.field private mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemCheckInfo:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemCruiseSpeed:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemDriveInfo:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemFuncInfo:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemKeySet:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemMemTab:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemSpeedLimit:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

.field private mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z

.field private mbSaveScr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    .line 18
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 145
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 146
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 147
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 150
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 276
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 277
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 278
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 280
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 112
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 114
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mbSaveScr:Z

    .line 115
    iget-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetLogCfg(Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;)V

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_car_set:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_xc_info:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemDriveInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$string;->can_check_info:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCheckInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$string;->can_warn_info:I

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_func_info:I

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemFuncInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_xh_speed:I

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCruiseSpeed:Lcom/ts/canview/CanItemTextBtnList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_limit:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemSpeedLimit:Lcom/ts/canview/CanItemTextBtnList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_c4_l_mem_tab:I

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemMemTab:Lcom/ts/canview/CanItemTextBtnList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_key_set:I

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemKeySet:Lcom/ts/canview/CanItemTextBtnList;

    .line 139
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->LayoutUI()V

    .line 141
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "ret":I
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->BZGetLogCfg(Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;)V

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    invoke-static {v0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 169
    :pswitch_0
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 173
    :pswitch_1
    const/4 v0, 0x1

    .line 175
    goto :goto_0

    .line 178
    :pswitch_2
    const/4 v0, 0x1

    .line 179
    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;->fgCheck:I

    .line 183
    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;->fgWarn:I

    .line 187
    goto :goto_0

    .line 190
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;->fgFunc:I

    .line 191
    goto :goto_0

    .line 194
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Xhxz:I

    .line 195
    goto :goto_0

    .line 198
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Xhxz:I

    .line 199
    goto :goto_0

    .line 202
    :pswitch_8
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 205
    goto :goto_0

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 210
    goto :goto_0

    .line 213
    :pswitch_9
    const/4 v0, 0x0

    .line 214
    goto :goto_0

    .line 166
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
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 160
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->ShowItem(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 82
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 227
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemDriveInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCheckInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 250
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemFuncInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 254
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemCruiseSpeed:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 258
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemSpeedLimit:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 262
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemMemTab:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 266
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->mItemKeySet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 227
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
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->ResetData(Z)V

    .line 342
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    const-class v1, Lcom/ts/can/psa/hc/CanBZCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 296
    :pswitch_2
    const-class v1, Lcom/ts/can/psa/hc/CanBZCarSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 300
    :pswitch_3
    const-class v1, Lcom/ts/can/psa/hc/CanBZDriveInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 304
    :pswitch_4
    const-class v1, Lcom/ts/can/psa/hc/CanBZCheckInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 308
    :pswitch_5
    const-class v1, Lcom/ts/can/psa/hc/CanBZWarnInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 312
    :pswitch_6
    const-class v1, Lcom/ts/can/psa/hc/CanBZFuncInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 324
    :pswitch_7
    const-class v1, Lcom/ts/can/psa/hc/CanBZMemTabActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->InitUI()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    invoke-super {p0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->onPause()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/ts/can/psa/hc/CanBZBaseActivity;->onResume()V

    .line 96
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->ResetData(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/ts/can/psa/hc/CanBZCarInfoActivity;->QueryData()V

    .line 100
    return-void
.end method
