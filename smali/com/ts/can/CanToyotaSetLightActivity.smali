.class public Lcom/ts/can/CanToyotaSetLightActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_AUTO_OFF_TIMER:I = 0x4

.field public static final ITEM_LIGHT_OFF_TIMER:I = 0x3

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RXD:I = 0x1

.field public static final ITEM_SENS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanToyotaSetLightActivity"

.field private static mStrAutoOffTimer:[I

.field private static mStrLightOffTimer:[I


# instance fields
.field private mItemAutoOffTimer:Lcom/ts/canview/CanItemPopupList;

.field private mItemLightOffTimer:Lcom/ts/canview/CanItemPopupList;

.field private mItemRxd:Lcom/ts/canview/CanItemCheckList;

.field private mItemSens:Lcom/ts/canview/CanItemProgressList;

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

    .line 39
    new-array v0, v6, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_7dot5s:I

    aput v1, v0, v3

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v4

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v5

    .line 38
    sput-object v0, Lcom/ts/can/CanToyotaSetLightActivity;->mStrLightOffTimer:[I

    .line 48
    new-array v0, v6, [I

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v5

    .line 47
    sput-object v0, Lcom/ts/can/CanToyotaSetLightActivity;->mStrAutoOffTimer:[I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 232
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 233
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 235
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/ts/can/CanToyotaSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 207
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemSens:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemLightOffTimer:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemAutoOffTimer:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected InitItem(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 176
    :pswitch_0
    sget v0, Lcom/ts/MainUI/R$string;->can_light_rxd:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 180
    :pswitch_1
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_light_sens:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemSens:Lcom/ts/canview/CanItemProgressList;

    .line 181
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemSens:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 182
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemSens:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    goto :goto_0

    .line 186
    :pswitch_2
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_light_off_time:I

    sget-object v2, Lcom/ts/can/CanToyotaSetLightActivity;->mStrLightOffTimer:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemLightOffTimer:Lcom/ts/canview/CanItemPopupList;

    .line 187
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemLightOffTimer:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    goto :goto_0

    .line 191
    :pswitch_3
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_light_auto_off_timer:I

    sget-object v2, Lcom/ts/can/CanToyotaSetLightActivity;->mStrAutoOffTimer:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemAutoOffTimer:Lcom/ts/canview/CanItemPopupList;

    .line 192
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemAutoOffTimer:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 124
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 127
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLightActivity;->InitItem(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_0
    const/4 v0, 0x0

    .line 151
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->Sensitivity:I

    .line 155
    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->LightOffTime:I

    .line 159
    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->AutoOffTimer:I

    .line 163
    goto :goto_0

    .line 147
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
    .line 135
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 138
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLightActivity;->AddItem(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLightActivity;->GetSetData()V

    .line 68
    iget-boolean v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLightActivity;->GetAdaptData()V

    .line 71
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLightActivity;->LayoutUI()V

    .line 75
    const/4 p1, 0x0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mbLayout:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    .line 90
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgRxd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 91
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemSens:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Sensitivity:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemLightOffTimer:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->LightOffTime:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 93
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mItemAutoOffTimer:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->AutoOffTimer:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 97
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLightActivity;->ResetData(Z)V

    .line 294
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 278
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 281
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 247
    :pswitch_0
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgRxd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLightActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLightActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLightActivity;->InitUI()V

    .line 63
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 262
    :pswitch_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 266
    :pswitch_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 119
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 108
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLightActivity;->ResetData(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLightActivity;->QueryData()V

    .line 112
    return-void
.end method
