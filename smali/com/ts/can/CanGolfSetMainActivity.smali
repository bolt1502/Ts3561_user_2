.class public Lcom/ts/can/CanGolfSetMainActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ITEM_CHAIR:I = 0xb

.field public static final ITEM_DRIVE_ASS:I = 0x3

.field public static final ITEM_ESC_SYSTEM:I = 0x1

.field public static final ITEM_FACTORY_SET:I = 0xd

.field public static final ITEM_LIGHT:I = 0x5

.field public static final ITEM_MFD:I = 0x8

.field public static final ITEM_MW:I = 0x6

.field public static final ITEM_OC:I = 0x7

.field public static final ITEM_PM:I = 0x4

.field public static final ITEM_SERVICE:I = 0xc

.field public static final ITEM_TIME_DATE:I = 0x9

.field public static final ITEM_TYRES:I = 0x2

.field public static final ITEM_UNITS:I = 0xa

.field protected static final TAG:Ljava/lang/String; = "CanGolfSetMainActivity"


# instance fields
.field protected mItemChair:Lcom/ts/canview/CanItemIcoList;

.field protected mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

.field protected mItemEscSystem:Lcom/ts/canview/CanItemIcoList;

.field protected mItemFactorySet:Lcom/ts/canview/CanItemIcoList;

.field protected mItemLight:Lcom/ts/canview/CanItemIcoList;

.field protected mItemMFD:Lcom/ts/canview/CanItemIcoList;

.field protected mItemMW:Lcom/ts/canview/CanItemIcoList;

.field protected mItemOC:Lcom/ts/canview/CanItemIcoList;

.field protected mItemPM:Lcom/ts/canview/CanItemIcoList;

.field protected mItemService:Lcom/ts/canview/CanItemIcoList;

.field protected mItemTimeAndData:Lcom/ts/canview/CanItemIcoList;

.field protected mItemTyres:Lcom/ts/canview/CanItemIcoList;

.field protected mItemUnits:Lcom/ts/canview/CanItemIcoList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    .local v0, "Id":I
    const/4 v1, 0x0

    .line 122
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfSetMainActivity;->enterSubWin(Ljava/lang/Class;)V

    .line 182
    return-void

    .line 125
    :pswitch_0
    const-class v1, Lcom/ts/can/CanGolfSetESCSystemActivity;

    .line 126
    goto :goto_0

    .line 129
    :pswitch_1
    const-class v1, Lcom/ts/can/CanGolfSetTyresActivity;

    .line 130
    goto :goto_0

    .line 133
    :pswitch_2
    const-class v1, Lcom/ts/can/CanGolfSetDriveAssActivity;

    .line 134
    goto :goto_0

    .line 137
    :pswitch_3
    const-class v1, Lcom/ts/can/CanGolfSetPMActivity;

    .line 138
    goto :goto_0

    .line 141
    :pswitch_4
    const-class v1, Lcom/ts/can/CanGolfSetLightActivity;

    .line 142
    goto :goto_0

    .line 145
    :pswitch_5
    const-class v1, Lcom/ts/can/CanGolfSetMWActivity;

    .line 146
    goto :goto_0

    .line 149
    :pswitch_6
    const-class v1, Lcom/ts/can/CanGolfSetOCActivity;

    .line 150
    goto :goto_0

    .line 153
    :pswitch_7
    const-class v1, Lcom/ts/can/CanGolfSetMFDActivity;

    .line 154
    goto :goto_0

    .line 157
    :pswitch_8
    const-class v1, Lcom/ts/can/CanGolfSetTimeAndDateActivity;

    .line 158
    goto :goto_0

    .line 161
    :pswitch_9
    const-class v1, Lcom/ts/can/CanGolfSetUnitsActivity;

    .line 162
    goto :goto_0

    .line 165
    :pswitch_a
    const-class v1, Lcom/ts/can/CanGolfSetChairActivity;

    .line 166
    goto :goto_0

    .line 169
    :pswitch_b
    const-class v1, Lcom/ts/can/CanGolfSetServiceActivity;

    .line 170
    goto :goto_0

    .line 173
    :pswitch_c
    const-class v1, Lcom/ts/can/CanGolfSetFactoryActivity;

    .line 174
    goto :goto_0

    .line 122
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfSetMainActivity;->setContentView(I)V

    .line 52
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon01:I

    sget v3, Lcom/ts/MainUI/R$string;->can_esc_system:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemEscSystem:Lcom/ts/canview/CanItemIcoList;

    .line 53
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon03:I

    sget v3, Lcom/ts/MainUI/R$string;->can_tyres:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemTyres:Lcom/ts/canview/CanItemIcoList;

    .line 54
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon02:I

    sget v3, Lcom/ts/MainUI/R$string;->can_drivet_assist:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    .line 55
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon04:I

    sget v3, Lcom/ts/MainUI/R$string;->can_park_and_m:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemPM:Lcom/ts/canview/CanItemIcoList;

    .line 56
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon05:I

    sget v3, Lcom/ts/MainUI/R$string;->can_light:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 57
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon06:I

    sget v3, Lcom/ts/MainUI/R$string;->can_mirr_and_wiper:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemMW:Lcom/ts/canview/CanItemIcoList;

    .line 58
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon07:I

    sget v3, Lcom/ts/MainUI/R$string;->can_open_and_close:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemOC:Lcom/ts/canview/CanItemIcoList;

    .line 59
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon08:I

    sget v3, Lcom/ts/MainUI/R$string;->can_mfd:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemMFD:Lcom/ts/canview/CanItemIcoList;

    .line 60
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon09:I

    sget v3, Lcom/ts/MainUI/R$string;->can_time_date:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemTimeAndData:Lcom/ts/canview/CanItemIcoList;

    .line 61
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon11:I

    sget v3, Lcom/ts/MainUI/R$string;->can_units:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemUnits:Lcom/ts/canview/CanItemIcoList;

    .line 62
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon10:I

    sget v3, Lcom/ts/MainUI/R$string;->can_magoten_chair:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemChair:Lcom/ts/canview/CanItemIcoList;

    .line 63
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon13:I

    sget v3, Lcom/ts/MainUI/R$string;->can_service:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemService:Lcom/ts/canview/CanItemIcoList;

    .line 64
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon14:I

    sget v3, Lcom/ts/MainUI/R$string;->can_factory_set:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemFactorySet:Lcom/ts/canview/CanItemIcoList;

    .line 66
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemEscSystem:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, p0, v4}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 67
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemTyres:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 68
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 69
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemPM:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemMW:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 72
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemOC:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 73
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemMFD:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemTimeAndData:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0x9

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 75
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemUnits:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0xa

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 76
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemChair:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 77
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemService:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0xc

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 78
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemFactorySet:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0xd

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 83
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 84
    .local v0, "sl":Lcom/ts/canview/CanScrollList;
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemEscSystem:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemTyres:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemPM:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemMW:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 90
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemOC:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemMFD:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemTimeAndData:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemUnits:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemService:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 95
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemFactorySet:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 97
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/ts/can/CanGolfSetMainActivity;->mItemChair:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 114
    return-void
.end method
