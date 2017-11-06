.class public Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarLzfsqActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_LZFSQ:I = 0x1

.field protected static final ITEM_MAX:I = 0x2

.field protected static final ITEM_MIN:I = 0x1

.field protected static final ITEM_QCQDSZDKQ:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanKadjarLzfsqActivity"

.field protected static final mLzfsqArr:[I


# instance fields
.field protected mItemLzfsq:Lcom/ts/canview/CanItemPopupList;

.field protected mItemQcqdszdkq:Lcom/ts/canview/CanItemSwitchList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

.field protected mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 34
    sget v2, Lcom/ts/MainUI/R$string;->can_zlz_fs:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_flz_qj:I

    aput v2, v0, v1

    .line 31
    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mLzfsqArr:[I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    .line 19
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 214
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 58
    sget v0, Lcom/ts/MainUI/R$string;->can_lzfsq:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mLzfsqArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mItemLzfsq:Lcom/ts/canview/CanItemPopupList;

    .line 59
    sget v0, Lcom/ts/MainUI/R$string;->can_qcqdszdkq:I

    const/4 v1, 0x2

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mItemQcqdszdkq:Lcom/ts/canview/CanItemSwitchList;

    .line 61
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->LayoutUI()V

    .line 62
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    const/4 v0, 0x1

    .line 133
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    .line 123
    goto :goto_0

    .line 126
    :pswitch_1
    const/4 v0, 0x0

    .line 127
    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->ShowItem(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    .line 73
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mItemLzfsq:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Lzfsq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mItemQcqdszdkq:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Qcqdszdkq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 77
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->IsHaveItem(I)Z

    move-result v0

    .line 141
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mItemLzfsq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mItemQcqdszdkq:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->ResetData(Z)V

    .line 163
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 204
    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 174
    :pswitch_0
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Qcqdszdkq:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->InitUI()V

    .line 54
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 192
    :pswitch_0
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 101
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 103
    const-string v0, "CanKadjarLzfsqActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->ResetData(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;->QueryData()V

    .line 92
    const-string v0, "CanKadjarLzfsqActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
