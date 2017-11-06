.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CarInfoActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4CarInfoActivity.java"


# static fields
.field private static final ITEM_OIL:I = 0x1

.field private static final ITEM_SETUP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddIconItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 34
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 35
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 37
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 16
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_setup:I

    .line 17
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarInfoActivity;->AddIconItem(III)Lcom/ts/canview/CanItemIcoList;

    .line 18
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_youhao:I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_oil:I

    .line 19
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarInfoActivity;->AddIconItem(III)Lcom/ts/canview/CanItemIcoList;

    .line 20
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 25
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

    .line 45
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 50
    :pswitch_1
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CarOilActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
