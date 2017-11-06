.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CNFWD:I = 0x9

.field public static final ITEM_DDYCXM:I = 0x1

.field public static final ITEM_FXYGD:I = 0x5

.field public static final ITEM_HSJTGJ:I = 0xc

.field public static final ITEM_KJDDLQ:I = 0x3

.field private static final ITEM_MAX:I = 0xc

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_QDYGZDQDDD:I = 0x6

.field public static final ITEM_QZDLMD:I = 0xa

.field public static final ITEM_RXD:I = 0x4

.field public static final ITEM_SCSZXDSS:I = 0x2

.field public static final ITEM_YBD:I = 0x7

.field public static final ITEM_ZJFZD:I = 0xb

.field public static final ITEM_ZXD:I = 0x8

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetLightActivity"

.field private static final mDdycxmArr:[I

.field private static final mKCnwfn:[I

.field private static final mKheadlightsens:[I

.field private static final mKjddlqArr:[I


# instance fields
.field protected mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

.field protected mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemHsjtgj:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

.field protected mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

.field protected mItemRxd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYbd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZxd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-array v0, v2, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v3

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v6

    .line 38
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mDdycxmArr:[I

    .line 47
    new-array v0, v2, [I

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v6

    .line 46
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mKjddlqArr:[I

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_0:I

    aput v1, v0, v3

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_1:I

    aput v1, v0, v4

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_2:I

    aput v1, v0, v5

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_3:I

    aput v1, v0, v6

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_4:I

    aput v1, v0, v2

    const/4 v1, 0x5

    .line 62
    sget v2, Lcom/ts/MainUI/R$string;->can_headlightsens_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 63
    sget v2, Lcom/ts/MainUI/R$string;->can_headlightsens_6:I

    aput v2, v0, v1

    .line 55
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mKCnwfn:[I

    .line 68
    new-array v0, v6, [I

    .line 69
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_1:I

    aput v1, v0, v3

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_2:I

    aput v1, v0, v4

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_3:I

    aput v1, v0, v5

    .line 67
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mKheadlightsens:[I

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 306
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 307
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 308
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 310
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 315
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 316
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 317
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 318
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 319
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 159
    sget v0, Lcom/ts/MainUI/R$string;->can_scszxdss:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    .line 160
    sget v0, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    .line 161
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_zdfxygd:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

    .line 162
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_qdygszdqddd:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

    .line 163
    sget v0, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mDdycxmArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    .line 164
    sget v0, Lcom/ts/MainUI/R$string;->can_kjddlq:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mKjddlqArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    .line 165
    sget v0, Lcom/ts/MainUI/R$string;->can_ybzm:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemYbd:Lcom/ts/canview/CanItemSwitchList;

    .line 166
    sget v0, Lcom/ts/MainUI/R$string;->can_turning_lamp:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemZxd:Lcom/ts/canview/CanItemSwitchList;

    .line 167
    sget v0, Lcom/ts/MainUI/R$string;->can_env_light:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mKCnwfn:[I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

    .line 168
    sget v0, Lcom/ts/MainUI/R$string;->can_headlightsens:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mKheadlightsens:[I

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

    .line 170
    sget v0, Lcom/ts/MainUI/R$string;->can_corneringLights:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

    .line 171
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_hsjtgj:I

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemHsjtgj:Lcom/ts/canview/CanItemSwitchList;

    .line 172
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->HeadlightDelay:I

    .line 192
    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FlashLights:I

    .line 196
    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Illnminated:I

    .line 200
    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DaytimeLights:I

    .line 204
    goto :goto_0

    .line 207
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zdfxygd:I

    .line 208
    goto :goto_0

    .line 211
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qdygzdqddd:I

    .line 212
    goto :goto_0

    .line 215
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ybd:I

    .line 216
    goto :goto_0

    .line 219
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zxd:I

    .line 220
    goto :goto_0

    .line 223
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cnfwd:I

    .line 224
    goto :goto_0

    .line 227
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qzdlmd:I

    .line 228
    goto :goto_0

    .line 231
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zjfzd:I

    .line 232
    goto :goto_0

    .line 235
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Hsjtgj:I

    .line 236
    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->GetAdtData()V

    .line 179
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 183
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->ShowItem(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->Query2(I)V

    .line 131
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->GetSetData()V

    .line 105
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdate:I

    .line 110
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HeadlightDelay:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Illnminated:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DaytimeLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdfxygd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qdygzdqddd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemYbd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ybd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemZxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zxd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cnfwd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qzdlmd:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qzdlmd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zjfzd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemHsjtgj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Hsjtgj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 126
    :cond_2
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 249
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 268
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 272
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 276
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemYbd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 280
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemZxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 284
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 288
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 292
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 296
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mItemHsjtgj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->ResetData(Z)V

    .line 379
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    :pswitch_0
    return-void

    .line 334
    :pswitch_1
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 341
    :pswitch_2
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DaytimeLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 345
    :pswitch_3
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdfxygd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 349
    :pswitch_4
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qdygzdqddd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 361
    :pswitch_5
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zjfzd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 365
    :pswitch_6
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Hsjtgj:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->InitUI()V

    .line 100
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 385
    packed-switch p1, :pswitch_data_0

    .line 418
    :goto_0
    :pswitch_0
    return-void

    .line 388
    :pswitch_1
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 395
    :pswitch_2
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 408
    :pswitch_3
    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 412
    :pswitch_4
    const/16 v0, 0x2c

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
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
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 152
    const-string v0, "CanChrOthSetLightActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 137
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 138
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->LayoutUI()V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->ResetData(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetLightActivity;->QueryData()V

    .line 141
    const-string v0, "CanChrOthSetLightActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
