.class public Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzdCx5CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CONV:I = 0x3

.field public static final ITEM_LANG:I = 0x4

.field public static final ITEM_LINGHT:I = 0x2

.field public static final ITEM_LOCK:I = 0x1

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanMzdCx5CarInfoActivity"


# instance fields
.field private mItemConv:Lcom/ts/canview/CanItemIcoList;

.field private mItemLang:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 188
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 190
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 192
    return-object v0
.end method

.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 198
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 199
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 201
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 114
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock3:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_light_set:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$drawable;->can_golf_icon12:I

    sget v1, Lcom/ts/MainUI/R$string;->can_ssblx:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light2:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_lang:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemIcoList;

    .line 119
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    const/4 v0, 0x1

    .line 138
    goto :goto_0

    .line 141
    :pswitch_1
    const/4 v0, 0x1

    .line 142
    goto :goto_0

    .line 145
    :pswitch_2
    const/4 v0, 0x1

    .line 146
    goto :goto_0

    .line 149
    :pswitch_3
    const/4 v0, 0x1

    .line 150
    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 129
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->ShowItem(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5Query(I)V

    .line 85
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 80
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 163
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->ResetData(Z)V

    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 213
    :pswitch_0
    const-class v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 217
    :pswitch_1
    const-class v1, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 221
    :pswitch_2
    const-class v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 225
    :pswitch_3
    const-class v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LanguageActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->InitUI()V

    .line 48
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
    const-string v0, "CanMzdCx5CarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 91
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->ResetData(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->QueryData()V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5CarInfoActivity;->LayoutUI()V

    .line 96
    const-string v0, "CanMzdCx5CarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
