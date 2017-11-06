.class public Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;
.super Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.source "CanGqcqSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_BWHJ:I = 0x1

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RXD:I = 0x3

.field public static final ITEM_WDZXFZ:I = 0x2

.field public static final ITEM_ZDDGLMD:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanGqcqSetLightActivity"


# instance fields
.field protected mBwhjArr:[I

.field private mItemBwhj:Lcom/ts/canview/CanItemPopupList;

.field private mItemRxd:Lcom/ts/canview/CanItemPopupList;

.field private mItemWdzxfz:Lcom/ts/canview/CanItemPopupList;

.field private mItemZddglmd:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mZddglmdArr:[I

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;-><init>()V

    .line 29
    new-array v0, v5, [I

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 31
    sget v1, Lcom/ts/MainUI/R$string;->can_only_jgd:I

    aput v1, v0, v3

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_jghwd:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mBwhjArr:[I

    .line 36
    new-array v0, v5, [I

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjd:I

    aput v1, v0, v2

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_cdzj:I

    aput v1, v0, v3

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjg:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mZddglmdArr:[I

    .line 16
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 172
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 173
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 175
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 180
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 181
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 182
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 184
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 108
    sget v0, Lcom/ts/MainUI/R$string;->can_bwhj:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mBwhjArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemBwhj:Lcom/ts/canview/CanItemPopupList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$string;->can_wdzxfz:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSWArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemWdzxfz:Lcom/ts/canview/CanItemPopupList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_light_rxd:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSWArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemPopupList;

    .line 111
    sget v0, Lcom/ts/MainUI/R$string;->can_zddglmd:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mZddglmdArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemZddglmd:Lcom/ts/canview/CanItemPopupList;

    .line 113
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->LayoutUI()V

    .line 115
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 137
    .local v0, "ret":I
    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 125
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->ShowItem(I)V

    .line 121
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
    .line 65
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->GetSetData()V

    .line 66
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemBwhj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Bwhj:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemWdzxfz:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Wdzxfz:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Rxd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemZddglmd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->AutoLightSens:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 77
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 146
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemBwhj:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemWdzxfz:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemRxd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->mItemZddglmd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 146
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
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->ResetData(Z)V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->InitUI()V

    .line 61
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 220
    :pswitch_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 224
    :pswitch_2
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 228
    :pswitch_3
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onPause()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onResume()V

    .line 88
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->ResetData(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetLightActivity;->QueryData()V

    .line 92
    const-string v0, "CanGqcqSetLightActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
