.class public Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;
.super Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.source "CanGqcqSetACActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_FLZMS:I = 0x4

.field public static final ITEM_LOOP:I = 0x2

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SSQX:I = 0x3

.field public static final ITEM_YSJ:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanGqcqSetACActivity"


# instance fields
.field private mItemFlzms:Lcom/ts/canview/CanItemPopupList;

.field private mItemLoop:Lcom/ts/canview/CanItemPopupList;

.field private mItemSsqx:Lcom/ts/canview/CanItemPopupList;

.field private mItemYsj:Lcom/ts/canview/CanItemPopupList;

.field protected mLoopArr:[I

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSsqxArr:[I

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;-><init>()V

    .line 30
    new-array v0, v4, [I

    .line 31
    sget v1, Lcom/ts/MainUI/R$string;->can_type_mode_auto:I

    aput v1, v0, v2

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_shoudong:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mLoopArr:[I

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_sdhm:I

    aput v1, v0, v2

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_normal:I

    aput v1, v0, v3

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_sdks:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSsqxArr:[I

    .line 16
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 172
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 173
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 174
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 176
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 182
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 183
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 184
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 186
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_ysj:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSWArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemYsj:Lcom/ts/canview/CanItemPopupList;

    .line 111
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_loop:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mLoopArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemLoop:Lcom/ts/canview/CanItemPopupList;

    .line 112
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_ssqx:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSsqxArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemSsqx:Lcom/ts/canview/CanItemPopupList;

    .line 113
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_flzms:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSWArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemFlzms:Lcom/ts/canview/CanItemPopupList;

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->LayoutUI()V

    .line 117
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":I
    const/4 v0, 0x1

    .line 139
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 127
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->ShowItem(I)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->GetSetData()V

    .line 66
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemYsj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->YsjSta:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemLoop:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->LoopStyle:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemSsqx:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->SsxQx:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemFlzms:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Flzms:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 79
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->IsHaveItem(I)Z

    move-result v0

    .line 147
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemYsj:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemLoop:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemSsqx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->mItemFlzms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 147
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
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->ResetData(Z)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->InitUI()V

    .line 60
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 215
    packed-switch p1, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 218
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->CarSet(II)V

    goto :goto_0

    .line 222
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->CarSet(II)V

    goto :goto_0

    .line 226
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->CarSet(II)V

    goto :goto_0

    .line 230
    :pswitch_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->CarSet(II)V

    goto :goto_0

    .line 215
    nop

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
    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onResume()V

    .line 90
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->ResetData(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetACActivity;->QueryData()V

    .line 94
    const-string v0, "CanGqcqSetACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
