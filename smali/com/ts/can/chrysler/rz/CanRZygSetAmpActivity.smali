.class public Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygSetAmpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field private static final ITEM_BAL_FRONT_REAR:I = 0x4

.field private static final ITEM_BAL_LEFT_RIGHT:I = 0x3

.field private static final ITEM_GF_TOGGLE:I = 0x8

.field public static final ITEM_HRYX:I = 0x2

.field private static final ITEM_MAX:I = 0x8

.field private static final ITEM_MIN:I = 0x1

.field private static final ITEM_VOL_HIGH:I = 0x7

.field private static final ITEM_VOL_LOW:I = 0x5

.field private static final ITEM_VOL_MIDDLE:I = 0x6

.field public static final ITEM_ZSYCSTJ:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanRZygSetAmpActivity"


# instance fields
.field private mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

.field private mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

.field private mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

.field private mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemHryx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

.field private mItemVolLow:Lcom/ts/canview/CanItemProgressList;

.field private mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

.field protected mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mZsycstjArr:[Ljava/lang/String;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 40
    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 41
    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 42
    const-string v2, "3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mZsycstjArr:[Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    .line 21
    return-void
.end method

.method private setValText(IZ)V
    .locals 3
    .param p1, "val"    # I
    .param p2, "isLtRt"    # Z

    .prologue
    const/16 v1, 0xa

    .line 366
    if-eqz p2, :cond_1

    .line 367
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 372
    :goto_0
    if-eqz p2, :cond_4

    .line 373
    if-ne p1, v1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 375
    :cond_2
    if-ge p1, v1, :cond_3

    .line 376
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p1, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_3
    if-le p1, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, -0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_4
    if-ne p1, v1, :cond_5

    .line 382
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_5
    if-ge p1, v1, :cond_6

    .line 384
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "F"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p1, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_6
    if-le p1, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, -0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 273
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 274
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 275
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 277
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 283
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 284
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 285
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 287
    return-object v0
.end method

.method public AmpSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 362
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    .line 363
    return-void
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x1

    .line 140
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 141
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mZsycstjArr:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    sget v0, Lcom/ts/MainUI/R$string;->can_a_s_l:I

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mZsycstjArr:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

    .line 144
    sget v0, Lcom/ts/MainUI/R$string;->can_around:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemHryx:Lcom/ts/canview/CanItemSwitchList;

    .line 146
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_balance_left_right:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    .line 147
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 151
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_balance_front_rear:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    .line 152
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 156
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol_low:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    .line 157
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 159
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 161
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol_middle:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    .line 162
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 163
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 164
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 166
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol_high:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    .line 167
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 168
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 169
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 171
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gf_toggle:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

    .line 172
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AmpASL:I

    .line 191
    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AmpHyyx:I

    .line 195
    goto :goto_0

    .line 198
    :pswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 199
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 198
    goto :goto_1

    .line 202
    :pswitch_3
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 203
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 202
    goto :goto_2

    .line 206
    :pswitch_4
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 207
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 206
    goto :goto_3

    .line 210
    :pswitch_5
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 211
    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    .line 210
    goto :goto_4

    .line 214
    :pswitch_6
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v4, :cond_4

    move v0, v1

    .line 215
    :goto_5
    goto :goto_0

    :cond_4
    move v0, v2

    .line 214
    goto :goto_5

    .line 218
    :pswitch_7
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v0, v1

    .line 219
    :goto_6
    goto :goto_0

    :cond_5
    move v0, v2

    .line 218
    goto :goto_6

    .line 187
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
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->GetAdtData()V

    .line 178
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 182
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->ShowItem(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const/16 v0, 0xf1

    const/16 v1, 0x31

    invoke-static {v0, v1, v2, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthQuery(IIII)V

    .line 113
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->GetSetData()V

    .line 73
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpUpdate:I

    .line 78
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpASL:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemHryx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpHyyx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->CompassGetAmpInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Update:I

    .line 91
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Bal:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->setValText(IZ)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Fad:I

    invoke-direct {p0, v0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->setValText(IZ)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Bas:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Bas:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Mid:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Mid:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Tre:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Tre:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->PWROn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 107
    :cond_3
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->IsHaveItem(I)Z

    move-result v0

    .line 232
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemHryx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 251
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 255
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 259
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 263
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 232
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
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->ResetData(Z)V

    .line 342
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 312
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 314
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    goto :goto_0

    .line 318
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    goto :goto_0

    .line 322
    :pswitch_2
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    goto :goto_0

    .line 326
    :pswitch_3
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    goto :goto_0

    .line 330
    :pswitch_4
    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 295
    .local v0, "item":I
    sparse-switch v0, :sswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 298
    :sswitch_0
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpHyyx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 302
    :sswitch_1
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->PWROn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ChrOthAmpCtrl(II)V

    goto :goto_0

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->InitUI()V

    .line 68
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 352
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 133
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 135
    const-string v0, "CanRZygSetAmpActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 119
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 120
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->LayoutUI()V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->ResetData(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;->QueryData()V

    .line 124
    const-string v0, "CanRZygSetAmpActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method
