.class public Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGeelyBoySetOtherActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_LANGUAGE:I = 0x0

.field private static final ITEM_MODE:I = 0x1

.field private static mLanguageArray:[I

.field private static mModeArray:[Ljava/lang/String;


# instance fields
.field private mItemLanguage:Lcom/ts/canview/CanItemPopupList;

.field private mItemMode:Lcom/ts/canview/CanItemPopupList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 22
    sget v2, Lcom/ts/MainUI/R$string;->can_lang_cn:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 23
    sget v2, Lcom/ts/MainUI/R$string;->can_lang_en:I

    aput v2, v0, v1

    .line 21
    sput-object v0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mLanguageArray:[I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;-><init>()V

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    .line 13
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_geely_boy_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mModeArray:[Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 60
    .local v0, "manager":Lcom/ts/canview/CanScrollList;
    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v2, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mLanguageArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mItemLanguage:Lcom/ts/canview/CanItemPopupList;

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_mode:I

    sget-object v2, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mModeArray:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mItemMode:Lcom/ts/canview/CanItemPopupList;

    .line 62
    return-void
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 83
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarQuery(II)V

    .line 84
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GeelyBoyGetInfo(Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Update:I

    invoke-static {v0}, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Update:I

    .line 74
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mItemLanguage:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Lang:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mItemMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetOtherActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Dzzlmsxz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 79
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
