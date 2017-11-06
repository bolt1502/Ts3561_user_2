.class public Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanCadillacXt5CarStatusActivity.java"


# instance fields
.field private mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

.field private mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

.field private mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

.field private mItemBatteryV:Lcom/ts/canview/CanItemTitleValList;

.field private mItemFdjTemp:Lcom/ts/canview/CanItemTitleValList;

.field private mItemFdjZs:Lcom/ts/canview/CanItemTitleValList;

.field private mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

.field private mItemSpeed:Lcom/ts/canview/CanItemTitleValList;

.field private mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

.field private mItemTotalMile:Lcom/ts/canview/CanItemTitleValList;

.field private mItemYlxh:Lcom/ts/canview/CanItemTitleValList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

.field private mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

.field private mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    .line 34
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_Mile;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    .line 19
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 53
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_rpm:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemFdjZs:Lcom/ts/canview/CanItemTitleValList;

    .line 54
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_rpm_temp:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemFdjTemp:Lcom/ts/canview/CanItemTitleValList;

    .line 55
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_pjyh:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

    .line 56
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 57
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ssyh:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

    .line 58
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ylxh:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemYlxh:Lcom/ts/canview/CanItemTitleValList;

    .line 60
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_total_mile:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemTotalMile:Lcom/ts/canview/CanItemTitleValList;

    .line 61
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_battery_v:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemBatteryV:Lcom/ts/canview/CanItemTitleValList;

    .line 62
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_speed:I

    move v3, v2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemSpeed:Lcom/ts/canview/CanItemTitleValList;

    .line 63
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarFdjzs(Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarFdjWatTmp(Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarOilMsg(Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarMile(Lcom/lgb/canmodule/CanDataInfo$GM_Mile;)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarBatMsg(Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GetSpeed(Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;->Update:I

    .line 80
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemFdjZs:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d r/s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjZsData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_FdjZs;->Speed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;->Update:I

    .line 90
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemFdjTemp:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d \u00b0C"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mFdjTempData:Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_FdjWaterTmp;->Temp:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;->Update:I

    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemPjyh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%.1f L/H"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;->Pjyh:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemSsyh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%.1f L/H"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;->Ssyh:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemYlxh:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d KM"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mOilData:Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_OilMsg;->Ylxh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Mile;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Mile;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Mile;->Update:I

    .line 113
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemTotalMile:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d KM"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mMileData:Lcom/lgb/canmodule/CanDataInfo$GM_Mile;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_Mile;->TotalMile:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;->Update:I

    .line 123
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemBatteryV:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%.1f V"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mBatteryData:Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_BAT_MSG;->BatV:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;->Update:I

    .line 133
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mItemSpeed:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, "%d km/h"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;->mSpeedData:Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_Speed;->Speed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 137
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    return-void
.end method
