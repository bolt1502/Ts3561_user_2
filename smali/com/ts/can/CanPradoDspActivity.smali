.class public Lcom/ts/can/CanPradoDspActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanPradoDspActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AROUND:I = 0x2

.field public static final ITEM_ASL:I = 0x1

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanPradoDspActivity"


# instance fields
.field private mItemASL:Lcom/ts/canview/CanItemCheckList;

.field private mItemAround:Lcom/ts/canview/CanItemCheckList;

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
    .line 167
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 168
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 170
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/ts/can/CanPradoDspActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 150
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanPradoDspActivity;->mItemASL:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanPradoDspActivity;->mItemAround:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 150
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
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 131
    :pswitch_0
    sget v0, Lcom/ts/MainUI/R$string;->can_a_s_l:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanPradoDspActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mItemASL:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 135
    :pswitch_1
    sget v0, Lcom/ts/MainUI/R$string;->can_around:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanPradoDspActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mItemAround:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 89
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanPradoDspActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 92
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanPradoDspActivity;->InitItem(I)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 111
    const/4 v0, 0x1

    .line 112
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 123
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/CanPradoDspActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/ts/can/CanPradoDspActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 103
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanPradoDspActivity;->AddItem(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ts/can/CanPradoDspActivity;->GetAmpData()V

    .line 44
    iget-boolean v0, p0, Lcom/ts/can/CanPradoDspActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/ts/can/CanPradoDspActivity;->LayoutUI()V

    .line 48
    const/4 p1, 0x0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanPradoDspActivity;->mbLayout:Z

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanPradoDspActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanPradoDspActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->Update:I

    .line 58
    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mItemASL:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->fgASL:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/CanPradoDspActivity;->mItemAround:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->fgHhyx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 62
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanPradoDspActivity;->ResetData(Z)V

    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 182
    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->fgASL:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanPradoDspActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanPradoDspActivity;->AmpSet(II)V

    goto :goto_0

    .line 186
    :pswitch_1
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/CanPradoDspActivity;->mAmpData:Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaAMPInfo;->fgHhyx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanPradoDspActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanPradoDspActivity;->AmpSet(II)V

    goto :goto_0

    .line 179
    nop

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

    invoke-virtual {p0, v0}, Lcom/ts/can/CanPradoDspActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/ts/can/CanPradoDspActivity;->InitUI()V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 73
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanPradoDspActivity;->ResetData(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/CanPradoDspActivity;->QueryData()V

    .line 77
    return-void
.end method
