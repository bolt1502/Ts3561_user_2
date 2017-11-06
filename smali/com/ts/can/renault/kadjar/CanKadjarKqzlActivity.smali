.class public Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarKqzlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_KQZLQXXH:I = 0x1

.field protected static final ITEM_MAX:I = 0x1

.field protected static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanKadjarKqzlActivity"


# instance fields
.field protected mItemKqzlqxxh:Lcom/ts/canview/CanItemSwitchList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

.field protected mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    .line 18
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 192
    return-void
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/ts/MainUI/R$string;->can_kqzlqxxh:I

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mItemKqzlqxxh:Lcom/ts/canview/CanItemSwitchList;

    .line 50
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->LayoutUI()V

    .line 51
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_0
    const/4 v0, 0x0

    .line 113
    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->ShowItem(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V

    .line 57
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    .line 62
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mItemKqzlqxxh:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Kqzlqxxh:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 67
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->IsHaveItem(I)Z

    move-result v0

    .line 127
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mItemKqzlqxxh:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->ResetData(Z)V

    .line 145
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 182
    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 156
    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Kqzlqxxh:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->InitUI()V

    .line 44
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 171
    .line 176
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 91
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 93
    const-string v0, "CanKadjarKqzlActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 78
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->ResetData(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;->QueryData()V

    .line 82
    const-string v0, "CanKadjarKqzlActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
