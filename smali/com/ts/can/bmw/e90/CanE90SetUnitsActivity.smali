.class public Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanE90SetUnitsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CONSUMP:I = 0x4

.field public static final ITEM_LANG:I = 0x5

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RANGE:I = 0x3

.field public static final ITEM_TEMP:I = 0x2

.field public static final ITEM_TIME_FMT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanE90SetUnitsActivity"


# instance fields
.field protected mConsumpArr:[Ljava/lang/String;

.field protected mItemConsump:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mItemRange:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTemp:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

.field protected mLangArr:[I

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mRangeArr:[Ljava/lang/String;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

.field protected mTempArr:[Ljava/lang/String;

.field protected mTimeFmtArr:[I

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 34
    new-array v0, v4, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can12_hours:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can24_hours:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mTimeFmtArr:[I

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    .line 41
    const-string v1, "\u2103"

    aput-object v1, v0, v2

    .line 42
    const-string v1, "\u2109"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mTempArr:[Ljava/lang/String;

    .line 46
    new-array v0, v6, [Ljava/lang/String;

    .line 47
    const-string v1, "l/100km"

    aput-object v1, v0, v2

    .line 48
    const-string v1, "mpg(US)"

    aput-object v1, v0, v3

    .line 49
    const-string v1, "mpg(UK)"

    aput-object v1, v0, v4

    .line 50
    const-string v1, "km/l"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mConsumpArr:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    .line 55
    const-string v1, "km"

    aput-object v1, v0, v2

    .line 56
    const-string v1, "mls"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mRangeArr:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v1, v0, v2

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v1, v0, v3

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v1, v0, v4

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v1, v0, v5

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v1, v0, v6

    const/4 v1, 0x5

    .line 66
    sget v2, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mLangArr:[I

    .line 78
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;-><init>()V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 188
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 190
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 192
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 198
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 200
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 205
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 206
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 208
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 142
    sget v0, Lcom/ts/MainUI/R$string;->can_time_format:I

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mTimeFmtArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

    .line 143
    sget v0, Lcom/ts/MainUI/R$string;->can_temperature:I

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mTempArr:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemTemp:Lcom/ts/canview/CanItemPopupList;

    .line 144
    sget v0, Lcom/ts/MainUI/R$string;->can_distance_l_c:I

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mRangeArr:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemRange:Lcom/ts/canview/CanItemPopupList;

    .line 145
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mConsumpArr:[Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemConsump:Lcom/ts/canview/CanItemPopupList;

    .line 146
    sget v0, Lcom/ts/MainUI/R$string;->can_language:I

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mLangArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 148
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 169
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 158
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->ShowItem(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->E90GetSetData(Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->Update:I

    .line 100
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemTimeFmt:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->TimeFormat:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemTemp:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->DWTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemRange:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->DWJl:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemConsump:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->DWConsumption:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BMW_Settings;->Lang:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 109
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->IsHaveItem(I)Z

    move-result v0

    .line 184
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->ResetData(Z)V

    .line 230
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->InitUI()V

    .line 90
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 239
    :pswitch_0
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->E90CarSet(II)V

    goto :goto_0

    .line 243
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->E90CarSet(II)V

    goto :goto_0

    .line 247
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->E90CarSet(II)V

    goto :goto_0

    .line 251
    :pswitch_3
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->E90CarSet(II)V

    goto :goto_0

    .line 255
    :pswitch_4
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->E90CarSet(II)V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 133
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 135
    const-string v0, "CanE90SetUnitsActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 120
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->ResetData(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;->QueryData()V

    .line 124
    const-string v0, "CanE90SetUnitsActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method
