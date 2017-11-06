.class public Lcom/ts/can/CanTeramontDriveProfileSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanTeramontDriveProfileSetActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BTN_ECO:I = 0xa

.field private static final BTN_INDIVIDUAL:I = 0xd

.field private static final BTN_NORMAL:I = 0xb

.field private static final BTN_SPORT:I = 0xc

.field public static final DRIVE_PATTER:Ljava/lang/String; = "drive_pattern"

.field public static final DRIVE_PATTER_CROSS:I = 0x2

.field public static final DRIVE_PATTER_CROSS_IN:I = 0x3

.field public static final DRIVE_PATTER_ECO:I = 0x1

.field public static final DRIVE_PATTER_SNOW:I = 0x0

.field private static final ITEM_AIR:I = 0x3

.field private static final ITEM_ENGINE:I = 0x1

.field private static final ITEM_PDQB:I = 0x5

.field private static final ITEM_RESET:I = 0x7

.field private static final ITEM_STEERING:I = 0x0

.field private static final ITEM_WHEEL:I = 0x2

.field private static final ITEM_XPFZ:I = 0x4

.field private static final ITEM_ZCFZ:I = 0x6


# instance fields
.field private mAirItem:Lcom/ts/canview/CanItemPopupList;

.field private mCrossArray:[I

.field private mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

.field private mDrivePattern:I

.field private mDrvieProfile:[Lcom/ts/other/CustomImgView;

.field private mEcoArray:[I

.field private mEngineItem:Lcom/ts/canview/CanItemPopupList;

.field private mListManager:Lcom/ts/canview/CanScrollList;

.field private mPdqbItem:Lcom/ts/canview/CanItemSwitchList;

.field private mProfile:[Landroid/widget/TextView;

.field private mProfileType:I

.field private mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

.field private mSportArray:[I

.field private mSteeringItem:Lcom/ts/canview/CanItemPopupList;

.field private mWheelItem:Lcom/ts/canview/CanItemPopupList;

.field private mXpfzItem:Lcom/ts/canview/CanItemSwitchList;

.field private mZcfzItem:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 61
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    .line 62
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    .line 66
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_sport:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSportArray:[I

    .line 67
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_cross:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossArray:[I

    .line 68
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_eco:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mEcoArray:[I

    .line 70
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    .line 71
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    .line 28
    return-void
.end method

.method private InitUI()V
    .locals 4

    .prologue
    .line 104
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->initEcoItems()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    .line 109
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    if-nez v0, :cond_2

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_sport:I

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_xuedi:I

    const/4 v2, 0x0

    sget v3, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->initCommonItems(IIZI)V

    goto :goto_0

    .line 111
    :cond_2
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 112
    invoke-direct {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->initCrossItems()V

    goto :goto_0

    .line 113
    :cond_3
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->initCrossInItems()V

    goto :goto_0
.end method

.method private initCommonItems(IIZI)V
    .locals 8
    .param p1, "steering"    # I
    .param p2, "engine"    # I
    .param p3, "showWheel"    # Z
    .param p4, "air"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 154
    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v5, Lcom/ts/MainUI/R$string;->can_teramont_steering:I

    invoke-virtual {v4, v5, v6, v6, v7}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v2

    .line 155
    .local v2, "steeringItem":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v2, p1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 157
    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v5, Lcom/ts/MainUI/R$string;->can_teramont_engine:I

    invoke-virtual {v4, v5, v6, v6, v7}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v1

    .line 158
    .local v1, "engineItem":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v1, p2}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 160
    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v5, Lcom/ts/MainUI/R$string;->can_teramont_wheelengine:I

    invoke-virtual {v4, v5, v6, v6, v7}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v3

    .line 161
    .local v3, "wheelItem":Lcom/ts/canview/CanItemTitleValList;
    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_cross:I

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 162
    invoke-virtual {v3, p3}, Lcom/ts/canview/CanItemTitleValList;->ShowGone(Z)V

    .line 164
    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v5, Lcom/ts/MainUI/R$string;->can_dfqc_ac:I

    invoke-virtual {v4, v5, v6, v6, v7}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    .line 165
    .local v0, "airItem":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 166
    return-void
.end method

.method private initCrossInItems()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_steering:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSportArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSteeringItem:Lcom/ts/canview/CanItemPopupList;

    .line 183
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_engine:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossArray:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mEngineItem:Lcom/ts/canview/CanItemPopupList;

    .line 184
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_wheelengine:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossArray:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mWheelItem:Lcom/ts/canview/CanItemPopupList;

    .line 185
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_ac:I

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mEcoArray:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mAirItem:Lcom/ts/canview/CanItemPopupList;

    .line 186
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_xpfzxt:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mXpfzItem:Lcom/ts/canview/CanItemSwitchList;

    .line 187
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_pdqbfz:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mPdqbItem:Lcom/ts/canview/CanItemSwitchList;

    .line 188
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_zcfz:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mZcfzItem:Lcom/ts/canview/CanItemSwitchList;

    .line 189
    iget-object v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_teramont_model_reset:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemFsSetList(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTextBtnList;

    .line 190
    return-void
.end method

.method private initCrossItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 169
    sget v3, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_cross:I

    const/4 v5, 0x1

    sget v6, Lcom/ts/MainUI/R$string;->can_mode_normal:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->initCommonItems(IIZI)V

    .line 171
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_xpfzxt:I

    invoke-virtual {v3, v4, v7, v7, v8}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v1

    .line 172
    .local v1, "xpfzItem":Lcom/ts/canview/CanItemTitleValList;
    sget v3, Lcom/ts/MainUI/R$string;->can_teramont_open:I

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 174
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_pdqbfz:I

    invoke-virtual {v3, v4, v7, v7, v8}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    .line 175
    .local v0, "pdqbItem":Lcom/ts/canview/CanItemTitleValList;
    sget v3, Lcom/ts/MainUI/R$string;->can_teramont_open:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 177
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mListManager:Lcom/ts/canview/CanScrollList;

    sget v4, Lcom/ts/MainUI/R$string;->can_teramont_zcfz:I

    invoke-virtual {v3, v4, v7, v7, v8}, Lcom/ts/canview/CanScrollList;->addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v2

    .line 178
    .local v2, "zcfzItem":Lcom/ts/canview/CanItemTitleValList;
    sget v3, Lcom/ts/MainUI/R$string;->can_teramont_open:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 179
    return-void
.end method

.method private initEcoItems()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0xbe

    const/16 v8, 0xb8

    const/4 v7, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$array;->can_teramont_eco_array:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "ecoArray":[Ljava/lang/String;
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_golf_seat_drive_profile_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    .line 124
    .local v2, "manager":Lcom/ts/other/RelativeLayoutManager;
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/16 v4, 0x73

    const/16 v5, 0x96

    invoke-virtual {v2, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v4

    aput-object v4, v3, v7

    .line 125
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car01_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car01_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car01_dn:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 126
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    invoke-virtual {v3, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/16 v4, 0x13e

    const/16 v5, 0x96

    invoke-virtual {v2, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v4

    aput-object v4, v3, v10

    .line 130
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v10

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car02_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car02_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car02_dn:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 131
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v10

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v10

    invoke-virtual {v3, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/16 v4, 0x209

    const/16 v5, 0x96

    invoke-virtual {v2, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v4

    aput-object v4, v3, v11

    .line 135
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v11

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car03_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car03_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car03_dn:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 136
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v11

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v11

    invoke-virtual {v3, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v4, 0x3

    const/16 v5, 0x2d4

    const/16 v6, 0x96

    invoke-virtual {v2, v5, v6, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget v4, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car04_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car04_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_dzjcms_car04_dn:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/ts/other/CustomImgView;->setStateDrawable(III)V

    .line 141
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, p0}, Lcom/ts/other/CustomImgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 151
    return-void

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    mul-int/lit16 v4, v1, 0xcb

    add-int/lit8 v4, v4, 0x73

    const/16 v5, 0xc8

    invoke-virtual {v2, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v1

    .line 146
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mProfile:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private startEcoProfileSetActivity(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ts/can/CanTeramontEcoProfileSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "eco_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0, v2, v2}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->overridePendingTransition(II)V

    .line 330
    return-void
.end method


# virtual methods
.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 257
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 258
    const/16 v0, 0xb1

    invoke-static {v2, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    const/16 v0, 0xa0

    invoke-static {v2, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    goto :goto_0
.end method

.method protected ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 193
    iget v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    if-ne v5, v6, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    if-ne v5, v4, :cond_7

    .line 197
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    invoke-static {v5}, Lcom/lgb/canmodule/CanJni;->GolfGetSeatDriveProfile(Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;)V

    .line 199
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->UpdateOnce:I

    invoke-static {v5}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->i2b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    invoke-static {v5}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->i2b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    :cond_2
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iput v3, v5, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->Update:I

    .line 205
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSeatDriveProfile:Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;

    iget v2, v5, Lcom/lgb/canmodule/CanDataInfo$GolfSeatDriveProfile;->ProfileType:I

    .line 207
    .local v2, "type":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    array-length v5, v5

    if-lt v1, v5, :cond_3

    .line 210
    if-nez v2, :cond_4

    .line 212
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v4

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_4
    if-ne v2, v4, :cond_5

    .line 216
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0

    .line 218
    :cond_5
    if-ne v2, v6, :cond_6

    .line 220
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0

    .line 222
    :cond_6
    if-ne v2, v7, :cond_0

    .line 224
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrvieProfile:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    .end local v2    # "type":I
    :cond_7
    iget v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    if-ne v5, v7, :cond_0

    .line 234
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    invoke-static {v5}, Lcom/lgb/canmodule/CanJni;->TeramontGetCrossProfile(Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;)V

    .line 236
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->UpdateOnce:I

    invoke-static {v5}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->i2b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->Update:I

    invoke-static {v5}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->i2b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    :cond_8
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iput v3, v5, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->Update:I

    .line 242
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mSteeringItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v6, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossSteering:I

    invoke-virtual {v5, v6}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 243
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mEngineItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v6, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossEngine:I

    invoke-virtual {v5, v6}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 244
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mWheelItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v6, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossFourWheel:I

    invoke-virtual {v5, v6}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 245
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v0, v5, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossClimate:I

    .line 246
    .local v0, "air":I
    iget-object v5, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mAirItem:Lcom/ts/canview/CanItemPopupList;

    if-nez v0, :cond_9

    :goto_2
    invoke-virtual {v5, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 247
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mXpfzItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossDbs:I

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 248
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mPdqbItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossRampStart:I

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 249
    iget-object v3, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mZcfzItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v4, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossPbc:I

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 246
    goto :goto_2
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->ResetData(Z)V

    .line 335
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v2, 0xd0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    :pswitch_0
    return-void

    .line 288
    :pswitch_1
    const/16 v1, 0xe5

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossDbs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 291
    :pswitch_2
    const/16 v1, 0xe6

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossRampStart:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 294
    :pswitch_3
    const/16 v1, 0xe7

    iget-object v2, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mCrossProfile:Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfCrossDriveProfile;->CrossPbc:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 297
    :pswitch_4
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    sget v2, Lcom/ts/MainUI/R$string;->can_teramont_reset_notice:I

    new-instance v3, Lcom/ts/can/CanTeramontDriveProfileSetActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity$1;-><init>(Lcom/ts/can/CanTeramontDriveProfileSetActivity;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 307
    :pswitch_5
    invoke-static {v2, v5}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 308
    invoke-direct {p0, v3}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->startEcoProfileSetActivity(I)V

    goto :goto_0

    .line 311
    :pswitch_6
    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 312
    invoke-direct {p0, v4}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->startEcoProfileSetActivity(I)V

    goto :goto_0

    .line 315
    :pswitch_7
    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 316
    invoke-direct {p0, v5}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->startEcoProfileSetActivity(I)V

    goto :goto_0

    .line 319
    :pswitch_8
    invoke-static {v2, v6}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 320
    invoke-direct {p0, v6}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->startEcoProfileSetActivity(I)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "drive_pattern"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    .line 80
    iget v0, p0, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->mDrivePattern:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_golf_seat_drive_profile:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->setContentView(I)V

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->InitUI()V

    .line 87
    return-void

    .line 83
    :cond_0
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 268
    :pswitch_0
    const/16 v0, 0xe1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 271
    :pswitch_1
    const/16 v0, 0xe2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 274
    :pswitch_2
    const/16 v0, 0xe3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 277
    :pswitch_3
    const/16 v1, 0xe4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 100
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 92
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->ResetData(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/CanTeramontDriveProfileSetActivity;->QueryData()V

    .line 95
    return-void
.end method
