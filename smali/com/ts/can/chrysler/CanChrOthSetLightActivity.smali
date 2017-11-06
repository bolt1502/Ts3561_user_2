.class public Lcom/ts/can/chrysler/CanChrOthSetLightActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CORNERINGLIGHTS:I = 0x7

.field public static final ITEM_DDYCXM:I = 0x1

.field public static final ITEM_GREETINGLIGHTS:I = 0x6

.field public static final ITEM_HEADLIGHTSENS:I = 0x5

.field public static final ITEM_KJDDLQ:I = 0x3

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RXD:I = 0x4

.field public static final ITEM_SCSZXDSS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetLightActivity"

.field private static final mDdycxmArr:[I

.field private static final mKheadlightsens:[I

.field private static final mKjddlqArr:[I


# instance fields
.field protected mItemCorneringlights:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

.field protected mItemGreetinglights:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemHeadlightsens:Lcom/ts/canview/CanItemPopupList;

.field protected mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

.field protected mItemRxd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v6, [I

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v5

    .line 31
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mDdycxmArr:[I

    .line 40
    new-array v0, v6, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v5

    .line 39
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mKjddlqArr:[I

    .line 48
    new-array v0, v5, [I

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_1:I

    aput v1, v0, v2

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_2:I

    aput v1, v0, v3

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightsens_3:I

    aput v1, v0, v4

    .line 47
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mKheadlightsens:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 228
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 230
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 232
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 237
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 238
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 239
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 241
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 129
    sget v0, Lcom/ts/MainUI/R$string;->can_scszxdss:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    .line 130
    sget v0, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    .line 131
    sget v0, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mDdycxmArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    .line 132
    sget v0, Lcom/ts/MainUI/R$string;->can_kjddlq:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mKjddlqArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    .line 133
    sget v0, Lcom/ts/MainUI/R$string;->can_headlightsens:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mKheadlightsens:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemHeadlightsens:Lcom/ts/canview/CanItemPopupList;

    .line 134
    sget v0, Lcom/ts/MainUI/R$string;->can_greetingLights:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemGreetinglights:Lcom/ts/canview/CanItemSwitchList;

    .line 135
    sget v0, Lcom/ts/MainUI/R$string;->can_corneringLights:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemCorneringlights:Lcom/ts/canview/CanItemSwitchList;

    .line 136
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 155
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->HeadlightDelay:I

    .line 156
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FlashLights:I

    .line 160
    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Illnminated:I

    .line 164
    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DaytimeLights:I

    .line 168
    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->HeadlightSens:I

    .line 172
    goto :goto_0

    .line 175
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->GreetingLights:I

    .line 176
    goto :goto_0

    .line 179
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->CornerLights:I

    .line 180
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->GetAdtData()V

    .line 143
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 147
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->ShowItem(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 100
    const/16 v0, 0x40

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->Query(II)V

    .line 101
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->GetSetData()V

    .line 82
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LightsUpdate:I

    .line 87
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HeadlightDelay:I

    div-int/lit8 v1, v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 89
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Illnminated:I

    div-int/lit8 v1, v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DaytimeLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 91
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemHeadlightsens:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->HeadlightSens:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemGreetinglights:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->GreetingLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 93
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemCorneringlights:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CornerLights:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 96
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 192
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemScszxdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemKjddlq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemHeadlightsens:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemGreetinglights:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 219
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mItemCorneringlights:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->ResetData(Z)V

    .line 284
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    :pswitch_0
    return-void

    .line 256
    :pswitch_1
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FlashLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 263
    :pswitch_2
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DaytimeLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 267
    :pswitch_3
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->GreetingLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 271
    :pswitch_4
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->CornerLights:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSWSet(II)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->InitUI()V

    .line 77
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_0
    :pswitch_0
    return-void

    .line 293
    :pswitch_1
    const/16 v0, 0x20

    mul-int/lit8 v1, p2, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 300
    :pswitch_2
    const/16 v0, 0x21

    mul-int/lit8 v1, p2, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 307
    :pswitch_3
    const/16 v0, 0x29

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 120
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 122
    const-string v0, "CanChrOthSetLightActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->LayoutUI()V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->ResetData(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;->QueryData()V

    .line 111
    const-string v0, "CanChrOthSetLightActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
