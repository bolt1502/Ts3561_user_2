.class public Lcom/ts/can/CanToyotaSetAcActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaSetAcActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AC_LINK_AUTO:I = 0x1

.field public static final ITEM_LOOP_LINK_AUTO:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanToyotaSetAcActivity"


# instance fields
.field private mItemAcLinkAuto:Lcom/ts/canview/CanItemCheckList;

.field private mItemLoopLinkAuto:Lcom/ts/canview/CanItemCheckList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 181
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/ts/can/CanToyotaSetAcActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 161
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mItemAcLinkAuto:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mItemLoopLinkAuto:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected InitItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 142
    :pswitch_0
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_link_auto:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetAcActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mItemAcLinkAuto:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 146
    :pswitch_1
    sget v0, Lcom/ts/MainUI/R$string;->can_loop_link_auto:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetAcActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mItemLoopLinkAuto:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 98
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 101
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 105
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetAcActivity;->InitItem(I)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanToyotaSetAcActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->AcLinkAuto:I

    .line 125
    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->LoopLinkAuto:I

    .line 129
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 112
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 116
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetAcActivity;->AddItem(I)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetAcActivity;->GetSetData()V

    .line 44
    iget-boolean v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetAcActivity;->GetAdaptData()V

    .line 47
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetAcActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetAcActivity;->LayoutUI()V

    .line 51
    const/4 p1, 0x0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mbLayout:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetAcActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetAcActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    .line 66
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mItemAcLinkAuto:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgSEByAuto:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 67
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mItemLoopLinkAuto:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgLoopByAuto:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 71
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetAcActivity;->ResetData(Z)V

    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 193
    :pswitch_0
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgSEByAuto:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetAcActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetAcActivity;->CarSet(II)V

    goto :goto_0

    .line 197
    :pswitch_1
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetAcActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgLoopByAuto:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetAcActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetAcActivity;->CarSet(II)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetAcActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetAcActivity;->InitUI()V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 93
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetAcActivity;->ResetData(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetAcActivity;->QueryData()V

    .line 86
    return-void
.end method
