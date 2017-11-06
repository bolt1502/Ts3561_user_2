.class public Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCheryAiRuizeCarInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_ALARM:I = 0x3

.field public static final ITEM_AUTO_LOCK:I = 0x4

.field public static final ITEM_AVM_ANIM:I = 0x8

.field public static final ITEM_BEHIND_LIGHT:I = 0x12

.field public static final ITEM_CAR_LINE:I = 0x9

.field public static final ITEM_DAY_LIGHT:I = 0x6

.field public static final ITEM_JYKKHBX:I = 0x15

.field public static final ITEM_KJXSDNL:I = 0x16

.field public static final ITEM_LANG:I = 0x1

.field public static final ITEM_LIGHT_DELAY:I = 0x5

.field public static final ITEM_SPEED_VALUE:I = 0x11

.field public static final ITEM_SPEED_WARN:I = 0x10

.field public static final ITEM_START_AVM:I = 0x7

.field public static final ITEM_TIP:I = 0x2

.field public static final ITEM_TYPE:I = 0x0

.field public static final ITEM_ZDJS:I = 0x14

.field public static final ITEM_ZXFZZM:I = 0x13

.field private static final TAG:Ljava/lang/String; = "CanCheryAiRuizeCarInfoActivity"


# instance fields
.field protected mCarLineArray:[Ljava/lang/String;

.field protected mCarType:[Ljava/lang/String;

.field protected mItemAlarm:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

.field protected mItemCarLine:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemJykkhbx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemKjxsdnl:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

.field protected mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemTip:Lcom/ts/canview/CanItemPopupList;

.field protected mItemType:Lcom/ts/canview/CanItemCarType;

.field protected mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZxfzzm:Lcom/ts/canview/CanItemSwitchList;

.field protected mLangArr:[Ljava/lang/String;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

.field protected mTipArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    .line 25
    return-void
.end method

.method private SwValue(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    const/4 v0, 0x1

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showItem(I)V
    .locals 4
    .param p1, "subType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    move v0, p1

    .line 191
    .local v0, "show":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 194
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAlarm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 195
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 196
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 198
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 200
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemCarLine:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 201
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 202
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(I)V

    .line 203
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 251
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 208
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemTip:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 209
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAlarm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 210
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 211
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 212
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 213
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 214
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 215
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemCarLine:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 216
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 217
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 218
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 223
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemTip:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 224
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAlarm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 225
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 226
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 227
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 228
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 229
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 230
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemCarLine:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 231
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 232
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 233
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 234
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemZxfzzm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 235
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 236
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemJykkhbx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 237
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemKjxsdnl:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto/16 :goto_0

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 242
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 243
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 244
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 245
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 246
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemCarLine:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(I)V

    .line 247
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    .line 248
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(I)V

    .line 249
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected AddCarTypeItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemCarType;
    .locals 6
    .param p1, "textId"    # I
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 153
    .local v0, "item":Lcom/ts/canview/CanItemCarType;
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 154
    return-object v0
.end method

.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 159
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 160
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 161
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 145
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 146
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 147
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 148
    return-object v0
.end method

.method protected AddProgressItem(IIIII)Lcom/ts/canview/CanItemProgressList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "id"    # I
    .param p3, "step"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I

    .prologue
    .line 166
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 167
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p2, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 168
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 169
    invoke-virtual {v0, p4, p5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 170
    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->setValueAlign()V

    .line 171
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 172
    return-object v0
.end method

.method protected InitUI()V
    .locals 12

    .prologue
    const/16 v5, 0x15

    const/4 v3, 0x1

    .line 93
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 95
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_tigger7_car_type_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mCarType:[Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_tigger7_language_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mLangArr:[Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_tigger7_tip_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mTipArr:[Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    sget v1, Lcom/ts/MainUI/R$array;->can_tigger7_car_line_array:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mCarLineArray:[Ljava/lang/String;

    .line 101
    sget v0, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mCarType:[Ljava/lang/String;

    .line 102
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCarTypeItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemCarType;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemType:Lcom/ts/canview/CanItemCarType;

    .line 104
    sget v0, Lcom/ts/MainUI/R$string;->can_language:I

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mLangArr:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 105
    sget v0, Lcom/ts/MainUI/R$string;->can_tslx:I

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mTipArr:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemTip:Lcom/ts/canview/CanItemPopupList;

    .line 107
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_alarm:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAlarm:Lcom/ts/canview/CanItemSwitchList;

    .line 108
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_auto_lock:I

    .line 109
    const/4 v1, 0x4

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_light_delay:I

    .line 111
    const/4 v1, 0x5

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

    .line 112
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_day_light:I

    .line 113
    const/4 v1, 0x6

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    .line 114
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_start_avm:I

    .line 115
    const/4 v1, 0x7

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_avm_anim:I

    .line 117
    const/16 v1, 0x8

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

    .line 119
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_car_line:I

    .line 120
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mCarLineArray:[Ljava/lang/String;

    const/16 v2, 0x9

    .line 119
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemCarLine:Lcom/ts/canview/CanItemPopupList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_tigger7_speed_warn:I

    .line 123
    const/16 v1, 0x10

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

    .line 124
    sget v1, Lcom/ts/MainUI/R$string;->can_tigger7_speed_value:I

    .line 125
    const/16 v2, 0x11

    move-object v0, p0

    move v4, v3

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddProgressItem(IIIII)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    .line 126
    iget-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 128
    sget v7, Lcom/ts/MainUI/R$string;->can_tigger7_behind_light:I

    .line 129
    const/16 v8, 0x12

    const/16 v11, 0xa

    move-object v6, p0

    move v9, v3

    move v10, v3

    .line 128
    invoke-virtual/range {v6 .. v11}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddProgressItem(IIIII)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

    .line 131
    sget v0, Lcom/ts/MainUI/R$string;->can_airuiz7_zxfzzm:I

    .line 132
    const/16 v1, 0x13

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemZxfzzm:Lcom/ts/canview/CanItemSwitchList;

    .line 134
    sget v0, Lcom/ts/MainUI/R$string;->can_zdjs:I

    .line 135
    const/16 v1, 0x14

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

    .line 137
    sget v0, Lcom/ts/MainUI/R$string;->can_airuiz7_jykkhbx:I

    invoke-virtual {p0, v0, v5}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemJykkhbx:Lcom/ts/canview/CanItemSwitchList;

    .line 140
    sget v0, Lcom/ts/MainUI/R$string;->can_airuiz7_kjxsdnl:I

    .line 141
    const/16 v1, 0x16

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemKjxsdnl:Lcom/ts/canview/CanItemSwitchList;

    .line 142
    return-void
.end method

.method protected ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v4, 0x0

    .line 265
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->AiRuizeGetCarSet(Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;)V

    .line 267
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->LangUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->LangUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->LangUpdate:I

    .line 270
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Lang:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->IllUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->IllUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->IllUpdate:I

    .line 276
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemTip:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Ill:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->JjzdbjUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->JjzdbjUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->JjzdbjUpdate:I

    .line 283
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAlarm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Jjzdbj:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 287
    :cond_5
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 288
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZdlsUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 291
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZdlsUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 292
    :cond_7
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZdlsUpdate:I

    .line 293
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Zdls:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 297
    :cond_8
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->QzdysUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 298
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->QzdysUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 299
    :cond_9
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->QzdysUpdate:I

    .line 300
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemLightDelay:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Qzdys:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 304
    :cond_a
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->RjxcdUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 305
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->RjxcdUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 306
    :cond_b
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->RjxcdUpdate:I

    .line 307
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Rjxcd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 311
    :cond_c
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxqdAvmUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 312
    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxqdAvmUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 313
    :cond_d
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxqdAvmUpdate:I

    .line 314
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemStartAvm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxqdAvm:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 318
    :cond_e
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->AvmqddhUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 319
    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->AvmqddhUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 320
    :cond_f
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->AvmqddhUpdate:I

    .line 321
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemAvmAnim:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Avmqddh:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 325
    :cond_10
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->CfxUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 326
    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->CfxUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 327
    :cond_11
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->CfxUpdate:I

    .line 328
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemCarLine:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Cfx:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 332
    :cond_12
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->CsbjUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 333
    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->CsbjUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 334
    :cond_13
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->CsbjUpdate:I

    .line 336
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedWarn:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 337
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->ShowGone(I)V

    .line 339
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    if-lez v1, :cond_14

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_14

    .line 340
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 342
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v1, 0x1e

    .line 343
    .local v0, "value":I
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemSpeedvalue:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " km/h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 348
    .end local v0    # "value":I
    :cond_14
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->YbbgUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 350
    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->YbbgUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 352
    :cond_15
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->YbbgUpdate:I

    .line 353
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Ybbg:I

    if-ltz v1, :cond_16

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Ybbg:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 354
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemBehindLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Ybbg:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 360
    :cond_16
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxbfzmUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 361
    if-eqz p1, :cond_17

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxbfzmUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 362
    :cond_17
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxbfzmUpdate:I

    .line 363
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemZxfzzm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Zxbfzm:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 367
    :cond_18
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZdjsUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 368
    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZdjsUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 369
    :cond_19
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZdjsUpdate:I

    .line 370
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Zdjs:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 374
    :cond_1a
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->JykkhbxUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 375
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->JykkhbxUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 376
    :cond_1b
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->JykkhbxUpdate:I

    .line 377
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemJykkhbx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Jykkhbx:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 381
    :cond_1c
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->KjxsdnlUpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 382
    if-eqz p1, :cond_1d

    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->KjxsdnlUpdate:I

    invoke-static {v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 383
    :cond_1d
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->KjxsdnlUpdate:I

    .line 384
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemKjxsdnl:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Kjxsdnl:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 387
    :cond_1e
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->ResetData(Z)V

    .line 262
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 460
    :pswitch_0
    const/16 v0, 0x9

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 463
    :pswitch_1
    const/16 v0, 0xa

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 412
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_0
    :pswitch_0
    return-void

    .line 414
    :pswitch_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Jjzdbj:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 417
    :pswitch_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Zdls:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 420
    :pswitch_3
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Qzdys:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 423
    :pswitch_4
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Rjxcd:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 426
    :pswitch_5
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->ZxqdAvm:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 429
    :pswitch_6
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Avmqddh:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 432
    :pswitch_7
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Csbj:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 435
    :pswitch_8
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Zxbfzm:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 438
    :pswitch_9
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Zdjs:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 441
    :pswitch_a
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Jykkhbx:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto/16 :goto_0

    .line 444
    :pswitch_b
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AiRuizeCarInfo;->Kjxsdnl:I

    invoke-direct {p0, v2}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->SwValue(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto/16 :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->setContentView(I)V

    .line 87
    const-string v0, "CanCheryAiRuizeCarInfoActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->InitUI()V

    .line 90
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 391
    sparse-switch p1, :sswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 393
    :sswitch_0
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 394
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0

    .line 397
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 400
    :sswitch_2
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 403
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->AiRuizeCarSet(II)V

    goto :goto_0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 256
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 257
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 178
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->ResetData(Z)V

    .line 182
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 183
    .local v0, "subType":I
    iget-object v1, p0, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->mItemType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 185
    invoke-direct {p0, v0}, Lcom/ts/can/chery/airuize/CanCheryAiRuizeCarInfoActivity;->showItem(I)V

    .line 186
    return-void
.end method
