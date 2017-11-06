.class public Lcom/ts/can/CanHondaOldCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaOldCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_COMPASS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanHondaOldCarInfoActivity"


# instance fields
.field protected mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-class v1, Lcom/ts/can/CanHondaCompassActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaOldCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaOldCarInfoActivity;->setContentView(I)V

    .line 28
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaOldCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 30
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_compass:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaOldCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    .line 31
    iget-object v0, p0, Lcom/ts/can/CanHondaOldCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 32
    iget-object v0, p0, Lcom/ts/can/CanHondaOldCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaOldCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 48
    return-void
.end method
