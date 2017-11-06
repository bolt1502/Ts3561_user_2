.class public Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_CAR_ECU:I = 0x2

.field protected static final ITEM_CAR_TYPE:I = 0x0

.field protected static final ITEM_MAX:I = 0x5

.field protected static final ITEM_MIN:I = 0x0

.field protected static final ITEM_PARK_ASS:I = 0x1

.field protected static final ITEM_SYSTEM:I = 0x5

.field protected static final ITEM_TAKE_CARE:I = 0x3

.field protected static final ITEM_USER_SET:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanKadjarCarInfoActivity"


# instance fields
.field protected mItemCarEcu:Lcom/ts/canview/CanItemIcoList;

.field protected mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field protected mItemParkAss:Lcom/ts/canview/CanItemIcoList;

.field protected mItemSystem:Lcom/ts/canview/CanItemIcoList;

.field protected mItemTakeCare:Lcom/ts/canview/CanItemIcoList;

.field protected mItemUserSet:Lcom/ts/canview/CanItemIcoList;

.field protected mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    .line 57
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v2, 0x0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 58
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_cds:I

    sget v1, Lcom/ts/MainUI/R$string;->can_bcfz:I

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemParkAss:Lcom/ts/canview/CanItemIcoList;

    .line 59
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_mfd:I

    sget v1, Lcom/ts/MainUI/R$string;->can_czdn:I

    const/4 v2, 0x2

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemCarEcu:Lcom/ts/canview/CanItemIcoList;

    .line 60
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_ac:I

    const-string v1, "Take Care"

    const/4 v2, 0x3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;ILjava/lang/String;I)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemTakeCare:Lcom/ts/canview/CanItemIcoList;

    .line 61
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_yhsz:I

    const/4 v2, 0x4

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemUserSet:Lcom/ts/canview/CanItemIcoList;

    .line 62
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v1, Lcom/ts/MainUI/R$string;->can_system:I

    const/4 v2, 0x5

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemSystem:Lcom/ts/canview/CanItemIcoList;

    .line 64
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->LayoutUI()V

    .line 65
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x1

    .line 139
    const/4 v0, 0x1

    .line 140
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_1
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    .line 144
    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v0, 0x0

    .line 148
    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, 0x0

    .line 152
    goto :goto_0

    .line 155
    :pswitch_3
    const/4 v0, 0x0

    .line 156
    goto :goto_0

    .line 159
    :pswitch_4
    const/4 v0, 0x0

    .line 160
    goto :goto_0

    :cond_0
    move v0, v1

    .line 165
    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->ShowItem(I)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 98
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 174
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemParkAss:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemCarEcu:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemTakeCare:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemUserSet:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 193
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->mItemSystem:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->ResetData(Z)V

    .line 208
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 265
    .line 270
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 219
    :pswitch_0
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 223
    :pswitch_1
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 227
    :pswitch_2
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarEcuActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 231
    :pswitch_3
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarTakeCareActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 235
    :pswitch_4
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 239
    :pswitch_5
    const-class v1, Lcom/ts/can/renault/kadjar/CanKadjarSystemActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->InitUI()V

    .line 53
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 254
    .line 259
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 122
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 124
    const-string v0, "CanKadjarCarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 109
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->ResetData(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarCarInfoActivity;->QueryData()V

    .line 112
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    .line 113
    const-string v0, "CanKadjarCarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
