.class public Lcom/ts/can/CanGolfSetLightActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AUTO_HEADLIGHT:I = 0x3

.field public static final ITEM_BACKGROUND_ALL_LIGHT:I = 0xf

.field public static final ITEM_BACKGROUND_FORE_LIGHT:I = 0xe

.field public static final ITEM_BACKGROUND_LIGHT_COLOR:I = 0x10

.field public static final ITEM_BACKGROUND_TOP_LIGHT:I = 0xd

.field public static final ITEM_COMMING_FUNC:I = 0x8

.field public static final ITEM_DAYTIME_LIGHT:I = 0x5

.field public static final ITEM_DOOR_LIGHT:I = 0xb

.field public static final ITEM_DYNAMIC_LIGHT:I = 0x6

.field public static final ITEM_FOOTWELL_LIGHT:I = 0xc

.field public static final ITEM_INSTRUMENT_LIGHT:I = 0xa

.field public static final ITEM_LANE_FLASH:I = 0x4

.field public static final ITEM_LEAVING_FUNC:I = 0x9

.field private static final ITEM_MAX:I = 0x10

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_MOTORWAY_LIGHT:I = 0x7

.field public static final ITEM_SWITCH_TIME:I = 0x1

.field public static final ITEM_TRAVEL_MODE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanGolfSetLightActivity"

