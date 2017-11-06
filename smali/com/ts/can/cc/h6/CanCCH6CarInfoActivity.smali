.class public Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCCH6CarInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_CAR_TYPE:I = 0x0

.field private static final ITEM_DD_DELAY:I = 0x1

.field private static final ITEM_HJ_DELAY:I = 0x2

.field private static final ITEM_HRLTS:I = 0x5

.field private static final ITEM_JD_SETUP:I = 0x3

.field private static final ITEM_LANGUAGE:I = 0x8

.field private static final ITEM_MAX:I = 0x8

.field private static final ITEM_MIN:I = 0x0

.field private static final ITEM_TGZT:I = 0x7

.field private static final ITEM_YLGXCGQ:I = 0x4

.field private static final ITEM_YLSS:I = 0x6

.field private static final mHrltsArrays:[I

.field private static final mLanguageArrays:[I

.field private static final mTgztArrays:[I

.field private static final mYlgxcgqArrays:[I

.field private static final mYlssArrays:[I


# instance fields
.field private mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

.field private mCarTypeArrays:[Ljava/lang/String;

.field private mCarTypeItem:Lcom/ts/canview/CanItemCarType;

.field private mDDDelayArrays:[Ljava/lang/String;

.field private mDDDelayItem:Lcom/ts/canview/CanItemPopupList;

.field private mHJDelayArrays:[Ljava/lang/String;

.field private mHJDelayItem:Lcom/ts/canview/CanItemPopupList;

.field private mHrltsItem:Lcom/ts/canview/CanItemPopupList;

.field private mJDSetupArrays:[Ljava/lang/String;

.field private mJDSetupItem:Lcom/ts/canview/CanItemPopupList;

.field private mLanguageItem:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mTgztItem:Lcom/ts/canview/CanItemPopupList;

.field private mYlgxcgqItem:Lcom/ts/canview/CanItemPopupList;

.field private mYlssItem:Lcom/ts/canview/CanItemPopupList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-array v0, v5, [I

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_yz_mode:I

    aput v1, v0, v3

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_oz_mode:I

    aput v1, v0, v4

    .line 53
    sput-object v0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlgxcgqArrays:[I

    .line 58
    new-array v0, v5, [I

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_hr:I

    aput v1, v0, v3

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_lt:I

    aput v1, v0, v4

    .line 58
    sput-object v0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHrltsArrays:[I

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjd:I

    aput v1, v0, v4

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_cdzj:I

    aput v1, v0, v5

    const/4 v1, 0x3

    .line 67
    sget v2, Lcom/ts/MainUI/R$string;->can_cdjg:I

    aput v2, v0, v1

    .line 63
    sput-object v0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlssArrays:[I

    .line 70
    new-array v0, v5, [I

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v4

    .line 70
    sput-object v0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mTgztArrays:[I

    .line 75
    new-array v0, v5, [I

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_lang_cn:I

    aput v1, v0, v3

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_lang_en:I

    aput v1, v0, v4

    .line 75
    sput-object v0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mLanguageArrays:[I

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    .line 19
    return-void
.end method

.method private InitUI()V
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 100
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    iget-object v2, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarTypeArrays:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemCarType(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarTypeItem:Lcom/ts/canview/CanItemCarType;

    .line 101
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cch6_dingdeng_delaytime:I

    iget-object v2, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mDDDelayArrays:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mDDDelayItem:Lcom/ts/canview/CanItemPopupList;

    .line 102
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cch6_gensuihuijia_delaytime:I

    iget-object v2, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHJDelayArrays:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHJDelayItem:Lcom/ts/canview/CanItemPopupList;

    .line 103
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cch6_jiedian_setup:I

    iget-object v2, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mJDSetupArrays:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mJDSetupItem:Lcom/ts/canview/CanItemPopupList;

    .line 104
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_ylgxcgq:I

    sget-object v2, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlgxcgqArrays:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlgxcgqItem:Lcom/ts/canview/CanItemPopupList;

    .line 105
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_hrlts:I

    sget-object v2, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHrltsArrays:[I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHrltsItem:Lcom/ts/canview/CanItemPopupList;

    .line 106
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_ylss:I

    sget-object v2, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlssArrays:[I

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlssItem:Lcom/ts/canview/CanItemPopupList;

    .line 107
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_h6_coupe_tgzt:I

    sget-object v2, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mTgztArrays:[I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mTgztItem:Lcom/ts/canview/CanItemPopupList;

    .line 108
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v2, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mLanguageArrays:[I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mLanguageItem:Lcom/ts/canview/CanItemPopupList;

    .line 110
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarTypeItem:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 111
    return-void
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 127
    return-void

    .line 125
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->ShowItem(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->CCH6GetCarSet(Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Update:I

    .line 159
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mDDDelayItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Ddyssjsd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHJDelayItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Gshjyssj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mJDSetupItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Jdsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 163
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlgxcgqItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Ylgxcgqsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 164
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHrltsItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Hrlts:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 165
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlssItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Ylss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 166
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mTgztItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Tcsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 167
    iget-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mLanguageItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CcH6CarInfo;->Lang:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 171
    :cond_1
    return-void
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    .local v0, "show":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_1
    return-void

    .line 130
    .end local v0    # "show":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    .restart local v0    # "show":Z
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlgxcgqItem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_1

    .line 136
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHrltsItem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_1

    .line 139
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mYlssItem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_1

    .line 142
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mTgztItem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_1

    .line 145
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mLanguageItem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->ResetData(Z)V

    .line 216
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->setContentView(I)V

    .line 86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_cch6_dd_delay_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mDDDelayArrays:[Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_cch6_hj_delay_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mHJDelayArrays:[Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_cch6_jd_setup_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mJDSetupArrays:[Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_h6_car_type_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->mCarTypeArrays:[Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->InitUI()V

    .line 95
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 181
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 183
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 186
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 192
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 195
    :pswitch_4
    const/16 v0, 0x15

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 198
    :pswitch_5
    const/16 v0, 0x16

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 201
    :pswitch_6
    const/16 v0, 0x30

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 204
    :pswitch_7
    const/16 v0, 0x40

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->CCH6CarSet(II)V

    goto :goto_0

    .line 207
    :pswitch_8
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 208
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method protected onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 176
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 177
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 116
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 117
    invoke-direct {p0, v1}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->ResetData(Z)V

    .line 118
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->CCH6Query(II)V

    .line 119
    const/4 v0, 0x4

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->CCH6Query(II)V

    .line 120
    invoke-direct {p0}, Lcom/ts/can/cc/h6/CanCCH6CarInfoActivity;->LayoutUI()V

    .line 121
    return-void
.end method
