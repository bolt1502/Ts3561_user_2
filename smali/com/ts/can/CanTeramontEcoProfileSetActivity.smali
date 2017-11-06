.class public Lcom/ts/can/CanTeramontEcoProfileSetActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanTeramontEcoProfileSetActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ECO_PROFILE:Ljava/lang/String; = "eco_profile"

.field private static final ITEM_AIR:I = 0x2

.field private static final ITEM_ENGINE:I = 0x1

.field private static final ITEM_FRONT_LIGHT:I = 0x4

.field private static final ITEM_RESET:I = 0x3

.field private static final ITEM_STEERING:I = 0x0

.field public static final PROFILE_ECO:I = 0x0

.field public static final PROFILE_INDIVIDUAL:I = 0x3

.field public static final PROFILE_NORMAL:I = 0x1

.field public static final PROFILE_SPORT:I = 0x2


# instance fields
.field private mAirArray:[I

.field private mAirItem:Lcom/ts/canview/CanItemPopupList;

.field private mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

.field private mEcoProfile:I

.field private mEngineArray:[I

.field private mEngineItem:Lcom/ts/canview/CanItemPopupList;

.field private mFrontLightArray:[I

.field private mFrontLightItem:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSteeringArray:[I

.field private mSteeringItem:Lcom/ts/canview/CanItemPopupList;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 36
    new-array v0, v5, [I

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_eco:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEngineArray:[I

    .line 40
    new-array v0, v5, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_eco:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mFrontLightArray:[I

    .line 45
    new-array v0, v4, [I

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mSteeringArray:[I

    .line 49
    new-array v0, v4, [I

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_eco:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mAirArray:[I

    .line 55
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    .line 15
    return-void
.end method

.method private initCommonItems(III)V
    .locals 7
    .param p1, "steering"    # I
    .param p2, "engine"    # I
    .param p3, "air"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 126
    iget-object v3, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_steering:I

    invoke-virtual {v3, v4, v5, v5, v6}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v2

    .line 127
    .local v2, "steeringItem":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v2, p1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 129
    iget-object v3, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_engine:I

    invoke-virtual {v3, v4, v5, v5, v6}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v1

    .line 130
    .local v1, "engineItem":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v1, p2}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 132
    iget-object v3, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v4, Lcom/ts/MainUI/R$string;->can_dfqc_ac:I

    invoke-virtual {v3, v4, v5, v5, v6}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    .line 133
    .local v0, "airItem":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 134
    return-void
.end method

.method private initEcoIndividual()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_steering:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mSteeringArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mSteeringItem:Lcom/ts/canview/CanItemPopupList;

    .line 119
    iget-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_engine:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEngineArray:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEngineItem:Lcom/ts/canview/CanItemPopupList;

    .line 120
    iget-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_ac:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mAirArray:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mAirItem:Lcom/ts/canview/CanItemPopupList;

    .line 121
    iget-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_front_light:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mFrontLightArray:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mFrontLightItem:Lcom/ts/canview/CanItemPopupList;

    .line 122
    iget-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_model_reset:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemFsSetList(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTextBtnList;

    .line 123
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 103
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eco_profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    .line 105
    iget v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    if-nez v0, :cond_1

    .line 106
    sget v0, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    sget v1, Lcom/ts/MainUI/R$string;->can_eco:I

    sget v2, Lcom/ts/MainUI/R$string;->can_eco:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->initCommonItems(III)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 108
    sget v0, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    sget v2, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->initCommonItems(III)V

    goto :goto_0

    .line 109
    :cond_2
    iget v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_sport:I

    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    sget v2, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->initCommonItems(III)V

    goto :goto_0

    .line 111
    :cond_3
    iget v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->initEcoIndividual()V

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    const/16 v0, 0x40

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 164
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v0, 0x0

    .line 138
    iget v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEcoProfile:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetSeatDriveProfile(Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;)V

    .line 143
    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iput v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    .line 149
    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mSteeringItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->IndSteering:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 150
    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mEngineItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->IndEngine:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 151
    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mAirItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->IndClimate:I

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 152
    iget-object v0, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mFrontLightItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanTeramontEcoProfileSetActivity;->mDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->FrontLight:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 82
    :pswitch_0
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x1

    sget v3, Lcom/ts/MainUI/R$string;->can_teramont_reset_notice:I

    new-instance v4, Lcom/ts/can/CanTeramontEcoProfileSetActivity$1;

    invoke-direct {v4, p0}, Lcom/ts/can/CanTeramontEcoProfileSetActivity$1;-><init>(Lcom/ts/can/CanTeramontEcoProfileSetActivity;)V

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    const/16 v0, 0xd1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 65
    :pswitch_2
    const/16 v0, 0xd2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 68
    :pswitch_3
    const/16 v1, 0xd3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 71
    :pswitch_4
    const/16 v0, 0xd5

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
