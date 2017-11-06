.class public Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBMWMiniCarSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_CAR_DOOR:I = 0x4

.field public static final ITEM_DATE_TIME:I = 0x1

.field public static final ITEM_INFO_DISPLAY:I = 0x0

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_SPEED:I = 0x5

.field public static final ITEM_UNIT:I = 0x2


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
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->can_display:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 36
    sget v0, Lcom/ts/MainUI/R$string;->can_time_date:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 37
    sget v0, Lcom/ts/MainUI/R$string;->can_units:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 38
    sget v0, Lcom/ts/MainUI/R$string;->can_light_setup:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 39
    sget v0, Lcom/ts/MainUI/R$string;->can_door_lock_set:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 40
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_limit:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 41
    return-void
.end method


# virtual methods
.method protected AddIcoItem(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 46
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 48
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 59
    :pswitch_1
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 62
    :pswitch_2
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 65
    :pswitch_3
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 68
    :pswitch_4
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 71
    :pswitch_5
    const-class v1, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarSettingsActivity;->initUI()V

    .line 30
    return-void
.end method
