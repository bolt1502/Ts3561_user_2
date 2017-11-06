.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetAmpActivity.java"

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

.field private static final ITEM_VOL:I = 0x9

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

.field private mItemVol:Lcom/ts/canview/CanItemProgressList;

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
    .line 23
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 43
    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 44
    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 45
    const-string v2, "3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mZsycstjArr:[Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    .line 23
    return-void
.end method

.method private setValText(IZ)V
    .locals 3
    .param p1, "val"    # I
    .param p2, "isLtRt"    # Z

    .prologue
    const/16 v1, 0xa

    .line 390
    if-eqz p2, :cond_1

    .line 391
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 396
    :goto_0
    if-eqz p2, :cond_4

    .line 397
    if-ne p1, v1, :cond_2

    .line 398
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    goto :goto_0

    .line 399
    :cond_2
    if-ge p1, v1, :cond_3

    .line 400
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

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

    .line 401
    :cond_3
    if-le p1, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

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

    .line 405
    :cond_4
    if-ne p1, v1, :cond_5

    .line 406
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :cond_5
    if-ge p1, v1, :cond_6

    .line 408
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

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

    .line 409
    :cond_6
    if-le p1, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

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
    .line 293
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 295
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 297
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 303
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 304
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 305
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 307
    return-object v0
.end method

.method public AmpSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 386
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->ChrXbsSetAudio(II)V

    .line 387
    return-void
.end method

.method protected InitUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x13

    const/4 v3, 0x1

    .line 147
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 148
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mZsycstjArr:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 150
    sget v0, Lcom/ts/MainUI/R$string;->can_a_s_l:I

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mZsycstjArr:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

    .line 151
    sget v0, Lcom/ts/MainUI/R$string;->can_around:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemHryx:Lcom/ts/canview/CanItemSwitchList;

    .line 153
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_balance_left_right:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    .line 154
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 158
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_balance_front_rear:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    .line 159
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 163
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol_low:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    .line 164
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 165
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 166
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 168
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol_middle:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    .line 169
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 170
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 171
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 173
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol_high:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    .line 174
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3, v4}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 175
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 176
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 178
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gf_toggle:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

    .line 180
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_vol:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    .line 181
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0x26

    invoke-virtual {v0, v5, v1}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 182
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 183
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 184
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AmpASL:I

    .line 203
    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AmpHyyx:I

    .line 207
    goto :goto_0

    .line 210
    :pswitch_2
    const/4 v0, 0x1

    .line 211
    goto :goto_0

    .line 214
    :pswitch_3
    const/4 v0, 0x1

    .line 215
    goto :goto_0

    .line 218
    :pswitch_4
    const/4 v0, 0x1

    .line 219
    goto :goto_0

    .line 222
    :pswitch_5
    const/4 v0, 0x1

    .line 223
    goto :goto_0

    .line 226
    :pswitch_6
    const/4 v0, 0x1

    .line 227
    goto :goto_0

    .line 230
    :pswitch_7
    const/4 v0, 0x0

    .line 231
    goto :goto_0

    .line 234
    :pswitch_8
    const/4 v0, 0x1

    .line 235
    goto :goto_0

    .line 199
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
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->GetAdtData()V

    .line 190
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 194
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->ShowItem(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->Query2(I)V

    .line 120
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->GetSetData()V

    .line 78
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpUpdate:I

    .line 83
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpASL:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemHryx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpHyyx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->CompassGetAmpInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Update:I

    .line 96
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Bal:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->setValText(IZ)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Fad:I

    invoke-direct {p0, v0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->setValText(IZ)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Bas:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Bas:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Mid:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Mid:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Tre:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Tre:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->PWROn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Vol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mAmpInfo:Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAMPInfo;->Vol:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 115
    :cond_3
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->IsHaveItem(I)Z

    move-result v0

    .line 248
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemZsycstj:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemHryx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalLtRt:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemBalFrontRear:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 267
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolLow:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 271
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolMiddle:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 275
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVolHigh:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 279
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemGFToggle:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 283
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 248
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
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->ResetData(Z)V

    .line 366
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 358
    :goto_0
    :pswitch_0
    return-void

    .line 334
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 338
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 342
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 346
    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 350
    :pswitch_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 354
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
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

    .line 328
    :goto_0
    return-void

    .line 318
    :pswitch_0
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AmpHyyx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->InitUI()V

    .line 73
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 376
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->AmpSet(II)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 140
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 142
    const-string v0, "CanRZygSetAmpActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->LayoutUI()V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->ResetData(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetAmpActivity;->QueryData()V

    .line 131
    const-string v0, "CanRZygSetAmpActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method
