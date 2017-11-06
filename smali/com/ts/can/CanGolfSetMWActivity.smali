.class public Lcom/ts/can/CanGolfSetMWActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetMWActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_FOLD_AWAY:I = 0x4

.field public static final ITEM_LOWER_REV:I = 0x3

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_MIRROR_TITLE:I = 0x1

.field public static final ITEM_REAR_WINDOW_GEAR:I = 0x7

.field public static final ITEM_SYNC_ADJ:I = 0x2

.field public static final ITEM_WIPER_TITLE:I = 0x5

.field public static final ITEM_WIPE_IN_RAIN:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanGolfSetMWActivity"


# instance fields
.field private mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

.field private mItemFoldAway:Lcom/ts/canview/CanItemCheckList;

.field private mItemLowerRev:Lcom/ts/canview/CanItemCheckList;

.field private mItemMirrorTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mItemRearWidnowGear:Lcom/ts/canview/CanItemCheckList;

.field private mItemSyncAdj:Lcom/ts/canview/CanItemCheckList;

.field private mItemWipeInRain:Lcom/ts/canview/CanItemCheckList;

.field private mItemWiperTitle:Lcom/ts/canview/CanItemBlankTextList;

.field private mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    .line 44
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetMWActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 233
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemMirrorTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemSyncAdj:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemLowerRev:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemFoldAway:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 252
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemWiperTitle:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 256
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemWipeInRain:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 260
    :pswitch_6
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemRearWidnowGear:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 233
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
    .end packed-switch
.end method

.method protected InitItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 189
    :pswitch_0
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_mirrors:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemMirrorTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 193
    :pswitch_1
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_sync_adj:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemSyncAdj:Lcom/ts/canview/CanItemCheckList;

    .line 194
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemSyncAdj:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 198
    :pswitch_2
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lower_rev:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemLowerRev:Lcom/ts/canview/CanItemCheckList;

    .line 199
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemLowerRev:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 203
    :pswitch_3
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_fold_af_parking:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemFoldAway:Lcom/ts/canview/CanItemCheckList;

    .line 204
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemFoldAway:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 208
    :pswitch_4
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_wipers:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemWiperTitle:Lcom/ts/canview/CanItemBlankTextList;

    goto :goto_0

    .line 212
    :pswitch_5
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_wipe_in_rain:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemWipeInRain:Lcom/ts/canview/CanItemCheckList;

    .line 213
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemWipeInRain:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 217
    :pswitch_6
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_r_win_in_r_gear:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemRearWidnowGear:Lcom/ts/canview/CanItemCheckList;

    .line 218
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemRearWidnowGear:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    goto :goto_0

    .line 186
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

.method protected InitUI()V
    .locals 2

    .prologue
    .line 125
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 127
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMWActivity;->InitItem(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 181
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetMWActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->SyncAdjust:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->LowerReversing:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->FoldAwayAfterParking:I

    add-int v0, v1, v2

    .line 151
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->SyncAdjust:I

    .line 155
    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->LowerReversing:I

    .line 159
    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->FoldAwayAfterParking:I

    .line 163
    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->WipingInRain:I

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->RearWipeInRearGear:I

    add-int v0, v1, v2

    .line 167
    goto :goto_0

    .line 170
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->WipingInRain:I

    .line 171
    goto :goto_0

    .line 174
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->RearWipeInRearGear:I

    .line 175
    goto :goto_0

    .line 147
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
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 138
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMWActivity;->AddItem(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x60

    .line 95
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMWActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/16 v0, 0x41

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 98
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanGolfSetMWActivity;->Sleep(J)V

    .line 102
    :cond_0
    const/16 v0, 0x40

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 104
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetMirrorWiper(Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;)V

    .line 62
    iget-boolean v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtMW(Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mAdtMW:Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtMirrorsAndW;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMWActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMWActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetMWActivity;->LayoutUI()V

    .line 69
    const/4 p1, 0x0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mbLayout:Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMWActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfSetMWActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->Update:I

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemSyncAdj:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgSyncAdj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemLowerRev:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgLowerWhileReversing:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemFoldAway:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgFoldAwayAfterParking:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemWipeInRain:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgAutoWipingInRain:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/CanGolfSetMWActivity;->mItemRearWidnowGear:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgRearWindowWiping:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 91
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMWActivity;->ResetData(Z)V

    .line 305
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 298
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    const/16 v1, 0x60

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgSyncAdj:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetMWActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 280
    :pswitch_2
    const/16 v1, 0x61

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgLowerWhileReversing:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetMWActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 284
    :pswitch_3
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgFoldAwayAfterParking:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetMWActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 288
    :pswitch_4
    const/16 v1, 0x62

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgAutoWipingInRain:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetMWActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 292
    :pswitch_5
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/ts/can/CanGolfSetMWActivity;->mMWData:Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfMirrorsAndWipers;->fgRearWindowWiping:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetMWActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMWActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetMWActivity;->InitUI()V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 121
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 110
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetMWActivity;->ResetData(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetMWActivity;->QueryData()V

    .line 114
    return-void
.end method
