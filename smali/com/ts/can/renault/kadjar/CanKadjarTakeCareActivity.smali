.class public Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarTakeCareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_KQZL:I = 0x1

.field protected static final ITEM_LZFSQ:I = 0x2

.field protected static final ITEM_MAX:I = 0x2

.field protected static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanKadjarTakeCareActivity"


# instance fields
.field protected mItemKqzl:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemLzfsq:Lcom/ts/canview/CanItemTextBtnList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

.field protected mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    .line 18
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 205
    return-void
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 50
    sget v0, Lcom/ts/MainUI/R$string;->can_kqzl:I

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->AddTextBtn(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mItemKqzl:Lcom/ts/canview/CanItemTextBtnList;

    .line 51
    sget v0, Lcom/ts/MainUI/R$string;->can_lzfsq:I

    const/4 v1, 0x2

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->AddTextBtn(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mItemLzfsq:Lcom/ts/canview/CanItemTextBtnList;

    .line 53
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->LayoutUI()V

    .line 54
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    const/4 v0, 0x1

    .line 124
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_0
    const/4 v0, 0x0

    .line 114
    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
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
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->ShowItem(I)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    .line 68
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->IsHaveItem(I)Z

    move-result v0

    .line 132
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mItemKqzl:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->mItemLzfsq:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->ResetData(Z)V

    .line 154
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 195
    .line 200
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 165
    :pswitch_0
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarKqzlActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 169
    :pswitch_1
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarLzfsqActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->InitUI()V

    .line 46
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 184
    .line 189
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 92
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 94
    const-string v0, "CanKadjarTakeCareActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 79
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->ResetData(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;->QueryData()V

    .line 83
    const-string v0, "CanKadjarTakeCareActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
