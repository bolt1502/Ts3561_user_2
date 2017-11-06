.class public Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBMWMiniCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_CAR_COMPUTER:I = 0x0

.field public static final ITEM_CAR_SETTINGS:I = 0x2

.field public static final ITEM_CAR_STATUS:I = 0x1


# instance fields
.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 31
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_pm:I

    sget v1, Lcom/ts/MainUI/R$string;->can_vehi_computer:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    .line 32
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v1, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    .line 33
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_vehi_setup:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    .line 34
    return-void
.end method


# virtual methods
.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 39
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 40
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 42
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 51
    :pswitch_0
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniCarStatusActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 59
    :pswitch_2
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarInfoActivity;->initUI()V

    .line 26
    return-void
.end method
