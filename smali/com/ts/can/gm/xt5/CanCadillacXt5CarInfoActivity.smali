.class public Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanCadillacXt5CarInfoActivity.java"


# static fields
.field public static final ITEM_CAR_TYPE:I = 0x0

.field public static final ITEM_IAP:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x0

.field public static final ITEM_STATUS:I = 0x1


# instance fields
.field private mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field private mItemIap:Lcom/ts/canview/CanItemIcoList;

.field private mItemStatus:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    return-void
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->ShowItem(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->isHaveItem(I)Z

    move-result v0

    .line 81
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemStatus:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowArrow(Z)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemIap:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowArrow(Z)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    .line 115
    goto :goto_0

    .line 118
    :pswitch_1
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 56
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 57
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v3, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 58
    iget-object v2, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v4, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    move-object v6, p0

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemStatus:Lcom/ts/canview/CanItemIcoList;

    .line 59
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_golf_icon03:I

    sget v2, Lcom/ts/MainUI/R$string;->can_can_iap:I

    const/4 v3, 0x2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemIap:Lcom/ts/canview/CanItemIcoList;

    .line 60
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v0, v5}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 61
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 31
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 34
    :pswitch_0
    const-class v1, Lcom/ts/can/gm/xt5/CanCadillacXt5CarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 38
    :pswitch_1
    const-class v1, Lcom/ts/can/gm/xt5/CanCadillacXt5CarStatusActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 42
    :pswitch_2
    const-class v1, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/ts/can/CanCommonActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->ResetData(Z)V

    .line 105
    const-string v0, "CanBaseActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/ts/can/gm/xt5/CanCadillacXt5CarInfoActivity;->LayoutUI()V

    .line 107
    return-void
.end method
