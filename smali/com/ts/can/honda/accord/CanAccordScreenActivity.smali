.class public Lcom/ts/can/honda/accord/CanAccordScreenActivity;
.super Lcom/ts/can/honda/accord/CanAccordBaseActivity;
.source "CanAccordScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_ADJ_OUTTEMP:I = 0x3

.field public static final ITEM_FUEL_BK_LIGHT:I = 0x4

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_TRIPA_TIME:I = 0x1

.field public static final ITEM_TRIPB_TIME:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanAccrodScreenActivity"

.field private static final mTripTimingArr:[I


# instance fields
.field private mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

.field private mItemFuelLight:Lcom/ts/canview/CanItemSwitchList;

.field private mItemTripA:Lcom/ts/canview/CanItemPopupList;

.field private mItemTripB:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->can_yjyld:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->can_gbsld:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_shoudong:I

    aput v2, v0, v1

    .line 29
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mTripTimingArr:[I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 206
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 207
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 208
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 210
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 198
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 201
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 114
    sget v0, Lcom/ts/MainUI/R$string;->can_lcacs:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mTripTimingArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemTripA:Lcom/ts/canview/CanItemPopupList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$string;->can_lcbcs:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mTripTimingArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemTripB:Lcom/ts/canview/CanItemPopupList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$string;->can_rybjtm:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemFuelLight:Lcom/ts/canview/CanItemSwitchList;

    .line 119
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_tjww:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    .line 120
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    .line 125
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 126
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->TripAResetTiming:I

    .line 147
    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->TripBResetTiming:I

    .line 151
    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AdjustOutTemp:I

    .line 155
    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->FuelBacklightSW:I

    .line 159
    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->GetAdtData()V

    .line 133
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->ShowItem(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->GetSetData()V

    .line 61
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    .line 67
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AdjustOutTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AdjustOutTemp:I

    if-lez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AdjustOutTemp:I

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemFuelLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->FuelBacklightSW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemTripA:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->TripAResetTiming:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemTripB:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->TripBResetTiming:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 83
    :cond_1
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AdjustOutTemp:I

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->IsHaveItem(I)Z

    move-result v0

    .line 172
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemTripA:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemTripB:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemAdjTemp:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->mItemFuelLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->ResetData(Z)V

    .line 236
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 264
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->CarSet(II)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 222
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->CarSet(I)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->InitUI()V

    .line 56
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 245
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->CarSet(II)V

    goto :goto_0

    .line 249
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->CarSet(II)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onPause()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onResume()V

    .line 94
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->ResetData(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->QueryData()V

    .line 98
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordScreenActivity;->LayoutUI()V

    .line 100
    return-void
.end method