.field private static final mMenuLightColor:[I

.field private static final mMenuSwitchTime:[I

.field private static final mMenuTravelMode:[I


# instance fields
.field private mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

.field private mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

.field private mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

.field private mItemAllLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemAutoHeadLight:Lcom/ts/canview/CanItemCheckList;

.field private mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

.field private mItemDaytimeLight:Lcom/ts/canview/CanItemCheckList;

.field private mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemDynamicLight:Lcom/ts/canview/CanItemCheckList;

.field private mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemForeLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemLaneFlash:Lcom/ts/canview/CanItemCheckList;

.field private mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

.field private mItemLightColor:Lcom/ts/canview/CanItemPopupList;

.field private mItemMotorwayLight:Lcom/ts/canview/CanItemCheckList;

.field private mItemSwitchTime:Lcom/ts/canview/CanItemPopupList;

.field private mItemTopLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemTravelMode:Lcom/ts/canview/CanItemPopupList;

.field private mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

.field private mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayouted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-array v0, v5, [I

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_early:I

    aput v1, v0, v2

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_medium_s_s:I

    aput v1, v0, v3

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_late:I

    aput v1, v0, v4

    .line 50
    sput-object v0, Lcom/ts/can/CanGolfSetLightActivity;->mMenuSwitchTime:[I

    .line 58
    new-array v0, v4, [I

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_drive_right:I

    aput v1, v0, v2

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_drive_left:I

    aput v1, v0, v3

    .line 57
    sput-object v0, Lcom/ts/can/CanGolfSetLightActivity;->mMenuTravelMode:[I

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_magoten_light_color_0:I

    aput v1, v0, v2

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_magoten_light_color_1:I

    aput v1, v0, v3

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_magoten_light_color_2:I

    aput v1, v0, v4

    .line 67
    sget v1, Lcom/ts/MainUI/R$string;->can_magoten_light_color_3:I

    aput v1, v0, v5

    const/4 v1, 0x4

    .line 68
    sget v2, Lcom/ts/MainUI/R$string;->can_magoten_light_color_4:I

    aput v2, v0, v1

    .line 63
    sput-object v0, Lcom/ts/can/CanGolfSetLightActivity;->mMenuLightColor:[I

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfLight;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    .line 88
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    .line 89
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    .line 90
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    .line 92
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mbLayouted:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 515
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 516
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 517
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->IsHaveItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 443
    .local v0, "subType":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 446
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemSwitchTime:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTravelMode:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAutoHeadLight:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 458
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLaneFlash:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 462
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDaytimeLight:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 466
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDynamicLight:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 470
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemMotorwayLight:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 474
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 478
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 482
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 486
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 490
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 494
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 498
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 502
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 505
    :pswitch_f
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLightColor:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I
    .param p3, "arry"    # [I

    .prologue
    .line 531
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 532
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p2}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 533
    return-object v0
.end method

.method protected AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 523
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 524
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p2, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 525
    return-object v0
.end method

.method protected InitItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x5

    const/16 v3, 0x64

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 336
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 339
    :pswitch_0
    sget v0, Lcom/ts/MainUI/R$string;->can_sw_on_time:I

    sget-object v1, Lcom/ts/can/CanGolfSetLightActivity;->mMenuSwitchTime:[I

    invoke-virtual {p0, v0, p1, v1}, Lcom/ts/can/CanGolfSetLightActivity;->AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemSwitchTime:Lcom/ts/canview/CanItemPopupList;

    goto :goto_0

    .line 343
    :pswitch_1
    sget v0, Lcom/ts/MainUI/R$string;->can_trip_mode:I

    sget-object v1, Lcom/ts/can/CanGolfSetLightActivity;->mMenuTravelMode:[I

    invoke-virtual {p0, v0, p1, v1}, Lcom/ts/can/CanGolfSetLightActivity;->AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTravelMode:Lcom/ts/canview/CanItemPopupList;

    goto :goto_0

    .line 347
    :pswitch_2
    sget v0, Lcom/ts/MainUI/R$string;->can_headlight_in_rain:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAutoHeadLight:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 351
    :pswitch_3
    sget v0, Lcom/ts/MainUI/R$string;->can_lane_flash:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLaneFlash:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 355
    :pswitch_4
    sget v0, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDaytimeLight:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 359
    :pswitch_5
    sget v0, Lcom/ts/MainUI/R$string;->can_dynamic_light_assist:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDynamicLight:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 363
    :pswitch_6
    sget v0, Lcom/ts/MainUI/R$string;->can_motoway_light:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemMotorwayLight:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 367
    :pswitch_7
    sget v0, Lcom/ts/MainUI/R$string;->can_ins_sw_light:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    .line 368
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 369
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 370
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto :goto_0

    .line 374
    :pswitch_8
    sget v0, Lcom/ts/MainUI/R$string;->can_coming_func:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    .line 375
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 376
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 377
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto :goto_0

    .line 381
    :pswitch_9
    sget v0, Lcom/ts/MainUI/R$string;->can_leaving_func:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    .line 382
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v5}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 383
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 384
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto/16 :goto_0

    .line 388
    :pswitch_a
    sget v0, Lcom/ts/MainUI/R$string;->can_evt_light:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    .line 389
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 390
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 391
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto/16 :goto_0

    .line 395
    :pswitch_b
    sget v0, Lcom/ts/MainUI/R$string;->can_foot_light:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    .line 396
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 397
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 398
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto/16 :goto_0

    .line 402
    :pswitch_c
    sget v0, Lcom/ts/MainUI/R$string;->can_magoten_bg_top_light:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    .line 404
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 405
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 406
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto/16 :goto_0

    .line 411
    :pswitch_d
    sget v0, Lcom/ts/MainUI/R$string;->can_magoten_bg_fore_light:I

    .line 410
    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    .line 412
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 413
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 414
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto/16 :goto_0

    .line 418
    :pswitch_e
    sget v0, Lcom/ts/MainUI/R$string;->can_magoten_bg_all_light:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanGolfSetLightActivity;->AddProgressItem(II)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    .line 420
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 421
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 422
    iget-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->SetUserValText()V

    goto/16 :goto_0

    .line 426
    :pswitch_f
    sget v0, Lcom/ts/MainUI/R$string;->can_magoten_bg_light_color:I

    .line 427
    sget-object v1, Lcom/ts/can/CanGolfSetLightActivity;->mMenuLightColor:[I

    .line 426
    invoke-virtual {p0, v0, p1, v1}, Lcom/ts/can/CanGolfSetLightActivity;->AddPopupItem(II[I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLightColor:Lcom/ts/canview/CanItemPopupList;

    goto/16 :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 243
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 245
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 249
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetLightActivity;->InitItem(I)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->SwitchTime:I

    .line 267
    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;->TravalMode:I

    .line 271
    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->HeadControl:I

    .line 275
    goto :goto_0

    .line 278
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->LaneFlash:I

    .line 279
    goto :goto_0

    .line 282
    :pswitch_4
    const/4 v0, 0x0

    .line 283
    goto :goto_0

    .line 286
    :pswitch_5
    const/4 v0, 0x0

    .line 287
    goto :goto_0

    .line 290
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->InstructLight:I

    .line 291
    goto :goto_0

    .line 294
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->CommingHomeFunc:I

    .line 295
    goto :goto_0

    .line 298
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->LeavingHomeFunc:I

    .line 299
    goto :goto_0

    .line 302
    :pswitch_9
    const/4 v0, 0x0

    .line 303
    goto :goto_0

    .line 306
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;->Doorambient:I

    .line 307
    goto :goto_0

    .line 310
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;->FootwellLight:I

    .line 311
    goto :goto_0

    .line 314
    :pswitch_c
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 315
    goto :goto_0

    .line 318
    :pswitch_d
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 319
    goto :goto_0

    .line 322
    :pswitch_e
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 323
    goto :goto_0

    .line 326
    :pswitch_f
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 327
    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 254
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 258
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetLightActivity;->AddItem(I)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 8

    .prologue
    const/16 v7, 0x51

    const/16 v6, 0x50

    const/16 v5, 0x41

    const/16 v4, 0x40

    const-wide/16 v2, 0x5

    .line 201
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {v5, v6}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 204
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetLightActivity;->Sleep(J)V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-static {v5, v7}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetLightActivity;->Sleep(J)V

    .line 213
    :cond_1
    invoke-static {v4, v6}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetLightActivity;->Sleep(J)V

    .line 215
    invoke-static {v4, v7}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 216
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 217
    .local v0, "subType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 218
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanGolfSetLightActivity;->Sleep(J)V

    .line 219
    const/16 v1, 0x52

    invoke-static {v4, v1}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 221
    :cond_2
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfGetLight(Lcom/lgb/canmodule/CanDataInfo$GolfLight;Lcom/lgb/canmodule/CanDataInfo$GolfLight2;)V

    .line 108
    iget-boolean v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mbLayouted:Z

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfGetAdtLight(Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;)V

    .line 111
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight1:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mAdtLight2:Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfAdtLight2;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetLightActivity;->LayoutUI()V

    .line 117
    iput-boolean v5, p0, Lcom/ts/can/CanGolfSetLightActivity;->mbLayouted:Z

    .line 118
    const/4 p1, 0x0

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->Update:I

    .line 130
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemSwitchTime:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->SwitchOnTime:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 131
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAutoHeadLight:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->fgAHCIR:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 132
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLaneFlash:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->fgLaneChangeFlash:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDaytimeLight:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->fgDaytimeLights:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 134
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->Instrument:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 135
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemInstrumentLight:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->Instrument:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->ComingHomeFunc:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 138
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->ComingHomeFunc:I

    if-nez v1, :cond_7

    .line 140
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(I)V

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->LeavingHomeFunc:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 149
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->LeavingHomeFunc:I

    if-nez v1, :cond_8

    .line 151
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(I)V

    .line 159
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->Update:I

    .line 163
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTravelMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->fgTraModeLeft:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 165
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->DoorAmbientLight:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 166
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDoorLight:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->DoorAmbientLight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->FootwellLight:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 169
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemFootwellLight:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->FootwellLight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemDynamicLight:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->DynamicLightAss:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 172
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemMotorwayLight:Lcom/ts/canview/CanItemCheckList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->fgMotorwayLight:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 176
    :cond_4
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    .line 177
    .local v0, "subType":I
    if-ne v0, v5, :cond_6

    .line 178
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->MagotenGetBackgroundlight(Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;)V

    .line 180
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Update:I

    invoke-static {v1}, Lcom/ts/can/CanGolfSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    :cond_5
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Update:I

    .line 184
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Cdkjzmd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 185
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemTopLight:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Cdkjzmd:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Qbkjzmd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 188
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemForeLight:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Qbkjzmd:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Syqyzm:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 191
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemAllLight:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Syqyzm:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLightColor:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mBgLightData:Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfBackgroundLighting;->Hjzmsd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 197
    .end local v0    # "subType":I
    :cond_6
    return-void

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemCommingFunc:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->ComingHomeFunc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_8
    iget-object v1, p0, Lcom/ts/can/CanGolfSetLightActivity;->mItemLeavingFunc:Lcom/ts/canview/CanItemProgressList;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->LeavingHomeFunc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetLightActivity;->ResetData(Z)V

    .line 638
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 574
    packed-switch p1, :pswitch_data_0

    .line 609
    :goto_0
    return-void

    .line 577
    :pswitch_0
    const/16 v0, 0x54

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 581
    :pswitch_1
    const/16 v0, 0x55

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 585
    :pswitch_2
    const/16 v0, 0x53

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 589
    :pswitch_3
    const/16 v0, 0x57

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 593
    :pswitch_4
    const/16 v0, 0x58

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 597
    :pswitch_5
    const/16 v0, 0x5b

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 601
    :pswitch_6
    const/16 v0, 0x5c

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 604
    :pswitch_7
    const/16 v0, 0x5d

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 541
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 544
    :pswitch_0
    const/16 v1, 0x51

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->fgAHCIR:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 548
    :pswitch_1
    const/16 v1, 0x52

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->fgLaneChangeFlash:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 552
    :pswitch_2
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight1Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight;->fgDaytimeLights:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 556
    :pswitch_3
    const/16 v1, 0x5a

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->DynamicLightAss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 560
    :pswitch_4
    const/16 v1, 0x59

    iget-object v2, p0, Lcom/ts/can/CanGolfSetLightActivity;->mLight2Data:Lcom/lgb/canmodule/CanDataInfo$GolfLight2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GolfLight2;->fgMotorwayLight:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanGolfSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetLightActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetLightActivity;->InitUI()V

    .line 103
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 615
    sparse-switch p1, :sswitch_data_0

    .line 631
    :goto_0
    return-void

    .line 618
    :sswitch_0
    const/16 v0, 0x50

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 622
    :sswitch_1
    const/16 v0, 0x56

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 626
    :sswitch_2
    const/16 v0, 0x5e

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 238
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 227
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanGolfSetLightActivity;->ResetData(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/ts/can/CanGolfSetLightActivity;->QueryData()V

    .line 231
    return-void
.end method
