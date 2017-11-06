.class public Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCs75CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DISPLAY:I = 0x1

.field public static final ITEM_HSJZDDJ:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanCs75CarInfoActivity"


# instance fields
.field private mItemDisplay:Lcom/ts/canview/CanItemIcoList;

.field protected mItemHsjzddj:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    .line 18
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 168
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 169
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 170
    iget-object v1, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 172
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 179
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 180
    iget-object v1, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 182
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 112
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_mfd:I

    sget v1, Lcom/ts/MainUI/R$string;->can_by_service:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    .line 113
    sget v0, Lcom/ts/MainUI/R$string;->can_zdhsjzd:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mItemHsjzddj:Lcom/ts/canview/CanItemSwitchList;

    .line 115
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_0
    const/4 v0, 0x1

    .line 134
    goto :goto_0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    .line 138
    goto :goto_0

    .line 130
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
    .line 121
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 125
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->ShowItem(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected NegSwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 62
    if-ne v0, p1, :cond_0

    .line 64
    const/4 v0, 0x2

    .line 67
    :cond_0
    return v0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 86
    const/16 v0, 0x52

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->Cs75CarQuery(II)V

    .line 87
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->Cs75GetCarInfo(Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;->HsjzddjUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;->HsjzddjUpdate:I

    invoke-static {v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;->HsjzddjUpdate:I

    .line 78
    iget-object v0, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mItemHsjzddj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;->Hsjzdzd:I

    invoke-virtual {p0, v1}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->SwSet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 82
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 151
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mItemHsjzddj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected SwSet(I)I
    .locals 1
    .param p1, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 52
    if-ne v0, p1, :cond_0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->ResetData(Z)V

    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 193
    :pswitch_0
    const-class v1, Lcom/ts/can/chana/cs75/CanCs75CarDisplayInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 197
    :pswitch_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CS75CarInfo;->Hsjzdzd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->NegSwSet(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->Cs75CarSet(II)V

    goto :goto_0

    .line 190
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
    .line 42
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->InitUI()V

    .line 46
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 217
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 105
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 93
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->LayoutUI()V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->ResetData(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/ts/can/chana/cs75/CanCs75CarInfoActivity;->QueryData()V

    .line 98
    return-void
.end method
