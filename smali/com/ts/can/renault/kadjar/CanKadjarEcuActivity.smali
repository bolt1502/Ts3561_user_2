.class public Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarEcuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemFsSetList$onFsSetClick;


# static fields
.field protected static final ITEM_AVG_CONSUMP:I = 0x1

.field protected static final ITEM_AVG_SPEED:I = 0x2

.field protected static final ITEM_MAX:I = 0x4

.field protected static final ITEM_MIN:I = 0x1

.field protected static final ITEM_RANGE:I = 0x3

.field protected static final ITEM_RESET:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanKadjarEcuActivity"


# instance fields
.field protected mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

.field protected mItemAvgConsump:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemAvgSpeed:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemRange:Lcom/ts/canview/CanItemIcoVal;

.field protected mItemReset:Lcom/ts/canview/CanItemFsSetList;

.field protected mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    .line 20
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 252
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 56
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_youhao:I

    sget v1, Lcom/ts/MainUI/R$string;->can_avg_consump:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->AddIcoVal(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgConsump:Lcom/ts/canview/CanItemIcoVal;

    .line 57
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_sudu:I

    sget v1, Lcom/ts/MainUI/R$string;->can_avg_spped:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->AddIcoVal(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemIcoVal;

    .line 58
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_kdlc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_dis_trav:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->AddIcoVal(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    .line 59
    sget v0, Lcom/ts/MainUI/R$string;->can_setup_reset:I

    const/4 v1, 0x4

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->AddFsSetItem(Lcom/ts/canview/CanItemFsSetList$onFsSetClick;II)Lcom/ts/canview/CanItemFsSetList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    .line 60
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    sget v1, Lcom/ts/MainUI/R$string;->can_sure_reset:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemFsSetList;->SetMsgText(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->LayoutUI()V

    .line 63
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    .line 145
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    const/4 v0, 0x1

    .line 167
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0

    .line 152
    :pswitch_1
    const/4 v0, 0x0

    .line 153
    goto :goto_0

    .line 156
    :pswitch_2
    const/4 v0, 0x0

    .line 157
    goto :goto_0

    .line 160
    :pswitch_3
    const/4 v0, 0x0

    .line 161
    goto :goto_0

    .line 145
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
    .line 136
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 140
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->ShowItem(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const v7, 0xffff

    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetEcu(Lcom/lgb/canmodule/CanDataInfo$KadjarECU;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->Update:I

    .line 74
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->AvgConsump:I

    if-lt v0, v7, :cond_2

    .line 76
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgConsump:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.- L/100KM"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->AvgSpeed:I

    if-lt v0, v7, :cond_3

    .line 85
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "--.- KM/H"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->Range:I

    const v1, 0x1ffff

    if-lt v0, v1, :cond_4

    .line 94
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "---- KM"

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_2
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgConsump:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%.1f L/100KM"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->AvgConsump:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%.1f KM/H"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->AvgSpeed:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    const-string v1, "%.1f KM"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mEcuData:Lcom/lgb/canmodule/CanDataInfo$KadjarECU;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$KadjarECU;->Range:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->IsHaveItem(I)Z

    move-result v0

    .line 175
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgConsump:Lcom/ts/canview/CanItemIcoVal;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(Z)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemIcoVal;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(Z)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemRange:Lcom/ts/canview/CanItemIcoVal;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(Z)V

    goto :goto_0

    .line 190
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemFsSetList;->ShowGone(Z)V

    goto :goto_0

    .line 175
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
    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->ResetData(Z)V

    .line 205
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 242
    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-virtual {p0, v2, v2}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->CarSet(II)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->InitUI()V

    .line 52
    return-void
.end method

.method public onFsItem(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "sure"    # Z

    .prologue
    .line 258
    if-eqz p2, :cond_0

    .line 260
    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    .line 263
    :cond_0
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 231
    .line 236
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 129
    const-string v0, "CanKadjarEcuActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->ResetData(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;->QueryData()V

    .line 118
    const-string v0, "CanKadjarEcuActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method
