.class public Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CNFWD:I = 0x9

.field public static final ITEM_DDYCXM:I = 0x1

.field public static final ITEM_FXYGD:I = 0x5

.field public static final ITEM_KJDDLQ:I = 0x3

.field private static final ITEM_MAX:I = 0xb

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

    .line 36
    new-array v0, v2, [I

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v3

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v6

    .line 35
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mDdycxmArr:[I

    .line 44
    new-array v0, v2, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v3

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v4

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v5

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v6

    .line 43
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mKjddlqArr:[I

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_0:I

    aput v1, v0, v3

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_1:I

    aput v1, v0, v4

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_2:I

    aput v1, v0, v5

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_3:I

    aput v1, v0, v6

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_4:I

    aput v1, v0, v2

    const/4 v1, 0x5

    .line 59
    sget v2, Lcom/ts/MainUI/R$string;->can_headlightsens_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 60
    sget v2, Lcom/ts/MainUI/R$string;->can_headlightsens_6:I

    aput v2, v0, v1

    .line 52
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mKCnwfn:[I

    .line 65
    new-array v0, v6, [I

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_1:I

    aput v1, v0, v3

    .line 67
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_2:I

    aput v1, v0, v4

    .line 68
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_3:I

    aput v1, v0, v5

    .line 64
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mKheadlightsens:[I

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 293
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 295
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 297
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 302
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 303
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 304
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 306
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 154
    sget v0, Lcom/ts/MainUI/R$string;->can_scszxdss:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    .line 155
    sget v0, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    .line 156
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_zdfxygd:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

    .line 157
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_qdygszdqddd:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

    .line 158
    sget v0, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mDdycxmArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    .line 159
    sget v0, Lcom/ts/MainUI/R$string;->can_kjddlq:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mKjddlqArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    .line 160
    sget v0, Lcom/ts/MainUI/R$string;->can_ybzm:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemYbd:Lcom/ts/canview/CanItemSwitchList;

    .line 161
    sget v0, Lcom/ts/MainUI/R$string;->can_turning_lamp:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemZxd:Lcom/ts/canview/CanItemSwitchList;

    .line 162
    sget v0, Lcom/ts/MainUI/R$string;->can_env_light:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mKCnwfn:[I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

    .line 163
    sget v0, Lcom/ts/MainUI/R$string;->can_headlightsens:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mKheadlightsens:[I

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

    .line 165
    sget v0, Lcom/ts/MainUI/R$string;->can_corneringLights:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

    .line 167
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->HeadlightDelay:I

    .line 187
    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FlashLights:I

    .line 191
    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Illnminated:I

    .line 195
    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DaytimeLights:I

    .line 199
    goto :goto_0

    .line 202
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zdfxygd:I

    .line 203
    goto :goto_0

    .line 206
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qdygzdqddd:I

    .line 207
    goto :goto_0

    .line 210
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ybd:I

    .line 211
    goto :goto_0

    .line 214
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zxd:I

    .line 215
    goto :goto_0

    .line 218
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cnfwd:I

    .line 219
    goto :goto_0

    .line 222
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qzdlmd:I

    .line 223
    goto :goto_0

    .line 226
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zjfzd:I

    .line 227
    goto :goto_0

    .line 183
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
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->GetAdtData()V

    .line 174
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 178
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->ShowItem(I)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 125
    const/16 v0, 0x40

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->Query(II)V

    .line 126
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->GetSetData()V

    .line 101
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdate:I

    .line 106
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HeadlightDelay:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 108
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Illnminated:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DaytimeLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdfxygd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qdygzdqddd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemYbd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ybd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemZxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zxd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cnfwd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qzdlmd:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qzdlmd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zjfzd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 121
    :cond_2
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 240
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 255
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 259
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemFxygd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 263
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemQdygzdqddd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 267
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemYbd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 271
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemZxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 275
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemCnfwd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 279
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemQzdlmd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 283
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mItemZjfzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 240
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
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->ResetData(Z)V

    .line 362
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 315
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    :pswitch_0
    return-void

    .line 321
    :pswitch_1
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 328
    :pswitch_2
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DaytimeLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 332
    :pswitch_3
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdfxygd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 336
    :pswitch_4
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qdygzdqddd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 340
    :pswitch_5
    const/16 v1, 0x90

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ybd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 344
    :pswitch_6
    const/16 v1, 0x91

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zxd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 348
    :pswitch_7
    const/16 v1, 0x95

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zjfzd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->Neg(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->InitUI()V

    .line 96
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 368
    packed-switch p1, :pswitch_data_0

    .line 401
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    const/16 v0, 0x11

    mul-int/lit8 v1, p2, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 378
    :pswitch_2
    const/16 v0, 0x12

    mul-int/lit8 v1, p2, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 391
    :pswitch_3
    const/16 v0, 0x92

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 395
    :pswitch_4
    const/16 v0, 0x93

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 368
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
    .line 144
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 145
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 147
    const-string v0, "CanChrOthSetLightActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 132
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 133
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->LayoutUI()V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->ResetData(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;->QueryData()V

    .line 136
    const-string v0, "CanChrOthSetLightActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method
