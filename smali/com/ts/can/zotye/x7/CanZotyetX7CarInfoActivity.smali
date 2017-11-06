.class public Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanZotyetX7CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_FWDLDDJ:I = 0x1

.field public static final ITEM_FWDSW:I = 0x2

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ZYLRSW:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanZotyetX7CarInfoActivity"


# instance fields
.field private mItemFwdSw:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

.field protected mItemZylrSw:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    .line 20
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 191
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 192
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 195
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 202
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 203
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 205
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 121
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_fwdlddj:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

    .line 122
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_env_light:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdSw:Lcom/ts/canview/CanItemSwitchList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$string;->can_zylrkg:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemZylrSw:Lcom/ts/canview/CanItemSwitchList;

    .line 128
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    invoke-static {v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    const/4 v0, 0x1

    .line 147
    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v0, 0x1

    .line 151
    goto :goto_0

    .line 154
    :pswitch_2
    const/4 v0, 0x1

    .line 155
    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 138
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->ShowItem(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected NegSwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    if-ne v0, p1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :cond_0
    return v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 95
    const/16 v0, 0x41

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->ZotyeQuery(II)V

    .line 96
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtDmX7GetCarData(Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;)V

    .line 80
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->Update:I

    .line 85
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->Fwdlddj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdSw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->FwdSw:I

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemZylrSw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->ZylrSw:I

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 91
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 169
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdlddj:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemFwdSw:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mItemZylrSw:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected SwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 59
    if-ne v0, p1, :cond_0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->ResetData(Z)V

    .line 245
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 232
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 234
    const/16 v0, 0x95

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarSet(II)V

    .line 236
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const/16 v1, 0x94

    iget-object v2, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->FwdSw:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarSet(II)V

    goto :goto_0

    .line 220
    :pswitch_1
    const/16 v1, 0x93

    iget-object v2, p0, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtCarSet;->ZylrSw:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ZtDmX7CarSet(II)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->InitUI()V

    .line 53
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 251
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
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    invoke-virtual {p0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->LayoutUI()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->ResetData(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/ts/can/zotye/x7/CanZotyetX7CarInfoActivity;->QueryData()V

    .line 107
    return-void
.end method
