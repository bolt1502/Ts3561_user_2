.class public Lcom/ts/can/CanGolfSetMFDActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetMFDActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AVG_CONSUMPTION:I = 0x2

.field public static final ITEM_AVG_SPEED:I = 0x7

.field public static final ITEM_CONV_CONSUMERS:I = 0x3

.field public static final ITEM_CUR_CONSUMPTION:I = 0x1

.field public static final ITEM_DIG_DISPLAY:I = 0x8

.field public static final ITEM_DIS_TRAVELLED:I = 0x6

.field public static final ITEM_ECO_TIPS:I = 0x4

.field private static final ITEM_MAX:I = 0xc

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_OIL_TEMP:I = 0xa

.field public static final ITEM_RESET_LONG_TERM:I = 0xc

.field public static final ITEM_RESET_SINCE_START:I = 0xb

.field public static final ITEM_SPEED_WARN:I = 0x9

.field public static final ITEM_TRAVEL_TIME:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanGolfSetMFDActivity"


# instance fields
.field private mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

.field private mCurItem:Landroid/view/View;

.field private mItemAvgConsumption:Lcom/ts/canview/CanItemCheckList;

.field private mItemAvgSpeed:Lcom/ts/canview/CanItemCheckList;

.field private mItemConvConsumers:Lcom/ts/canview/CanItemCheckList;

.field private mItemCurConsumption:Lcom/ts/canview/CanItemCheckList;

.field private mItemDigDisplay:Lcom/ts/canview/CanItemCheckList;

.field private mItemDisTravelled:Lcom/ts/canview/CanItemCheckList;

.field private mItemEcoTips:Lcom/ts/canview/CanItemCheckList;

.field private mItemOilTemp:Lcom/ts/canview/CanItemCheckList;

.field private mItemResetLongTerm:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemResetSinceStart:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

.field private mItemTravelTime:Lcom/ts/canview/CanItemCheckList;

.field private mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    .line 56
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/CanGolfSetMFDActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mCurItem:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 285
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 286
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 288
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetMFDActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 227
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemCurConsumption:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemAvgConsumption:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemConvConsumers:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemEcoTips:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemTravelTime:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 250
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemDisTravelled:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 254
    :pswitch_6
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :pswitch_7
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemDigDisplay:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 262
    :pswitch_8
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 266
    :pswitch_9
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemOilTemp:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :pswitch_a
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemResetSinceStart:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 274
    :pswitch_b
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemResetLongTerm:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 227
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

