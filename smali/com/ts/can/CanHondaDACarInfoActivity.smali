.class public Lcom/ts/can/CanHondaDACarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaDACarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CAR_SET:I = 0x8

.field public static final ITEM_COMPASS:I = 0x1

.field public static final ITEM_CONSUMPTION:I = 0x2

.field public static final ITEM_DISTANCE:I = 0x4

.field public static final ITEM_DISTANCE_ILL:I = 0x5

.field public static final ITEM_JSPZXTSZ:I = 0x9

.field public static final ITEM_LOCK:I = 0x6

.field public static final ITEM_MOTO_R_DOOR:I = 0xb

.field public static final ITEM_REMOTE_LOCK:I = 0x7

.field public static final ITEM_SYSTEM_SET:I = 0xa

.field public static final ITEM_TYPE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanHondaDACarInfoActivity"

.field private static final mTypeArr:[I


# instance fields
.field protected mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemCarType:Lcom/ts/canview/CanItemCarType;

.field protected mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemConsumption:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemDisatnce:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemDistanceIll:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemJspzXtsz:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemLock:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemMotoRearDoor:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemRemoteLock:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemSystemSet:Lcom/ts/canview/CanItemTextBtnList;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 51
    sget v2, Lcom/ts/MainUI/R$string;->can_type_other:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 52
    sget v2, Lcom/ts/MainUI/R$string;->can_cartype_15city:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 53
    sget v2, Lcom/ts/MainUI/R$string;->can_15_crv_hi:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 54
    sget v2, Lcom/ts/MainUI/R$string;->can_16_sy:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 55
    sget v2, Lcom/ts/MainUI/R$string;->can_16_sy_camera:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 56
    sget v2, Lcom/ts/MainUI/R$string;->can_odyssey:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 57
    sget v2, Lcom/ts/MainUI/R$string;->can_crv_2017_rzc:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 58
    sget v2, Lcom/ts/MainUI/R$string;->can_crv_2017_rzc_camera:I

    aput v2, v0, v1

    .line 49
    sput-object v0, Lcom/ts/can/CanHondaDACarInfoActivity;->mTypeArr:[I

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    const/16 v1, 0xd2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDAQuery(II)V

    .line 160
    const-class v1, Lcom/ts/can/CanHondaCompassActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 164
    :pswitch_2
    const-class v1, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 167
    :pswitch_3
    const-class v1, Lcom/ts/can/CanHondDACarDistanceActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 170
    :pswitch_4
    const-class v1, Lcom/ts/can/CanHondaADACarDistanceIllActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 173
    :pswitch_5
    const-class v1, Lcom/ts/can/CanHondaDACarCsSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 176
    :pswitch_6
    const-class v1, Lcom/ts/can/CanHondDACarRemoteLockSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 179
    :pswitch_7
    const-class v1, Lcom/ts/can/CanHondaDACarSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 182
    :pswitch_8
    const-class v1, Lcom/ts/can/CanHondDACarDrivAssistSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 185
    :pswitch_9
    const-class v1, Lcom/ts/can/CanHondDACarSystemSetActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 188
    :pswitch_a
    const-class v1, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDACarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarInfoActivity;->setContentView(I)V

    .line 68
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 70
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v3, Lcom/ts/can/CanHondaDACarInfoActivity;->mTypeArr:[I

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 71
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 73
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_compass:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    .line 74
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 76
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_consumption:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemConsumption:Lcom/ts/canview/CanItemTextBtnList;

    .line 77
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemConsumption:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 79
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_distance_sz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDisatnce:Lcom/ts/canview/CanItemTextBtnList;

    .line 80
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDisatnce:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, p0, v7}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 81
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_distanceill_sz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDistanceIll:Lcom/ts/canview/CanItemTextBtnList;

    .line 82
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDistanceIll:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, p0, v8}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 83
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cssz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemTextBtnList;

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, p0, v9}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 85
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_remote_lock:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemRemoteLock:Lcom/ts/canview/CanItemTextBtnList;

    .line 86
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemRemoteLock:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 87
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_csshez:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 88
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 89
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_jsfzxysz:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemJspzXtsz:Lcom/ts/canview/CanItemTextBtnList;

    .line 90
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemJspzXtsz:Lcom/ts/canview/CanItemTextBtnList;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 91
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_system_set:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemSystemSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 92
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemSystemSet:Lcom/ts/canview/CanItemTextBtnList;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 93
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_moto_rear_door:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemMotoRearDoor:Lcom/ts/canview/CanItemTextBtnList;

    .line 94
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemMotoRearDoor:Lcom/ts/canview/CanItemTextBtnList;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemConsumption:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDisatnce:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDistanceIll:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemRemoteLock:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemJspzXtsz:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemSystemSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemMotoRearDoor:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 108
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 109
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-eq v0, v9, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 131
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 117
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemConsumption:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDisatnce:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemDistanceIll:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemRemoteLock:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemJspzXtsz:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemSystemSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemMotoRearDoor:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v0, v6}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0
.end method

.method public onItem(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 199
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 201
    const-string v0, "CanHondaDACarInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 203
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 205
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 146
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 147
    .local v0, "sub":I
    const-string v1, "CanHondaDACarInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subtype = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/ts/can/CanHondaDACarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 149
    return-void
.end method
