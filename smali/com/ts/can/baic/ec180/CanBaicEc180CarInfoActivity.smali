.class public Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBaicEc180CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_KEEP_CLR:I = 0x1

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PWR_ENGRY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanBaicEc180CarInfoActivity"


# instance fields
.field private mItemKeepClr:Lcom/ts/canview/CanItemIcoList;

.field private mItemPwrEngery:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

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
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 175
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 106
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_units:I

    sget v2, Lcom/ts/MainUI/R$string;->can_units:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemKeepClr:Lcom/ts/canview/CanItemIcoList;

    .line 107
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_mfd:I

    sget v2, Lcom/ts/MainUI/R$string;->can_ec_nll:I

    invoke-direct {v0, p0, v1, v2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemPwrEngery:Lcom/ts/canview/CanItemIcoList;

    .line 109
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemKeepClr:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemPwrEngery:Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemKeepClr:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemPwrEngery:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    invoke-static {v0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 135
    :pswitch_0
    const/4 v0, 0x1

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    const/4 v0, 0x1

    .line 140
    goto :goto_0

    .line 132
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
    .line 122
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 126
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->ShowItem(I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BaicEcQuery(I)V

    .line 78
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 73
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 154
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemKeepClr:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->mItemPwrEngery:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->ResetData(Z)V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const-class v1, Lcom/ts/can/baic/ec180/CanBaicEC180DriveInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 192
    :pswitch_1
    const-class v1, Lcom/ts/can/baic/ec180/CanBaicEC180PwrInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 184
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
    .line 36
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->InitUI()V

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->ResetData(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->QueryData()V

    .line 90
    invoke-virtual {p0}, Lcom/ts/can/baic/ec180/CanBaicEc180CarInfoActivity;->LayoutUI()V

    .line 92
    return-void
.end method