.method protected AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 293
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 296
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 146
    sget v0, Lcom/ts/MainUI/R$string;->can_cur_consump:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemCurConsumption:Lcom/ts/canview/CanItemCheckList;

    .line 147
    sget v0, Lcom/ts/MainUI/R$string;->can_avg_consump:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemAvgConsumption:Lcom/ts/canview/CanItemCheckList;

    .line 148
    sget v0, Lcom/ts/MainUI/R$string;->can_conv_consumers:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemConvConsumers:Lcom/ts/canview/CanItemCheckList;

    .line 149
    sget v0, Lcom/ts/MainUI/R$string;->can_eco_tips:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemEcoTips:Lcom/ts/canview/CanItemCheckList;

    .line 150
    sget v0, Lcom/ts/MainUI/R$string;->can_trav_time:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemTravelTime:Lcom/ts/canview/CanItemCheckList;

    .line 151
    sget v0, Lcom/ts/MainUI/R$string;->can_dis_trav:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemDisTravelled:Lcom/ts/canview/CanItemCheckList;

    .line 152
    sget v0, Lcom/ts/MainUI/R$string;->can_avg_spped:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemCheckList;

    .line 153
    sget v0, Lcom/ts/MainUI/R$string;->can_dig_speed_display:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemDigDisplay:Lcom/ts/canview/CanItemCheckList;

    .line 154
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_warn:I

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    .line 155
    sget v0, Lcom/ts/MainUI/R$string;->can_oil_temp:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemOilTemp:Lcom/ts/canview/CanItemCheckList;

    .line 156
    sget v0, Lcom/ts/MainUI/R$string;->can_reset_sin_start:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemResetSinceStart:Lcom/ts/canview/CanItemTextBtnList;

    .line 157
    sget v0, Lcom/ts/MainUI/R$string;->can_reset_l_term:I

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemResetLongTerm:Lcom/ts/canview/CanItemTextBtnList;

    .line 159
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->CurConsumption:I

    .line 168
    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->AvgConsumption:I

    .line 172
    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->ConvConsumption:I

    .line 176
    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->EcoTips:I

    .line 180
    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->TravalTime:I

    .line 184
    goto :goto_0

    .line 187
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->DisTravelled:I

    .line 188
    goto :goto_0

    .line 191
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->AvgSpeed:I

    .line 192
    goto :goto_0

    .line 195
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->DigSpeedDisplay:I

    .line 196
    goto :goto_0

    .line 199
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->SpeedWarning:I

    .line 200
    goto :goto_0

    .line 203
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->OilTemp:I

    .line 204
    goto :goto_0

    .line 207
    :pswitch_a
    const/4 v0, 0x1

    .line 208
    goto :goto_0

    .line 211
    :pswitch_b
    const/4 v0, 0x1

    .line 212
    goto :goto_0

    .line 164
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

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 112
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 115
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMFDActivity;->Sleep(J)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 122
    :cond_1
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 71
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtMFD(Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mAdtMFD:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMFD;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 78
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-le v0, v1, :cond_3

    .line 89
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GolfGetMFD(Lcom/lgb/canmodule/CanDataInfo$GolfMFD;)V

    .line 90
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetMFDActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->Update:I

    .line 96
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemCurConsumption:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgCurConsumption:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 97
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemAvgConsumption:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgAvgConsumption:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 98
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemConvConsumers:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgConvenienceConsumers:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 99
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemEcoTips:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgEcoTips:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 100
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemTravelTime:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgTravellingTime:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 101
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemDisTravelled:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgDistanceTravelled:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 102
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgAvgSpeed:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 103
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemDigDisplay:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgDigitalSpeedDisplay:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 104
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgSpeedWarning:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 105
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mItemOilTemp:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgOilTemp:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 108
    :cond_2
    return-void

    .line 80
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMFDActivity;->AddItem(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMFDActivity;->ResetData(Z)V

    .line 396
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 307
    :pswitch_0
    const/16 v2, 0x80

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgCurConsumption:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 311
    :pswitch_1
    const/16 v2, 0x81

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgAvgConsumption:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 315
    :pswitch_2
    const/16 v2, 0x82

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgConvenienceConsumers:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 319
    :pswitch_3
    const/16 v2, 0x83

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgEcoTips:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 323
    :pswitch_4
    const/16 v2, 0x84

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgTravellingTime:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 327
    :pswitch_5
    const/16 v2, 0x85

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgDistanceTravelled:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 331
    :pswitch_6
    const/16 v2, 0x86

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgAvgSpeed:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 335
    :pswitch_7
    const/16 v2, 0x87

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgDigitalSpeedDisplay:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 339
    :pswitch_8
    const/16 v2, 0x88

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgSpeedWarning:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 343
    :pswitch_9
    const/16 v2, 0x89

    iget-object v3, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mMFDData:Lcom/lgb/canmodule/CanDataInfo$GolfMFD;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfMFD;->fgOilTemp:I

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto/16 :goto_0

    .line 348
    :pswitch_a
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    sget v2, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v0, p0, v2, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 349
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 350
    iput-object p1, p0, Lcom/ts/can/CanGolfSetMFDActivity;->mCurItem:Landroid/view/View;

    .line 351
    invoke-virtual {v1}, Lcom/ts/canview/CanItemMsgBox;->getDlg()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/ts/can/CanGolfSetMFDActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/CanGolfSetMFDActivity$1;-><init>(Lcom/ts/can/CanGolfSetMFDActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 304
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
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMFDActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetMFDActivity;->InitUI()V

    .line 67
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    const/4 v1, 0x1

    .line 375
    packed-switch p1, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 378
    :pswitch_0
    const/16 v0, 0x8a

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 382
    :pswitch_1
    const/16 v0, 0x8b

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 139
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 128
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMFDActivity;->ResetData(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetMFDActivity;->QueryData()V

    .line 132
    return-void
.end method
