.class public Lcom/ts/can/gm/comm/CanGMSetConvActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGMSetConvActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DCHYSZDQD:I = 0x1

.field public static final ITEM_DDHSJQX:I = 0x5

.field public static final ITEM_DYJYWZ:I = 0x3

.field public static final ITEM_HSJZDZD:I = 0x6

.field public static final ITEM_JSYBLXC:I = 0x4

.field public static final ITEM_JSYGXSZ:I = 0x2

.field private static final ITEM_MAX:I = 0xa

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_MRB_DDHSJQX:I = 0x8

.field public static final ITEM_PDQBFZ:I = 0x9

.field public static final ITEM_REARTX:I = 0xa

.field public static final ITEM_ZDYS:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanGMCarInfoActivity"

.field private static final mMrbDchsjzdqxArr:[I

.field private static final mPdqbfzArr:[I


# instance fields
.field private mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

.field private mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

.field private mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJsygxhsz:Lcom/ts/canview/CanItemSwitchList;

.field private mItemMrbDchsjzdqx:Lcom/ts/canview/CanItemPopupList;

.field private mItemPdqbfz:Lcom/ts/canview/CanItemPopupList;

.field private mItemRearTx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZdys:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_ckhjsy:I

    aput v1, v0, v4

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_jiashiyuan:I

    aput v1, v0, v5

    const/4 v1, 0x3

    .line 58
    sget v2, Lcom/ts/MainUI/R$string;->can_chengk:I

    aput v2, v0, v1

    .line 53
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mMrbDchsjzdqxArr:[I

    .line 63
    new-array v0, v5, [I

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_bzzd:I

    aput v1, v0, v3

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_gjzd:I

    aput v1, v0, v4

    .line 62
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mPdqbfzArr:[I

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 283
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 284
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 285
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 287
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 293
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 294
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 295
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 297
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 157
    sget v0, Lcom/ts/MainUI/R$string;->can_dcyhszdqd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

    .line 158
    sget v0, Lcom/ts/MainUI/R$string;->can_personalization:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemJsygxhsz:Lcom/ts/canview/CanItemSwitchList;

    .line 159
    sget v0, Lcom/ts/MainUI/R$string;->can_dyjywz:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

    .line 160
    sget v0, Lcom/ts/MainUI/R$string;->can_jsyblxc:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

    .line 161
    sget v0, Lcom/ts/MainUI/R$string;->can_dchsjzdqx:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

    .line 162
    sget v0, Lcom/ts/MainUI/R$string;->can_zdhsjzd:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

    .line 163
    sget v0, Lcom/ts/MainUI/R$string;->can_zdys:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemZdys:Lcom/ts/canview/CanItemSwitchList;

    .line 164
    sget v0, Lcom/ts/MainUI/R$string;->can_rear_tx:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemRearTx:Lcom/ts/canview/CanItemSwitchList;

    .line 165
    sget v0, Lcom/ts/MainUI/R$string;->can_dchsjzdqx:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mMrbDchsjzdqxArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemMrbDchsjzdqx:Lcom/ts/canview/CanItemPopupList;

    .line 166
    sget v0, Lcom/ts/MainUI/R$string;->can_teramont_pdqbfz:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mPdqbfzArr:[I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemPopupList;

    .line 167
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->DCYHSZDQD:I

    .line 185
    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->PersonByDriver:I

    .line 189
    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->AutoMemRecall:I

    .line 193
    goto :goto_0

    .line 196
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->EasyExitSeat:I

    .line 197
    goto :goto_0

    .line 200
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->RevTiltMirror:I

    .line 201
    goto :goto_0

    .line 204
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->AutoMirrorFold:I

    .line 205
    goto :goto_0

    .line 208
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->ZDYX:I

    .line 209
    goto :goto_0

    .line 212
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->Pdqbfz:I

    .line 213
    goto :goto_0

    .line 216
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->RearTx:I

    .line 217
    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 176
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->ShowItem(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->GetSetData()V

    .line 84
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtConv(Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mAdtConvData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->Update:I

    .line 91
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->LayoutUI()V

    .line 92
    const/4 p1, 0x0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mbLayout:Z

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 108
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->DCYHSZDQD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemJsygxhsz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->PersonByDriver:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->AutoMemRecall:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->EasyExitSeat:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 112
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemMrbDchsjzdqx:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->RevTiltMirror:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->AutoMirrorFold:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemZdys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->ZDYX:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Pdqbfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemRearTx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->RearTx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 128
    :cond_4
    return-void

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->RevTiltMirror:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    goto :goto_0
.end method

.method protected ShowItem(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->IsHaveItem(I)Z

    move-result v0

    .line 231
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return-void

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemJsygxhsz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 250
    :pswitch_5
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemMrbDchsjzdqx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 261
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 265
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemZdys:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 269
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 273
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mItemRearTx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->ResetData(Z)V

    .line 375
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x9

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 305
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    :pswitch_0
    return-void

    .line 308
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->DCYHSZDQD:I

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 312
    :pswitch_2
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->PersonByDriver:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 316
    :pswitch_3
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->AutoMemRecall:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 320
    :pswitch_4
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->EasyExitSeat:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 324
    :pswitch_5
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->RevTiltMirror:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 328
    :pswitch_6
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->AutoMirrorFold:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 332
    :pswitch_7
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 334
    :cond_0
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->ZDYX:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 337
    :cond_1
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->ZDYX:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 342
    :pswitch_8
    const/16 v1, 0x53

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->RearTx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->InitUI()V

    .line 76
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 357
    :pswitch_0
    const/16 v0, 0x13

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 361
    :pswitch_1
    const/16 v0, 0x51

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 150
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 139
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->ResetData(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetConvActivity;->QueryData()V

    .line 143
    return-void
.end method
