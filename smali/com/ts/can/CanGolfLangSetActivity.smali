.class public Lcom/ts/can/CanGolfLangSetActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfLangSetActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field protected static final ITEM_LANG_SET:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "CanGolfLangSetActivity"

.field protected static final mLangIndex:[I


# instance fields
.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

.field protected mLangVal:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 18
    const/16 v0, 0xf

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v3, v0, v3

    aput v4, v0, v4

    aput v5, v0, v5

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 19
    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1d

    aput v2, v0, v1

    .line 18
    sput-object v0, Lcom/ts/can/CanGolfLangSetActivity;->mLangIndex:[I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    .line 26
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 27
    sget v2, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 28
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 29
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 30
    sget v2, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 34
    sget v2, Lcom/ts/MainUI/R$string;->lang_polski:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->lang_cestina:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->lang_svenska:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->lang_pyccknn:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 40
    sget v2, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 41
    sget v2, Lcom/ts/MainUI/R$string;->lang_norsk:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangVal:[I

    .line 14
    return-void
.end method


# virtual methods
.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetLang(Lcom/lgb/canmodule/CanDataInfo$GolfData;)V

    .line 89
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfData;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfLangSetActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfData;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfLangSetActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$GolfData;->Update:I

    .line 97
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ts/can/CanGolfLangSetActivity;->mLangIndex:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 114
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 99
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangData:Lcom/lgb/canmodule/CanDataInfo$GolfData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfData;->Data:I

    sget-object v2, Lcom/ts/can/CanGolfLangSetActivity;->mLangIndex:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_4

    .line 101
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_1

    .line 97
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_5
    if-nez p1, :cond_2

    .line 110
    const/16 v1, 0x40

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    goto :goto_1
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfLangSetActivity;->ResetData(Z)V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfLangSetActivity;->setContentView(I)V

    .line 50
    new-instance v1, Lcom/ts/canview/CanItemPopupList;

    sget v2, Lcom/ts/MainUI/R$string;->can_lang_set:I

    iget-object v3, p0, Lcom/ts/can/CanGolfLangSetActivity;->mLangVal:[I

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 51
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 53
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 54
    .local v0, "sl":Lcom/ts/canview/CanScrollList;
    iget-object v1, p0, Lcom/ts/can/CanGolfLangSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 63
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 65
    const/4 v0, 0x0

    sget-object v1, Lcom/ts/can/CanGolfLangSetActivity;->mLangIndex:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 74
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfLangSetActivity;->ResetData(Z)V

    .line 84
    return-void
.end method
