.class public Lcom/ts/can/gm/comm/CanGMSetLanguageActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSetLanguageActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_LANGUAGE:I


# instance fields
.field private mLangArray:[I

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 18
    sget v2, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 19
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 20
    sget v2, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 21
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 22
    sget v2, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 23
    sget v2, Lcom/ts/MainUI/R$string;->lang_svenska:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 24
    sget v2, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 25
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 26
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 27
    sget v2, Lcom/ts/MainUI/R$string;->lang_norsk:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 28
    sget v2, Lcom/ts/MainUI/R$string;->lang_suomi:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 29
    sget v2, Lcom/ts/MainUI/R$string;->lang_dansk:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 30
    sget v2, Lcom/ts/MainUI/R$string;->lang_polski:I

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->lang_arab:I

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->lang_pyccknn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLanguageActivity;->mLangArray:[I

    .line 11
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLanguageActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 50
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLanguageActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetLanguageActivity;->mLangArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    .line 51
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-static {p2}, Lcom/lgb/canmodule/CanJni;->GMLangCtrl(I)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
