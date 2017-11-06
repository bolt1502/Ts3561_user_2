.class public Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;
.super Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;
.source "CanFlatDobloCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_DISPLAY:I = 0x1

.field public static final ITEM_LIGHT:I = 0x2

.field public static final ITEM_LOCK:I = 0x3

.field public static final ITEM_TIME:I = 0x4


# instance fields
.field private mItemDisplay:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mItemTime:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 41
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_display:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    .line 42
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_light_setup:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 43
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v1, Lcom/ts/MainUI/R$string;->can_door_lock_set:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 44
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_date_time:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_time_set:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->mItemTime:Lcom/ts/canview/CanItemIcoList;

    .line 46
    return-void
.end method


# virtual methods
.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 51
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 52
    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 54
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const-class v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 66
    :pswitch_1
    const-class v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 69
    :pswitch_2
    const-class v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 72
    :pswitch_3
    const-class v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetTimeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloCarInfoActivity;->initUI()V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onResume()V

    .line 35
    return-void
.end method
