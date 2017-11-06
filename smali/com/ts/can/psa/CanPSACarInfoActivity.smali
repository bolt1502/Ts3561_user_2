.class public Lcom/ts/can/psa/CanPSACarInfoActivity;
.super Lcom/ts/can/psa/CanPSABaseActivity;
.source "CanPSACarInfoActivity.java"

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

.field public static final TAG:Ljava/lang/String; = "CanPSACarInfoActivity"


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
    .line 19
    invoke-direct {p0}, Lcom/ts/can/psa/CanPSABaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    .line 54
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    .line 19
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 144
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 147
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 287
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 288
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 289
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 291
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    .line 111
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 113
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mbSaveScr:Z

    .line 114
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetLogCfg(Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;)V

    .line 116
    sget v0, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    invoke-direct {p0, v0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_car_set:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$string;->can_xc_info:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemDriveInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_check_info:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCheckInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$string;->can_warn_info:I

    invoke-direct {p0, v0, v3}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$string;->can_func_info:I

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemFuncInfo:Lcom/ts/canview/CanItemTextBtnList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_xh_speed:I

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCruiseSpeed:Lcom/ts/canview/CanItemTextBtnList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_limit:I

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemSpeedLimit:Lcom/ts/canview/CanItemTextBtnList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$string;->can_c4_l_mem_tab:I

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemMemTab:Lcom/ts/canview/CanItemTextBtnList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_key_set:I

    const/16 v2, 0xa

    invoke-direct {p0, v0, v2}, Lcom/ts/can/psa/CanPSACarInfoActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemKeySet:Lcom/ts/canview/CanItemTextBtnList;

    .line 128
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 129
    iget-boolean v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mbSaveScr:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemKeySet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 138
    :goto_1
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->LayoutUI()V

    goto :goto_1
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/16 v2, 0x3a

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_0
    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 169
    :pswitch_1
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v2, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 172
    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->fgAvalid:I

    .line 177
    goto :goto_0

    .line 180
    :pswitch_2
    const/4 v0, 0x1

    .line 181
    goto :goto_0

    .line 184
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;->fgCheck:I

    .line 185
    goto :goto_0

    .line 188
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;->fgWarn:I

    .line 189
    goto :goto_0

    .line 192
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mLogCfgData:Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugLogConfig;->fgFunc:I

    .line 193
    goto :goto_0

    .line 196
    :pswitch_6
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v2, :cond_1

    .line 198
    const/4 v0, 0x1

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Xhxz:I

    .line 203
    goto :goto_0

    .line 206
    :pswitch_7
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v2, :cond_2

    .line 208
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Xhxz:I

    .line 212
    goto :goto_0

    .line 215
    :pswitch_8
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v2, :cond_3

    .line 217
    const/4 v0, 0x1

    .line 218
    goto :goto_0

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Sdjy:I

    .line 221
    goto :goto_0

    .line 224
    :pswitch_9
    const/4 v0, 0x0

    .line 225
    goto :goto_0

    .line 162
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
    .line 153
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 157
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->ShowItem(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mbSaveScr:Z

    if-nez v0, :cond_0

    .line 87
    const/16 v0, 0x3c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 89
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mbSaveScr:Z

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetAdt(Lcom/lgb/canmodule/CanDataInfo$PeugAdt;)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Update:I

    .line 77
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->LayoutUI()V

    .line 81
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 238
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemDriveInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCheckInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 257
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemWarnInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 261
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemFuncInfo:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 265
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemCruiseSpeed:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 269
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemSpeedLimit:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 273
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemMemTab:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 277
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarInfoActivity;->mItemKeySet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 238
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
    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->ResetData(Z)V

    .line 354
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 304
    :pswitch_0
    const-class v1, Lcom/ts/can/psa/CanPSACarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 308
    :pswitch_1
    const-class v1, Lcom/ts/can/psa/CanPSACarSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 312
    :pswitch_2
    const-class v1, Lcom/ts/can/psa/CanPSADriveInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 316
    :pswitch_3
    const-class v1, Lcom/ts/can/psa/CanPSACheckInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 320
    :pswitch_4
    const-class v1, Lcom/ts/can/psa/CanPSAWarnInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 324
    :pswitch_5
    const-class v1, Lcom/ts/can/psa/CanPSAFuncInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 328
    :pswitch_6
    const-class v1, Lcom/ts/can/psa/CanPSACruiseSpeedActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 332
    :pswitch_7
    const-class v1, Lcom/ts/can/psa/CanPSASpeedLimitActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 336
    :pswitch_8
    const-class v1, Lcom/ts/can/psa/CanPSAMemTabActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 340
    :pswitch_9
    const-class v1, Lcom/ts/can/psa/CanPSAKeySetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 300
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/ts/can/psa/CanPSABaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->InitUI()V

    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 106
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onResume()V

    .line 95
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->ResetData(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarInfoActivity;->QueryData()V

    .line 99
    return-void
.end method
