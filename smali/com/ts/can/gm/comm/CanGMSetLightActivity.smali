.class public Lcom/ts/can/gm/comm/CanGMSetLightActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGMSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DDYS:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_XCD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGMCarInfoActivity"

.field private static final mDdysArr:[I


# instance fields
.field private mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

.field private mItemDdys:Lcom/ts/canview/CanItemPopupList;

.field private mItemXcd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 30
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->can_1min:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_2min:I

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mDdysArr:[I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 180
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 182
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 183
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$string;->can_xcd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    .line 123
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lsddys:I

    sget-object v2, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mDdysArr:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    .line 124
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->XCD:I

    .line 145
    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->LSDDYS:I

    .line 149
    goto :goto_0

    .line 141
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
    .line 132
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 136
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->ShowItem(I)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->UpdateOnce:I

    if-nez v0, :cond_0

    .line 95
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMQuery(I)V

    .line 97
    :cond_0
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->GetSetData()V

    .line 60
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtLight(Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;)V

    .line 61
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->Update:I

    .line 67
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->LayoutUI()V

    .line 68
    const/4 p1, 0x0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mbLayout:Z

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 84
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->XCD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->LSDDYS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 89
    :cond_3
    return-void
.end method

.method protected ShowItem(I)V
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 162
    .local v0, "show":Z
    const-string v1, "CanGMCarInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", show = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->ResetData(Z)V

    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 192
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 195
    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->XCD:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 192
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
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->InitUI()V

    .line 53
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 217
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 219
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 114
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->ResetData(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetLightActivity;->QueryData()V

    .line 107
    return-void
.end method
