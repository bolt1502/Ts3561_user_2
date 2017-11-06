.class public Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanRWRx5CarInfoActivity.java"


# static fields
.field private static final ITEM_LIGHT:I = 0x0

.field private static final ITEM_LOCK:I = 0x1

.field private static final ITEM_OTHER:I = 0x2


# instance fields
.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 26
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v2, Lcom/ts/MainUI/R$string;->can_c4_l_light:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    .line 27
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v2, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    .line 28
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v2, Lcom/ts/MainUI/R$string;->can_other_set:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    .line 29
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 34
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-class v1, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 49
    :pswitch_1
    const-class v1, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 52
    :pswitch_2
    const-class v1, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/saic/rx5/CanRWRx5CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
