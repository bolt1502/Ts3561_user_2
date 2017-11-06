.class public Lcom/ts/can/ford/CanFordLangSetActivity;
.super Lcom/ts/can/ford/CanFordBaseActivity;
.source "CanFordLangSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_LANGSET:I = 0x1

.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanFordLangSetActivity"

.field private static final mLangArr:[I


# instance fields
.field private mItemLangSet:Lcom/ts/canview/CanItemPopupList;

.field private mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x1b

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 30
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 34
    sget v2, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->lang_france_us:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->lang_espanol_us:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->lang_pyccknn:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 40
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 41
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 42
    sget v2, Lcom/ts/MainUI/R$string;->lang_polski:I

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 43
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 44
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 45
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 46
    sget v2, Lcom/ts/MainUI/R$string;->lang_svenska:I

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 47
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 48
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 49
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 50
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 51
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues_brasil:I

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 52
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 53
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 54
    sget v2, Lcom/ts/MainUI/R$string;->can_car_null:I

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 55
    sget v2, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 56
    sget v2, Lcom/ts/MainUI/R$string;->lang_cn_ft:I

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangArr:[I

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/ford/CanFordBaseActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordCarLang;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    .line 18
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 199
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 200
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 201
    iget-object v1, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 204
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 172
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 173
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 174
    iget-object v1, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 176
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 181
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 182
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 183
    iget-object v1, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 185
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 191
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 192
    iget-object v1, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 194
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_car_lang:I

    sget-object v1, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/ford/CanFordLangSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mItemLangSet:Lcom/ts/canview/CanItemPopupList;

    .line 124
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordLangSetActivity;->LayoutUI()V

    .line 126
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_0
    invoke-static {v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_0
    const/4 v0, 0x1

    .line 145
    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 136
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->ShowItem(I)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 98
    const/16 v0, 0x27

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordQuery(II)V

    .line 99
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetLang(Lcom/lgb/canmodule/CanDataInfo$FordCarLang;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordCarLang;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FordCarLang;->Update:I

    invoke-static {v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$FordCarLang;->Update:I

    .line 90
    iget-object v0, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mItemLangSet:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$FordCarLang;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FordCarLang;->Lang:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 94
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/ts/can/ford/CanFordLangSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 159
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/ford/CanFordLangSetActivity;->mItemLangSet:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->ResetData(Z)V

    .line 228
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/ts/can/ford/CanFordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordLangSetActivity;->InitUI()V

    .line 80
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    const/16 v0, 0xf

    if-eq p2, v0, :cond_0

    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    const/16 v0, 0x12

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    .line 238
    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    .line 242
    const/16 v0, 0xa4

    add-int/lit8 v1, p2, 0x2

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->FordCarSet(II)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 116
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/ts/can/ford/CanFordBaseActivity;->onResume()V

    .line 105
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/ford/CanFordLangSetActivity;->ResetData(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordLangSetActivity;->QueryData()V

    .line 109
    return-void
.end method
