.class public Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanZhH3CarInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ITEM_DMJS:I = 0x3

.field private static final ITEM_HSJZDZD:I = 0x6

.field private static final ITEM_JSSS:I = 0x5

.field private static final ITEM_LANGUAGE:I = 0x7

.field private static final ITEM_LSSS:I = 0x4

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x0

.field private static final ITEM_ZDCS:I = 0x2

.field private static final ITEM_ZDJS:I = 0x1

.field private static final ITEM_ZDLS:I

.field private static final mLanguageArrays:[I


# instance fields
.field private mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

.field private mDmjsItem:Lcom/ts/canview/CanItemSwitchList;

.field private mHskzdzdItem:Lcom/ts/canview/CanItemSwitchList;

.field private mJsssItem:Lcom/ts/canview/CanItemSwitchList;

.field private mLanguageItem:Lcom/ts/canview/CanItemPopupList;

.field private mLsssItem:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mZdcsItem:Lcom/ts/canview/CanItemSwitchList;

.field private mZdjsItem:Lcom/ts/canview/CanItemSwitchList;

.field private mZdlsItem:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 45
    sget v2, Lcom/ts/MainUI/R$string;->can_lang_cn:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 46
    sget v2, Lcom/ts/MainUI/R$string;->can_lang_en:I

    aput v2, v0, v1

    .line 44
    sput-object v0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLanguageArrays:[I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    .line 18
    return-void
.end method

.method private InitUI()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 63
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_auto_lock:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdlsItem:Lcom/ts/canview/CanItemSwitchList;

    .line 64
    sget v0, Lcom/ts/MainUI/R$string;->can_zdjs:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdjsItem:Lcom/ts/canview/CanItemSwitchList;

    .line 65
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_key:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdcsItem:Lcom/ts/canview/CanItemSwitchList;

    .line 66
    sget v0, Lcom/ts/MainUI/R$string;->can_lock_dmjs:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mDmjsItem:Lcom/ts/canview/CanItemSwitchList;

    .line 67
    sget v0, Lcom/ts/MainUI/R$string;->can_lock_lsss:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLsssItem:Lcom/ts/canview/CanItemSwitchList;

    .line 68
    sget v0, Lcom/ts/MainUI/R$string;->can_lock_jsss:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mJsssItem:Lcom/ts/canview/CanItemSwitchList;

    .line 69
    sget v0, Lcom/ts/MainUI/R$string;->can_zdhsjzd:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mHskzdzdItem:Lcom/ts/canview/CanItemSwitchList;

    .line 70
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v2, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLanguageArrays:[I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLanguageItem:Lcom/ts/canview/CanItemPopupList;

    .line 72
    return-void
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 97
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->ShowItem(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZhH3GetCarSet(Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;)V

    .line 185
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Update:I

    .line 191
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdlsItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Zdls:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 192
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdjsItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Zdjs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 193
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdcsItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Zdcs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 195
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mDmjsItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Dmjs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 196
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLsssItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Lsss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 197
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mJsssItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Jsss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 198
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mHskzdzdItem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Hsjzdzd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLanguageItem:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Lang:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 203
    :cond_1
    return-void
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 146
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdlsItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdjsItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mZdcsItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mDmjsItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLsssItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mJsssItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mHskzdzdItem:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 177
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mLanguageItem:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 79
    iget-object v1, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 81
    return-object v0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    invoke-static {v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 106
    :pswitch_0
    const/4 v0, 0x1

    .line 107
    goto :goto_0

    .line 110
    :pswitch_1
    const/4 v0, 0x1

    .line 111
    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v0, 0x1

    .line 115
    goto :goto_0

    .line 118
    :pswitch_3
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 122
    :pswitch_4
    const/4 v0, 0x1

    .line 123
    goto :goto_0

    .line 126
    :pswitch_5
    const/4 v0, 0x1

    .line 127
    goto :goto_0

    .line 130
    :pswitch_6
    const/4 v0, 0x1

    .line 131
    goto :goto_0

    .line 134
    :pswitch_7
    const/4 v0, 0x1

    .line 135
    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public UserAll()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->ResetData(Z)V

    .line 265
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Zdls:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 234
    :pswitch_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Zdjs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 238
    :pswitch_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Zdcs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 242
    :pswitch_3
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Dmjs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 246
    :pswitch_4
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Lsss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 250
    :pswitch_5
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Jsss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 254
    :pswitch_6
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZhCarInfo;->Hsjzdzd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->setContentView(I)V

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->InitUI()V

    .line 58
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ZhH3CarSet(II)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 208
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->ResetData(Z)V

    .line 89
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZhH3Query(I)V

    .line 90
    invoke-direct {p0}, Lcom/ts/can/zh/h3/CanZhH3CarInfoActivity;->LayoutUI()V

    .line 91
    return-void
.end method
